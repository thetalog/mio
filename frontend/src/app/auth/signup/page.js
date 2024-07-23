"use client";
import { useState } from "react";
import Script from "next/script";
import axios from "axios";

export default function Signup() {
  const [email, setEmail] = useState("");
  const [displayName, setDisplayName] = useState("");
  const [userName, setUserName] = useState("");
  const [dateOfBirth, setDateOfBirth] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const captchaResponseToken = grecaptcha.getResponse();
      const captchaV2Response = await axios.post(
        "http://localhost:3333/api/v1/authentication/recaptcha-v2-verify",
        {},
        { headers: { "recaptcha-v2-token": captchaResponseToken } }
      );
      if (captchaV2Response?.status === 200) {
        const response = await axios.post(
          "http://localhost:3333/api/v1/authentication/signup",
          { email, displayName, userName, dateOfBirth, password }
        );
        console.log(response?.status);
      } else {
        setError("Captcha failed!");
        grecaptcha.reset();
        //Error in captcha
      }
    } catch (error) {
      setError("Something went wrong!");
    }
  };
  // Calculate the date 14 years ago from today
  const getMaxDate = () => {
    const today = new Date();
    const year = today.getFullYear() - 14;
    const month = String(today.getMonth() + 1).padStart(2, "0"); // Months are 0-based in JavaScript
    const day = String(today.getDate()).padStart(2, "0");
    return `${year}-${month}-${day}`;
  };
  return (
    <div>
      <Script
        src="https://www.google.com/recaptcha/api.js"
        async
        defer
      ></Script>
      <h3>This is signup page!</h3>
      <form onSubmit={handleSubmit}>
        <input
          type="email"
          placeholder="email"
          onChange={(e) => setEmail(e.target.value)}
          // required
        ></input>
        <br></br>
        <input
          type="text"
          placeholder="display name"
          onChange={(e) => setDisplayName(e.target.value)}
          // required
        ></input>
        <br></br>
        <input
          type="text"
          placeholder="username"
          onChange={(e) => {
            const regex = /^[a-zA-Z0-9_]*$/;
            if (regex.test(e.target.value)) {
              setUserName(e.target.value);
              setError("");
            } else {
              setError(
                "Username can only contain letters, numbers, and underscores, and no spaces."
              );
            }
          }}
          // required
        ></input>
        <br></br>
        <input
          type="date"
          placeholder="Date of birth"
          onChange={(e) => setDateOfBirth(e.target.value)}
          max={getMaxDate()}
          // required
        ></input>
        <br></br>
        <input
          type="password"
          placeholder="password"
          onChange={(e) => setPassword(e.target.value)}
          // required
        ></input>
        <br></br>
        <div
          className="g-recaptcha"
          data-sitekey="6LdfxRYqAAAAAJtze8I8Aec5asdg-caworyBX8M10"
        ></div>
        <br></br>
        <button
          // 6LdfxRYqAAAAAJtze8I8Aec5asdg-caworyBX8M10 Site Key v2
          // 6LdfxRYqAAAAAHLK3LlLM-TpUxAksjRNo1i-T_r1r Secret Key v2
          type="submit"
        >
          Signup
        </button>
      </form>
      {error && <p style={{ color: "red" }}>{error}</p>}
    </div>
  );
}
