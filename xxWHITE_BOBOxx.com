<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>xxWHITE_BOBOxx's Links</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Orbitron', sans-serif;
      background: linear-gradient(-45deg, #0f0c29, #302b63, #24243e, #0f0c29);
      background-size: 400% 400%;
      animation: gradientBG 15s ease infinite;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      overflow: hidden;
      color: white;
    }

    @keyframes gradientBG {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }

    #loader {
      position: fixed;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: #0f0c29;
      display: flex;
      justify-content: center;
      align-items: center;
      z-index: 9999;
      flex-direction: column;
    }

    .loader-text {
      color: #00f2ff;
      font-size: 1.5rem;
      margin-top: 20px;
      animation: pulse 1.5s infinite;
    }

    .skip-button {
      margin-top: 30px;
      padding: 10px 20px;
      background-color: transparent;
      border: 2px solid #00f2ff;
      color: #00f2ff;
      border-radius: 10px;
      cursor: pointer;
      font-size: 1rem;
      transition: background-color 0.3s, color 0.3s;
    }

    .skip-button:hover {
      background-color: #00f2ff;
      color: #0f0c29;
    }

    @keyframes pulse {
      0% { opacity: 0.3; }
      50% { opacity: 1; }
      100% { opacity: 0.3; }
    }

    .neon-ring {
      width: 80px;
      height: 80px;
      border: 6px solid #00f2ff;
      border-radius: 50%;
      box-shadow: 0 0 20px #00f2ff, 0 0 40px #00f2ff, 0 0 60px #00f2ff;
      animation: ring-spin 1s linear infinite;
    }

    @keyframes ring-spin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
    }

    .container {
      text-align: center;
      animation: fadeIn 0.6s ease-in-out;
      z-index: 1;
    }

    .profile-pic {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      border: 3px solid #00f2ff;
      box-shadow: 0 0 15px #00f2ff;
      margin-bottom: 20px;
    }

    h1 {
      margin-bottom: 30px;
      font-size: 2.5rem;
      text-shadow: 0 0 10px #00f2ff;
    }

    .button {
      background: #1e1e2f;
      border: 2px solid #00f2ff;
      border-radius: 15px;
      color: #00f2ff;
      padding: 15px 25px;
      margin: 15px;
      font-size: 1.1rem;
      cursor: pointer;
      text-decoration: none;
      display: inline-block;
      transition: all 0.4s ease;
      box-shadow: 0 0 10px #00f2ff50;
    }

    .button:hover {
      background: #00f2ff;
      color: #1e1e2f;
      transform: scale(1.05);
      box-shadow: 0 0 20px #00f2ffcc;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(30px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .glow {
      animation: glow 2s infinite alternate;
    }

    @keyframes glow {
      from { text-shadow: 0 0 5px #00f2ff; }
      to { text-shadow: 0 0 20px #00f2ff; }
    }
  </style>
</head>
<body>
  <div id="loader">
    <div class="neon-ring"></div>
    <div class="loader-text">Loading your awesome page...</div>
    <button class="skip-button" onclick="skipLoading()">Skip</button>
  </div>

  <div class="container" style="display: none;">
    <img src="https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/f7e5c938e504d4794070a91e10bc5115~c5_100x100.jpeg?x-expires=1716225600&x-signature=LRyE7v7jOCfPKyJekX30IK4R3KM%3D" alt="xxWHITE_BOBOxx" class="profile-pic">
    <h1 class="glow">@xxwhite_boboxx</h1>
    <a href="https://www.reddit.com/user/Cool-Compote-235/" class="button" target="_blank">Follow me on Reddit!</a><br>
    <a href="https://discord.gg/GWmZ8QDe" class="button" target="_blank">Join my Discord Server!</a><br>
    <a href="https://www.tiktok.com/@xxwhite_boboxx" class="button" target="_blank">Follow me on TikTok!</a><br>
    <a href="https://www.roblox.com/users/8361032021/profile" class="button" target="_blank">Follow me on Roblox!</a>
  </div>

  <script>
    const loader = document.getElementById('loader');
    const container = document.querySelector('.container');

    window.addEventListener('load', function () {
      setTimeout(() => {
        loader.style.display = 'none';
        container.style.display = 'block';
      }, 60000); // show loading for 1 minute (60000 milliseconds)
    });

    function skipLoading() {
      loader.style.display = 'none';
      container.style.display = 'block';
    }
  </script>
</body>
</html>
