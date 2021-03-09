import MainContainer from './components/MainContainer.js';
import NavBar from './components/NavBar.js'
import Footer from './components/Footer.js'
import './App.css';

function App() {
  return (
    <div className="app">
      <NavBar />
        <MainContainer />
        <Footer />
    </div>
  );
}

export default App;
