import "./assets/css/style.scss";
import 'bootstrap/dist/css/bootstrap.min.css';
import {Routes, Route, Link, NavLink} from 'react-router-dom'

function App() {
  return (
    <div className="App">
      <ul>
        <li><NavLink to="/uploadAjax">test</NavLink></li>
      </ul>
      <Routes>
        <Route path="/uploadAjax">test</Route>
      </Routes>
    </div>
  );
}

export default App;
