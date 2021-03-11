import React, { Component } from "react";

const PETS_URL = "http://localhost:3000/pets"

class Login extends Component {
  state = {
    username: "",
    password: "",
  }

  // login = (event) => {
  //   event.preventDefault();
  //   event.target.reset();

  //   const { username, password } = this.state;
  //   const user = { username, password };

  //   fetch("http://localhost:3000/login", {
  //     method: "POST",
  //     headers: {
  //       Accept: "application/json",
  //       "Content-Type": "application/json",
  //     },
  //     body: JSON.stringify({ user }),
  //   })
  //     .then((r) => r.json())
  //     .then((response) => {
  //       console.log(response);
  //       localStorage.setItem("token", response.token)
  //       this.props.setCurrentUser(response.user);
  //     });
  // };

    render() {
    return (
        <div className="login-form-div">
            
            <div className="login-box">
            <form className="login-form" onSubmit={(e) => this.props.login(e, this.state.username, this.state.password)}>
              <h1>Login</h1>
              {/* <i class="fas fa-user" aria-hidden="true"></i> */}
              <input onChange={(e)=> this.setState({username:e.target.value})} className="textbox" type="text" name="username" placeholder="Username" />
              {/* <i class="fas fa-lock" aria-hidden="true"></i> */}
              <input onChange={(e)=> this.setState({password:e.target.value})} className="textbox" type="password" name="password" placeholder="Password"/>
              <button className="btn" type="submit" >LOGIN</button>
            </form>
            {/* <div className="logout-box">
              <form className="login-form" onSubmit={this.props.handleLogout}>
                <button className="btn-2" type="submit" >LOGOUT</button>
              </form> */}
            {/* </div> */}
            </div>
        </div>
        );
    }
}


export default Login;