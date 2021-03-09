import React from 'react'
import PreviewCard from './PreviewCard.js'

const BrowseCardsContainer = (props) => {
    return (
        <div className="browse-cards-container">
            {
          props.allPets.map(pet=>{
            return <PreviewCard pet={pet} key={pet.id}  handleDelete={props.handleDelete} />
            // return <Transaction transaction = {props.dynamicSearch} />
          })
        }
        </div>
    );
};

export default BrowseCardsContainer;