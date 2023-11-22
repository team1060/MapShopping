import logo from './logo.svg';
import './App.css';
import React, { useState, useEffect } from "react";

function App() {
  const [msg, setMsg] = useState([]);
  useEffect(() => {
    fetch("/hello")
      .then(response => response.text())
      .then((msg) => { setMsg(msg); })
  }, []);
  return (
    <div className="App">
      <header className="App-header">
        <h1>안녕하세요123123123 </h1>
        <p>{msg}</p>
      </header>
    </div>
  );
}

export default App;