import React from 'react';
import './StoryReel.css';
import Story from './Story';
import Man from './image/man.png';
import Woman from './image/woman.png';
import Wall from './image/wall.png';


function StoryReel() {
  return (
    <div className='storyReel'>
        <Story profileSrc={Man} title='Mike Bet' image={Wall} />
        <Story profileSrc={Woman} title='Betty Kit' image={Wall} />


    </div>
  )
}

export default StoryReel