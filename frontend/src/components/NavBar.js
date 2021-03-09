import React from 'react'

export default function NavBar() {
    return (
        <div className = "menu-area">
            <ul>
                <li>REPORT CRUELTY AND RESCUE
                    <ul className= "dropdown">
                        <li>Cruelty Investigation Team</li>
                        <li>Injured Animal Rescue Ambulance</li>
                    </ul>
                </li>
                <li>SERVICES AND PROGRAMS
                    <ul className= "dropdown">
                        <li>Rehoming Center</li>
                        <li>Found Animals</li>
                        <li>Animal Medical Center</li>
                        <li>Pet Care</li>
                    </ul>
                </li>
                <li>ADOPTION
                    <ul className= "dropdown">
                        <li>Available Pets</li>
                        <li>Live Cams</li>
                    </ul>
                </li>
                <li>GET INVOLVED
                    <ul className= "dropdown">
                        <li>Volunteer</li>
                        <li>Foster Pet Parent</li>
                        <li>Employment</li>
                    </ul>
                </li>
            </ul>

        <div className="middle">
            <a href= "" className= "btn btn1">Donate</a>
            {/* <a href= "" className= "btn btn2">Donate</a>
            <a href= "" className= "btn btn3">Donate</a>
            <a href= "" className= "btn btn4">Donate</a> */}
        </div>

        </div>
    )
}
