// app.js — Adds live status info to the page when it loads

// Wait for the entire HTML page to finish loading before running our code
document.addEventListener('DOMContentLoaded', () => {

  // Find the status box element in the HTML by its ID
  const statusBox = document.getElementById('status-box');

  // Get the current date and time from the browser
  const now = new Date();

  // Format the date into a readable string like "4/25/2026, 10:30:00 AM"
  const timeString = now.toLocaleString();

  // Build the HTML content we want to show in the status box
  // Each line shows a different piece of info
  const statusHTML = `
    <p>✅ Status: <strong>Online</strong></p>
    <!-- Website is reachable -->

    <p>🕐 Loaded at: <strong>${timeString}</strong></p>
    <!-- Shows what time the page was loaded — updates every visit -->

    <p>🌐 Served by: <strong>Nginx</strong></p>
    <!-- Nginx is the web server inside our Docker container -->

    <p>📦 Container: <strong>Docker + k3s</strong></p>
    <!-- Shows what's running this website -->

    <p>🔁 CI/CD: <strong>GitHub Actions</strong></p>
    <!-- Shows our deployment pipeline -->
  `;

  // Insert the built HTML into the status box on the page
  statusBox.innerHTML = statusHTML;

});
// End of DOMContentLoaded event listener