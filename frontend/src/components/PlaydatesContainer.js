import React, { useCallback } from 'react'
import PlaydateCard from './PlaydateCard.js'
import CreatePlaydateForm from './CreatePlaydateForm.js'


const PlaydatesContainer = (props) => {

let playdate = null

const handlePatch = useCallback((e, selectedPlaydate) => {
  e.preventDefault()
  // console.log(selectedPlaydate, "new patch")
  playdate = selectedPlaydate
  console.log(playdate, "playdate log")
})

    return (
      <>
        <div className="playdates-container">
          <CreatePlaydateForm submitPlaydate={props.submitPlaydate} />
          <h2>Playdates</h2>
            {
          props.allPlaydates.map(playdate=>{
            return <PlaydateCard playdate={playdate} key={playdate.id}  handlePlaydateDelete={props.handlePlaydateDelete} handlePlaydatePatch={props.handlePlaydatePatch} handlePatch={handlePatch} submitPlaydate={props.submitPlaydate} />
            // return <Transaction transaction = {props.dynamicSearch} />
          })
        }
        <button className="see-playdates-btn" onClick={props.clickAction}>See Playdates</button >
        </div>
        </>
    );
};

export default PlaydatesContainer;

