import React from 'react'

const PreviewCard = ({pet, handleDelete}) => {
    return (
        <>
        <div className="preview-card" key={pet.id}>
            <div className="card-front">
                <h3 className="pet-name">Name: {pet.name}</h3>
                <div className="img-container">
                    <img className="pet-image" src={pet.img_url} alt={pet.id}/>
                </div>
            </div>
            <div className="card-back">
                <div className = "details">
                    <ul>
                        <li className="back-name">{pet.name}</li>
                        <li>ID: {pet.id}</li>
                        <li>{pet.pet_category}</li>
                        <li>{pet.breed}</li>
                        <li>{pet.age}</li>
                        <li>{pet.sex}</li>
                        <li>{pet.status}</li>
                    </ul>
                </div>
            </div>
        </div>
    </>
    );
};


export default PreviewCard;