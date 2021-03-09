import React from 'react'
import PatchPlaydateForm from './PatchPlaydateForm.js'


const PlaydateCard = ({playdate, handlePlaydateDelete, handlePlaydatePatch, handlePatch, submitPlaydate}) => {
    return (
        <>
        <div className="playdate-card" key={playdate.id}>
        <div>
            <h3>{playdate.location} - {playdate.time}</h3>
            <ul className="playdate-ul" >
                Date: <li>{playdate.date}</li>
                Time: <li>{playdate.time}</li>
                Location: <li>{playdate.location}</li>
            </ul>
            </div>
            <button onClick={()=> handlePlaydateDelete(playdate)} >Delete Playdate</button>
            {/* <button onClick={(e)=> submitPlaydate(e, playdate)} >Update Playdate</button> */}
            <PatchPlaydateForm playdate={playdate} submitPlaydate={submitPlaydate}/>
        </div>
        </>
    );
};


export default PlaydateCard;