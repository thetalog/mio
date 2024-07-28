"use client";
import { useState } from 'react';
import axios from 'axios';
import { getCookie } from "cookies-next";

const ChannelForm = () => {
  const [channelName, setChannelName] = useState('');
  const [channelBio, setChannelBio] = useState('');
  const [image, setImage] = useState(null);

  const handleImageChange = (e) => {
    setImage(e.target.files[0]);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    const formData = new FormData();
    formData.append('channelName', channelName);
    formData.append('channelBio', channelBio);
    formData.append('image', image);

    const sessionCookie = getCookie("sessionId") || "No session cookie found.";
    const tokenCookie = getCookie("token") || "No token cookie found.";

    try {
      const response = await axios.post('http://localhost:3333/api/v1/channel/create-channel', formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
          Authorization: `${sessionCookie}`, // Assuming it's a Bearer token, adjust if necessary
          Token: tokenCookie
        },
      });
      console.log('Response:', response.data);
    } catch (error) {
      console.error('Error uploading data:', error);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <div>
        <label htmlFor="channelName">Channel Name:</label>
        <input
          type="text"
          id="channelName"
          value={channelName}
          onChange={(e) => setChannelName(e.target.value)}
        />
      </div>
      <div>
        <label htmlFor="channelBio">Channel Bio:</label>
        <textarea
          id="channelBio"
          value={channelBio}
          onChange={(e) => setChannelBio(e.target.value)}
        />
      </div>
      <div>
        <label htmlFor="image">Upload Image:</label>
        <input type="file" id="image" onChange={handleImageChange} />
      </div>
      <button type="submit">Submit</button>
    </form>
  );
};

export default ChannelForm;
