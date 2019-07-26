import React from 'react';
import { Link } from 'react-router-dom';

const Navigation = (props) => {
  return (
    <header className="navigation">
      <div className="navigation-logo">
        <Link to ="/" className="navigation-logo__branding">តោះរីអាកថ៍</Link>
      </div>
      <nav className="navigation-items">
        <ul>
          <li>
            <Link to="/">ទំព័រដើម</Link>
          </li> 
          <li>
            <Link to="/about">អំពីយើង</Link>
          </li> 
          <li>
            <Link to="/login">ចូរ</Link>
          </li> 
        </ul>
      </nav>
    </header>
  )
}

export default Navigation;
