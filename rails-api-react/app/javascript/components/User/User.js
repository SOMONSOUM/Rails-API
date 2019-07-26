import React from 'react';

const User = (props) => {
  const { 
    avatar,
    name,
    gender,
    title,
    address,
    age
   } = props.user
  return (
    <div className="user">
      <figure>
        <img src={avatar} alt="profile image"/>
        <figcaption>
          <span className="name">{name}</span>
          <span className="gender">{gender}</span>
          <span className="title">{title}</span>
          <span className="address">{address}</span>
          <span className="age">{age}</span>
        </figcaption>
      </figure>
    </div>
  )
}

export default User;
