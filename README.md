<html>
<head>
    <title>Chatting Application - README</title>
</head>
<body>
    <h1>Chatting Application</h1>
    <p>
        This project is a real-time chatting application built using <strong>Spring Boot</strong>, <strong>WebSockets</strong>, <strong>SockJS</strong>, and <strong>STOMP Client</strong> for seamless communication between users.
    </p>

<hr>

<h2>Features</h2>
    <ul>
        <li>Real-time messaging between users.</li>
        <li>WebSocket-based communication for fast and reliable connections.</li>
        <li>Fallback support using SockJS for browsers that don’t support WebSockets.</li>
        <li>User-friendly and responsive interface.</li>
        <li>Scalable backend using Spring Boot.</li>
    </ul>

<hr>

<h2>Technologies Used</h2>

<h3>Backend:</h3>
    <ul>
        <li><strong>Spring Boot</strong>: Framework for creating the REST API and WebSocket server.</li>
        <li><strong>WebSockets</strong>: Enabling real-time, full-duplex communication.</li>
        <li><strong>SockJS</strong>: Providing fallback options for WebSocket communication.</li>
        <li><strong>STOMP</strong>: Simple Text-Oriented Messaging Protocol for WebSocket communication.</li>
    </ul>

<h3>Frontend:</h3>
    <ul>
        <li><strong>HTML, CSS, JavaScript</strong>: For building the user interface.</li>
        <li><strong>STOMP Client</strong>: JavaScript library for implementing STOMP over WebSockets.</li>
    </ul>

<hr>

<h2>System Design</h2>
    <p>
        The application’s communication flow includes a Spring Boot server managing WebSocket connections and clients communicating through the STOMP protocol. SockJS provides fallback support for WebSocket communication.
    </p>
    <h3>Diagram</h3>
    <p>Below is the system design diagram illustrating the flow of the application:</p>
    <img src="img.png" alt="System Design Diagram">

<hr>

<h2>Project Setup</h2>

<h3>Backend Setup</h3>
    <ol>
        <li>Clone the repository:
            <pre><code>git clone &lt;repository-url&gt;</code></pre>
        </li>
        <li>Navigate to the backend directory:
            <pre><code>cd backend</code></pre>
        </li>
        <li>Build and run the Spring Boot application:
            <pre><code>./mvnw spring-boot:run</code></pre>
        </li>
    </ol>

<hr>

<h2>How It Works</h2>
    <ol>
        <li><strong>Connection Establishment</strong>:
            <p>Clients connect to the Spring Boot server using WebSockets or SockJS as a fallback. The STOMP protocol is used for sending and receiving messages.</p>
        </li>
        <li><strong>Messaging</strong>:
            <p>Users send messages through the WebSocket connection. The backend broadcasts messages to the appropriate recipients.</p>
        </li>
        <li><strong>Fallback Support</strong>:
            <p>If WebSocket support is unavailable, SockJS enables communication via HTTP-based alternatives.</p>
        </li>
    </ol>

<hr>

<h2>Contributing</h2>
    <p>Contributions are welcome! Please fork the repository and create a pull request with your changes.</p>


</html>