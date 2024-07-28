"use client";
import { getCookie } from "cookies-next";
import { useState, useEffect } from "react";
import axios from "axios";

export default function Home() {
  const [sessionCookieResponseStatus, setSessionCookieResponseStatus] =
    useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    // Create a cancel token source
    const source = axios.CancelToken.source();

    // Define the async function
    const fetchData = async () => {
      try {
        const sessionCookie = getCookie("sessionId") || "No session cookie found.";
        const tokenCookie = getCookie("token") || "No token cookie found.";
        const response = await axios.post(
          "http://localhost:3333/api/v1/authentication/login",
          {},
          {
            headers: {
              Authorization: `${cookie}`, // Assuming it's a Bearer token, adjust if necessary
              Token: tokenCookie
            },
            cancelToken: source.token, // Attach the cancel token
          }
        );

        setSessionCookieResponseStatus(response?.status);
        // Handle success (e.g., redirect user or store token)
      } catch (err) {
        if (axios.isCancel(err)) {
          console.log("Request canceled", err.message);
        } else {
          setError(err.response?.data?.message || "An error occurred");
        }
        if (err?.response?.status == 401)
          setSessionCookieResponseStatus(err?.response?.status);
      }
    };

    fetchData();

    // Cleanup function to cancel Axios request
    return () => {
      source.cancel("Operation canceled by the user.");
    };
  }, []); // Empty dependency array ensures this effect runs only once

  return (
    <div>
      {sessionCookieResponseStatus == null ? (
        <div>
          <h3>Authentication In-Process.</h3>
        </div>
      ) : sessionCookieResponseStatus === 200 ? (
        <div>
          <h3>Status Code: {sessionCookieResponseStatus}</h3>
          <h3>This is home!</h3>
          {error && <p style={{ color: "red" }}>{error}</p>}
        </div>
      ) : (
        <div>
          <h3>Authentication failed! Please re-login.</h3>
        </div>
      )}
    </div>
  );
}
