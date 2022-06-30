import React from 'react';
import './Feed.css';
import StoryReel from './StoryReel';
import MessageSender from './MessageSender';
import Post from './Post';
import Alien from './image/alien.png';
function Feed() {
  return (
    <div className='feed'>
        <StoryReel />
        <MessageSender />
        <Post
        profilePic={Alien}
        message= 'Nice Landscape'
        timestamp={'Timestamp...'}
        username='Alien'
        image='https://code.org/shared/images/social-media/codeorg2019_social.png'
         />
        <Post
        profilePic={Alien}
        message= 'Nothing to say'
        timestamp={'Timestamp...'}
        username='Alien'
         />
        <Post />
        <Post />
    </div>
  )
}

export default Feed