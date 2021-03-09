import React from 'react'

const SearchBar = (props) => {
    return (
        <div className="search-bar">
            <input
            className = "search-input"
        type="text"
        placeholder={"Search Pets"}
        value = {props.search}
        onChange={(e) => {props.editSearch(e)}}
      />
      <i className="circular search link icon"></i>
        </div>
    );
};

export default SearchBar;