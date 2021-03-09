import React, { Component } from "react";

const PLAYDATES_URL = "http://localhost:3000/playdates"

class PatchPlaydateForm extends Component {
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

  console.log(PLAYDATES_URL+`/${this.props.playdate.id}`, "url plus id log")

  fetch(PLAYDATES_URL+`/${this.props.playdate.id}`, {
    // headers: {"Content-Type": "application/json"},
    // method: 'PATCH',
    // body: JSON.stringify(newPlaydate)
    headers: {"Content-Type":"application/json"},
    method: "PATCH",
    body: JSON.stringify(newPlaydate)
  })
  .then(resp=>resp.json())
  .then(data=>this.props.submitPlaydate(data))
  }

    render() {
    // console.log(this.props.handlePatch, "playdate handlepatch")
    return (
        <div className="create-form">
        <p>Edit Playdate:</p>
            <form className="ui-form" onSubmit={this.handleSubmit}>
          <div className="inline-fields">
            <input onChange={(e)=> this.setState({user_id:e.target.value})} type="number" name="user_id" placeholder="User ID" />
            <input onChange={(e)=> this.setState({pet_id:e.target.value})} type="number" name="pet_id" placeholder="Pet ID"/>
            <input onChange={(e)=> this.setState({date:e.target.value})} type="number" name="date" placeholder="Date" />
            <input onChange={(e)=> this.setState({time:e.target.value})} type="number" name="time" placeholder="Time" />
            <input onChange={(e)=> this.setState({location:e.target.value})} type="text" name="location" placeholder="Location" />
          </div>
          <button className="ui-button" type="submit" >
            Update Playdate
          </button>
        </form>
        </div>
        );
    }
}


export default PatchPlaydateForm;