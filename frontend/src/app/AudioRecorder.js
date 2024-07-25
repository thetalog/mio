import { useEffect, useRef, useState } from "react";

const AudioRecorder = () => {
  const [isRecording, setIsRecording] = useState(false);
  const socketRef = useRef(null);
  const mediaRecorderRef = useRef(null);

  // Create a WebSocket connection to the server
  const socket = new WebSocket("ws://127.0.0.1:8080/");
  socketRef.current = socket;

  // Handle connection open event
  socket.onopen = () => {
    console.log("WebSocket is open now.");
  };

  // Handle connection close event
  socket.onclose = () => {
    console.log("WebSocket is closed now.");
  };

  // Handle errors
  socket.onerror = (error) => {
    console.error("WebSocket error:", error);
  };

  (async () => {
    const audioContext = new (window.AudioContext ||
      window.webkitAudioContext)();
    const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
    const source = audioContext.createMediaStreamSource(stream);

    const bufferSize = 8192; // Size of audio buffer
    const scriptProcessor = audioContext.createScriptProcessor(
      bufferSize,
      1,
      1
    );

    scriptProcessor.onaudioprocess = (event) => {
      const inputBuffer = event.inputBuffer.getChannelData(0);

      // Convert audio data to binary format
      const audioData = new Float32Array(inputBuffer);

      // Send audio data via WebSocket
      if (socket.readyState === WebSocket.OPEN) {
        socket.send(audioData.buffer); // Sends the ArrayBuffer
      }
    };
    source.connect(scriptProcessor);
    scriptProcessor.connect(audioContext.destination);
  })();

  const stopRecording = () => {
    if (
      mediaRecorderRef.current &&
      mediaRecorderRef.current.state !== "inactive"
    ) {
      mediaRecorderRef.current.stop();
      setIsRecording(false);
    }
  };

  return (
    <div>
      <h1>Real-Time Audio WebSocket</h1>
      <button>{isRecording ? "Stop Recording" : "Start Recording"}</button>
    </div>
  );
};

export default AudioRecorder;
