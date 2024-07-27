"use client";
import { useState } from "react";
import axios from "axios";
import { setCookie } from "cookies-next";
import Script from "next/script";
import AudioRecorder from "../../AudioRecorder";

export default function Login() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      // const captchaResponseToken = grecaptcha.getResponse();
      // const captchaV2Response = await axios.post(
      //   "http://localhost:3333/api/v1/authentication/recaptcha-v2-verify",
      //   {},
      //   { headers: { "recaptcha-v2-token": captchaResponseToken } }
      // );
      // if (captchaV2Response?.status === 200) {
      if (true) {
        const response = await axios.post(
          "http://localhost:3333/api/v1/authentication/login",
          { email, password }
        );
        setCookie("sessionId", response?.data?.sessionId);
        setCookie("token", response?.data?.token);
        console.log("Login Success!");
      } else {
        setError("Captcha failed!");
        grecaptcha.reset();
        //Error in captcha
      }
      // Handle success (e.g., redirect user or store token)
    } catch (err) {
      setError(err.response?.data?.message || "An error occurred");
    }
  };

  return (
    <div>
      <Script
        src="https://www.google.com/recaptcha/api.js"
        async
        defer
      ></Script>
      <h3>This is login page!</h3>
      <h1>Audio Recorder</h1>
      {/* <AudioRecorder /> */}
      <form onSubmit={handleSubmit}>
        <input
          type="email"
          placeholder="email"
          onChange={(e) => setEmail(e.target.value)}
          required
        />
        <br />
        <input
          type="password"
          placeholder="password"
          onChange={(e) => setPassword(e.target.value)}
          required
        />
        <br />
        {/* <div
          className="g-recaptcha"
          data-sitekey="6LdfxRYqAAAAAJtze8I8Aec5asdg-caworyBX8M10"
        ></div> */}
        <br />
        <button type="submit">Login</button>
      </form>
      {error && <p style={{ color: "red" }}>{error}</p>}
    </div>
  );
}
