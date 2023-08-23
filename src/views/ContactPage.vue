<template>
    <div class="container">
      <div class="contact-content">
        <h2>Contact Us</h2>
        <p class="contact-details">Sharenet Address: 301, 3rd Floor Imperial Terraces, Tyger Waterfront, Carl Cronje Drive, Bellville, Cape Town, 7530</p>
        <p class="contact-details">Contact Numbers: (021) 700 4800, +27 21 700 4800 (International)</p>
        <h3>Location</h3>
        <div class="map-container">
          <div class="map-frame">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13249.979818258218!2d18.6301076!3d-33.8769045!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1dcc41e6218f7ab3%3A0xbdd802ca53b92d43!2sSharenet%20(Pty)%20Ltd!5e0!3m2!1sen!2sza!4v1692789010035!5m2!1sen!2sza"
              width="600"
              height="450"
              style="border: 0;"
              loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"
            ></iframe>
          </div>
        </div>
        <router-link class="back-link" to="/">Back to Home</router-link>
      </div>
    </div>
  </template>
  
  <style>
  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
  }
  
  .contact-content {
    background-color: #f7f7f7;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }
  
  .contact-details {
    font-size: 18px;
    margin: 10px 0;
  }
  
  .map-container {
    margin-top: 20px;
  }
  
  .map-frame {
    position: relative;
    padding-bottom: 60%; /* Aspect ratio for the map frame */
    height: 0;
    overflow: hidden;
  }
  
  /* Styling for the "Back to Home" link */
  .back-link {
    display: block;
    margin-top: 20px;
    font-weight: bold;
    color: #333;
    text-decoration: none;
  }
  
  .back-link:hover {
    text-decoration: underline;
  }
  </style>
  
  
  
  
  
  
  