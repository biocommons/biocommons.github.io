# Contributors

<iframe id="project-embed" src="https://stats.biocommons.org/contributors/" title="Contributors" scrolling="no" style="width: 100%; height: 600px; border: none; display: block;"></iframe>

<script>
(function () {
  var statsUrl = new URLSearchParams(window.location.search).get("stats");
  if (statsUrl) document.getElementById("project-embed").src = statsUrl;

  window.addEventListener("message", function (e) {
    if (e.data && e.data.type === "github-stats-resize") {
      var iframe = document.getElementById("project-embed");
      if (iframe) iframe.style.height = e.data.height + "px";
    }
  });
})();
</script>
