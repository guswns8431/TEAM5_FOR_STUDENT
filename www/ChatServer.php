<script type="module">
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.13.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.13.0/firebase-analytics.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyDk-RZT36PHlHjbE8WWFkKr47-vkKR3QNw",
    authDomain: "fir-17b98.firebaseapp.com",
    projectId: "fir-17b98",
    storageBucket: "fir-17b98.appspot.com",
    messagingSenderId: "1017787799434",
    appId: "1:1017787799434:web:2d9b29b92d7d1a6c9a9a73",
    measurementId: "G-E71P79Q8PR"
  };

  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
</script>