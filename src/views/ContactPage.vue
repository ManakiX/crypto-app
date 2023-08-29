<!-- <template>
  <div class="container">
    <div class="contact-content">
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
      <div class="contact-form-container">
        <h2>Contact Us</h2>
        <form class="contact-form">
          <label for="name">Name:</label>
          <input type="text" id="name" name="name" required>
          
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required>
          
          <label for="message">Message:</label>
          <textarea id="message" name="message" rows="4" required></textarea>
          
          <button type="submit">Submit</button>
        </form>
        <router-link class="back-link" to="/">Back to Home</router-link>
      </div>
    </div>
  </div>
</template>

<style>
.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

.contact-content {
  display: flex;
  background-color: #f7f7f7;
  border-radius: 5px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.map-container {
  width: 50%;
  padding: 20px;
  box-sizing: border-box;
}

.map-frame {
  position: relative;
  padding-bottom: 140%; /* Aspect ratio for the map frame */
  height: 0;
  overflow: hidden;
}

.contact-form-container {
  width: 50%;
  padding: 20px;
  box-sizing: border-box;
}

.contact-form {
  display: flex;
  flex-direction: column;
}

.contact-form label {
  margin-top: 10px;
  font-weight: bold;
}

.contact-form input,
.contact-form textarea {
  padding: 8px;
  margin-top: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

.contact-form button {
  margin-top: 15px;
  padding: 8px 15px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

.contact-form button:hover {
  background-color: #0056b3;
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
</style> -->

<template>
  <body>
    <div class="container">
      <div class="contact-content">
        <div class="contact-info">
          <h2>TALK TO US ON WhatsApp</h2>
          <p>Chat with us on WhatsApp by scanning the QR code to add Sharenet as a contact.</p>
          <h3>How it works</h3>
          <p>Open WhatsApp to chat with us on your computer, or scan the QR code to add Sharenet as a contact.</p>
          <p>Say "Hi" to us in the WhatsApp chat to start the conversation.</p>
          <p>Follow the prompts to complete your request.</p>
        </div>
        <div class="contact-form-container">
          <h2>COMPLETE THE FORM BELOW AND WE WILL GET BACK TO YOU</h2>
          <form class="contact-form">
            <label for="title">Title</label>
            <select id="title" name="title" required>
              <option value="" disabled selected>Select an option</option>
              <option value="Mr">Mr</option>
              <option value="Mrs">Mrs</option>
              <option value="Miss">Miss</option>
              <option value="Dr">Dr</option>
            </select>
            
            <label for="firstNames">First Names</label>
            <input type="text" id="firstNames" name="firstNames" required>
            
            <label for="surname">Surname</label>
            <input type="text" id="surname" name="surname" required>
            
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" required>
            
            <label for="phone">Phone Number</label>
            <div class="phone-input">
              <select id="phoneCode" name="phoneCode" required>
                <option value="+27">+27</option>
                <option value="+04">+04</option>
                <option value="+1">+1</option>
                <option value="+506">+506</option>
              </select>
              <input type="tel" id="phone" name="phone" required>
            </div>
            
            <label for="message">Message</label>
            <textarea id="message" name="message" rows="4" maxlength="1000" required></textarea>
            
            <button type="submit">Submit</button>
          </form>
        </div>
      </div>
      
      <div class="map-section">
        <div class="contact-details">
          <h2>FIND US HERE</h2>
          <h3>HEAD OFFICE</h3>
          <p>301, 3rd Floor Imperial Terraces<br>Tyger Waterfront<br>Carl Cronje Drive<br>Bellville, Cape Town<br>7530</p>
          <h3>TELEPHONE</h3>
          <p>(021) 700 4800<br>+27 21 700 4800 (International)</p>
          <h3>EMAIL</h3>
          <p>support@sharenet.co.za</p>
        </div>
        <div class="map-container">
          <div class="map-frame">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13249.979818258218!2d18.6301076!3d-33.8769045!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1dcc41e6218f7ab3%3A0xbdd802ca53b92d43!2sSharenet%20(Pty)%20Ltd!5e0!3m2!1sen!2sza!4v1692789010035!5m2!1sen!2sza" width="100%" height="100%" style="border: 0;" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
      </div>
    </div>
  </body>
</template>

<style>
body {
  background: rgb(63,94,251);
background: radial-gradient(circle, rgba(63,94,251,1) 0%, rgba(252,70,107,1) 100%);
}
.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

.contact-content {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  background-color: white;
  border-radius: 10px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  padding: 20px;
  gap: 20px;
}

.contact-info,
.contact-form-container {
  flex: 1;
}

.contact-form {
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.contact-form label {
  font-weight: bold;
}

.contact-form input,
.contact-form textarea {
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 10px;
}

.contact-form button {
  margin-top: 15px;
  padding: 8px 15px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 10px;
  cursor: pointer;
}

.map-section {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-top: 20px;
  background: white;
  border-radius: 10px;

}

.map-container {
  flex: 1;
  padding: 20px;
  box-sizing: border-box;
}

.map-frame {
  position: relative;
  height: 0;
  padding-bottom: 100%; /* 16:9 aspect ratio */
  padding-right: 100%;
  overflow: hidden;
}

.map-frame iframe {
  position: absolute;
  width: 100%;
  height: 100%;
  border: 0;
}

.contact-details {
  flex: 1;
  padding: 20px;
  border-top: 1px solid #ccc;
}

.details {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.detail-item h3 {
  margin-bottom: 10px;
}

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

#phone {
  width: 1000px;
  padding-left: 54%;
}

.phone-input {
  display: flex;
  align-items: center;
  width: 100%;
  max-width: 250px; /* Adjust the width as needed */
}

.phone-input select,
.phone-input input {
  flex: 1;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 10px;
}

/* Additional styling adjustments */
.contact-details {
  flex: 1;
  padding: 20px;
  border-top: 1px solid #ccc;
  border-radius: 10px; /* Rounded border for the contact details */
}

</style>

