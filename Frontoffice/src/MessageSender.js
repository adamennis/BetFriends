import React from 'react';
import { useState } from 'react';
import './MessageSender.css';
import Avatar from '@mui/material/Avatar';
import VideocamIcon from '@mui/icons-material/Videocam';
import PhotoLibraryIcon from '@mui/icons-material/PhotoLibrary';
import InsertEmoticonIcon from '@mui/icons-material/InsertEmoticon';
function MessageSender() {


    const [input, setInput] = useState("");
    const [imageUrl, setImageUrl] = useState("");


    const handleSubmit = (e) => {
        e.preventDefault();
        setInput("");
        setImageUrl("");
    }

  return (
    <div className='messageSender'>
        <div className='messageSender__top'>
            <Avatar />
            <form>
                <input 
                value={input}
                onChange= {(e) => setInput(e.target.value)}
                className='messageSender__input'
                type="text" placeholder="What's on your mind ?"
                />
                <input type="text" 
                value={imageUrl}
                onChange={(e) => setImageUrl(e.target.value)}
                placeholder='image URL (Optional)' />
                <button onClick={handleSubmit} type ="submit">
                    Hidden submit
                </button>
            </form>
        </div>
        <div className='messageSender__bottom'>
            <div className='messageSender__option'>
                <VideocamIcon style={{ color: "red"}}/>
                <h3>Live Video</h3>
            </div>
            <div className='messageSender__option'>
                <PhotoLibraryIcon style={{ color: "green"}}/>
                <h3>Photo/Video</h3>
            </div>
            <div className='messageSender__option'>
                <InsertEmoticonIcon style={{ color: "orange"}}/>
                <h3>Feeling/Activity</h3>
            </div>

        </div>

    </div>
  )
}

export default MessageSender