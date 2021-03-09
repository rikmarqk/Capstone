import React, { Component } from "react";

const PETS_URL = "http://localhost:3000/pets"

class CreateForm extends Component {
  state = {
    name: "",
    pet_category: "",
    breed: "",
    age: null,
    sex: "",
    status: "",
    cam_link: "",
    img_url: ""
  }

  handleSubmit = (e) => {
  e.preventDefault();
  let newPet = {
    name: this.state.name,
    pet_category: this.state.pet_category,
    breed: this.state.breed,
    age: this.state.age,
    sex: this.state.sex,
    status: this.state.status,
    cam_link: this.state.cam_link,
    img_url: this.state.img_url
  }
  fetch(PETS_URL, {
    headers: {"Content-Type": "application/json"},
    method: 'POST',
    body: JSON.stringify(newPet)
  })
  .then(resp=>resp.json())
  .then(data=>this.props.submitUpdate(data))
  console.log(newPet)
  }

    render() {
    return (
        <div className="create-form">
        <p>Add New Pet:</p>
            <form className="ui form" onSubmit={this.handleSubmit}>
          <div className="inline fields">
            <input onChange={(e)=> this.setState({name:e.target.value})} type="text" name="name" placeholder="Name" />
            <input onChange={(e)=> this.setState({pet_category:e.target.value})} type="text" name="pet_category" placeholder="Category"/>
            <input onChange={(e)=> this.setState({breed:e.target.value})} type="text" name="breed" placeholder="Breed" />
            <input onChange={(e)=> this.setState({age:e.target.value})} type="number" name="age" placeholder="Age" />
            <input onChange={(e)=> this.setState({sex:e.target.value})} type="text" name="sex" placeholder="Sex" />
            <input onChange={(e)=> this.setState({status:e.target.value})} type="text" name="status" placeholder="Status" />
            <input onChange={(e)=> this.setState({cam_link:e.target.value})} type="text" name="cam_link" placeholder="Cam Link" />
            <input onChange={(e)=> this.setState({img_url:e.target.value})} type="text" name="img_url" placeholder="Image Url" />
          </div>
          <button className="ui button" type="submit" >
            Add Pet
          </button>
        </form>
        </div>
        );
    }
}


export default CreateForm;