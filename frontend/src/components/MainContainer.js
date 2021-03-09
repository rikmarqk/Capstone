import React, { Component } from "react";
import SearchBar from './SearchBar.js'
import BrowseCardsContainer from './BrowseCardsContainer.js'
import PlaydatesContainer from './PlaydatesContainer.js'
import CreatePlaydateForm from './CreatePlaydateForm.js'
import CreateForm from './CreateForm.js'
import Login from './Login.js'



const PETS_URL = "http://localhost:3000/pets"
const PLAYDATES_URL = "http://localhost:3000/playdates"


class MainContainer extends Component {

state = {
  allPets: [],
  search: "",
  allPlaydates: [],
}

componentDidMount = () => {
  fetch(PETS_URL)
  .then(resp => resp.json())
  // .then(comps => console.log(comps))
  .then(petData => this.setState({allPets: petData}))
  // fetch(PLAYDATES_URL)
  // .then(resp => resp.json())
  // .then(playdateData => this.setState({allPlaydates: playdateData}))
}

testAuthRoute = () => {
  fetch(PLAYDATES_URL, {
    headers:{
      "Authorization": `Bearer ${localStorage.token}`
    }
  }) 
  .then(resp => resp.json())
  .then(playdateData =>{
     this.setState({
       allPlaydates: playdateData
       })
  })
}

submitPlaydate = (newPlaydate) => {
  this.setState({
    allPlaydates: [newPlaydate, ...this.state.allPlaydates]
  });
}
submitUpdate = (newPet) => {
  this.setState({
    allPets: [newPet, ...this.state.allPets]
  });
}

handleDelete =(selectedPet) => {
    console.log(PETS_URL+`/${selectedPet.id}`)
    fetch(PETS_URL+`/${selectedPet.id}`, {
    headers: {"Content-Type": "application/json"},
    method: 'DELETE'
  })
  .then(resp => resp.json())
  .then(resp => this.setState({
        allPets: this.state.allPets.filter((pet)=> pet !== selectedPet)
    }))
}
handlePlaydateDelete =(selectedPlaydate) => {
    console.log(PLAYDATES_URL+`/${selectedPlaydate.id}`)
    fetch(PLAYDATES_URL+`/${selectedPlaydate.id}`, {
    headers: {"Content-Type": "application/json"},
    method: 'DELETE'
  })
  .then(resp => resp.json())
  // .then(resp => console.log(resp))
  .then(resp => this.setState({
        allPlaydates: this.state.allPlaydates.filter((playdate)=> playdate !== selectedPlaydate)
    }))
}

handlePlaydatePatch =  (selectedPlaydate) => {
  console.log(selectedPlaydate)
}


editSearch = (e) => {
  console.log(e.target.value)
  this.setState ({search: e.target.value})
}

setCurrentUser = (user) => {
    this.setState({
      user: user,
      loggedIn: true,
    });
};

handleLogout = (e) => {
  console.log(e)
// localStorage.clear()
// setIsAuthenticated({auth: false, role: "", isLoggedIn: false})
}

    render(){
    return (
        <div className ="main-container">
        <h2 className="site-title">PawPartners</h2>
            
            <div className="search-create-container">
            <SearchBar search={this.state.search} editSearch={this.editSearch}/>
            <Login setCurrentUser={this.setCurrentUser} handleLogout={this.handleLogout}/>
            </div>
            <div>
            <PlaydatesContainer className="playdates-container" allPlaydates={this.state.allPlaydates} handlePlaydateDelete={this.handlePlaydateDelete} handlePlaydatePatch={this.handlePlaydatePatch} submitPlaydate={this.submitPlaydate} clickAction={this.testAuthRoute} />
            </div>
            <BrowseCardsContainer className="browse-cards-container" allPets={this.state.allPets.filter(pet => pet.breed.toLowerCase().includes(this.state.search.toLowerCase()))} handleDelete={this.handleDelete} />
        </div>
    );
    }
}

export default MainContainer;