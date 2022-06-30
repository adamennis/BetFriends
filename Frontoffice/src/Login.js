import React from 'react';
import './Login.css';
import Logo from './image/pari.png';
import Button from '@mui/material/Button';

function Login() {

    const signIn = () => {
        //sign in
    }
  return (
    <div className='login'>
        <div className='login__logo'>
            <img src={Logo} alt=""/>
        </div>
        <Button type="submit" onClick={signIn}>
            Sign In
        </Button>
    </div>
  )
}

export default Login