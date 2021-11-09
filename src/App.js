import React, { useState } from 'react';
import { useEffect } from 'react';
import logo from './logo.svg';
import './App.css';
import reactDom from 'react-dom';

function App() {
  const nayoks = ["Manna", "Jamal","Salman",]
  const products = [
    {name:'Photoshop',price:'$90.99'},
    {name:'Illustrator',price:'$95.99'}
]

const nayokNames = nayoks.map(nayok => nayok)
console.log(nayokNames);
  var person = {
    name: "Ashfat",
    job: "Developer"
  }
  var style = {
    color:"red",
    backgroundColor: 'aquamarine'
  }
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
         <h1 style = {style}>My Heading : {person.name +" "+person.job}</h1>
        <p>My first react paragraph</p>
        <Product product= {products[0]}></Product>
        <Product product= {products[1]}></Product>
        <Man name={nayoks[0]}></Man> /*component declare*/
        <Man name="Alex"></Man> /*component declare*/
        <Counter></Counter>
        <Users></Users>
        <ul>
          {
            nayoks.map(nayok => <li>{nayok}</li>)
          }
          {
            products.map(product=> <li>{product.name}</li>)
          }
        </ul>
        {
          products.map(product=> <Product product={product}></Product>)
        }
      </header>
    </div>
  );
}

//component declare
function Man(props){

  return (
  <div style ={{border:"2px solid red", padding: "5px"}}>
     <h1>Name:{props.name}</h1>
     <h3>Hero of the year</h3>
   
  </div>
  )
}

function Product(props){
  const productStyle = {
    border:"1px solid gray",
    borderRadius: "5px",
     backgroundColor:"lightgray",
     height: "200px",
     width: "300px",
     float: "left",
     margin:"20px"
  }
  const {name,price} = props.product;
  console.log(name, price);
  return(
    <div style={productStyle}>
      <h3>{props.product.name}</h3>
      <h5>{props.product.price}</h5>
      <button>Buy Now</button>
    </div>
  )
}

function Users(){
  const [users,setUsers] = useState([]);

  useEffect(()=>{
       fetch('https://jsonplaceholder.typicode.com/users')
       .then(res=>res.json())
       .then(data => setUsers(data));
  },[])
  
  return(
    <div>
      <h3>Dynamic users: {users.length}</h3>
      <ul>
        {
        users.map(user =><li>{user.name}</li>)
        }
      </ul>
    </div>
  )
}

function Counter(){
  const [count, setCount] = useState(0);
  const handleIncrease = () => {
    const newCount = count+1;
    setCount(newCount);
  }
  const handleDecrease = () =>{
    const newCount = count-1;
    if(newCount<0){
      console.log("Value Can't be negative");
    }
    else{
      setCount(newCount);
    }
    
  }
  return(
    <div>
        <h1>Count: {count}</h1>
        <button style={{margin:'10px'}} onClick = {handleIncrease}>Increase</button>
        <button onClick={handleDecrease}>Decrease</button>
    </div>
  )
}

export default App;
