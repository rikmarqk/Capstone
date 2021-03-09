import React, { Component } from "react";

const PLAYDATES_URL = "http://localhost:3000/playdates"

class CreatePlaydateForm extends Component {
  state = {
    user_id: null,
    pet_id: null,
    date: null,
    time: null,
    location: "",
  }

  handleSubmit = (e) => {
  e.preventDefault();
  let newPlaydate = {
    user_id: this.state.user_id,
    pet_id: this.state.pet_id,
    date: this.state.date,
    time: this.state.time,
    location: this.state.location,
  }
  fetch(PLAYDATES_URL, {
    headers: {"Content-Type": "application/json"},
    method: 'POST',
    body: JSON.stringify(newPlaydate)
  })
  .then(resp=>resp.json())
  .then(data=>this.props.submitPlaydate(data))
  console.log(newPlaydate)
  }

    render() {
    return (
        <div className="create-playdate-form">
        <h3>New Playdate:</h3>
            <form className="ui-form" onSubmit={this.handleSubmit}>
          <div className="inline-fields">
            <input onChange={(e)=> this.setState({user_id:e.target.value})} type="number" name="user_id" placeholder="User ID" />
            <input onChange={(e)=> this.setState({pet_id:e.target.value})} type="number" name="pet_id" placeholder="Pet ID"/>
            <input onChange={(e)=> this.setState({date:e.target.value})} type="number" name="date" placeholder="Date" />
            <input onChange={(e)=> this.setState({time:e.target.value})} type="number" name="time" placeholder="Time" />
            <input onChange={(e)=> this.setState({location:e.target.value})} type="text" name="location" placeholder="Location" />
          </div>
          <button className="ui-button" type="submit" >
            Add Playdate
          </button>
        </form>
        </div>
        );
    }
}


export default CreatePlaydateForm;