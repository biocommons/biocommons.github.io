# Overview

## Projects

<iframe id="project-embed" src="http://localhost:3000/overview/" title="Project Overview" scrolling="no" style="width: 100%; height: 600px; border: none; display: block;"></iframe>

## Project Dependencies

![biocommons projects](projects.drawio.svg){data-title="Relationships between biocommons projects" data-description="This diagram shows dependencies among biocommons and ga4gh projects. Arrows point from the dependent package to the dependency; dependency types are Python (blue), REST (yellow), or the PostgreSQL protocol libpq (red). Data distributions are shown as yellow cylinders."}

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
