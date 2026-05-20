# Overview

<iframe id="project-embed" src="http://localhost:3000/overview/" title="Project Overview" scrolling="no" style="width: 100%; height: 600px; border: none; display: block;"></iframe>

## Relationships between biocommons projects

![biocommons projects](projects.drawio.svg){data-title="Relationships between biocommons projects" data-description="This diagram shows dependencies among biocommons and ga4gh projects. Arrows point from the dependent package to the dependency; dependency types are Python (blue), REST (yellow), or the PostgreSQL protocol libpq (red). Data distributions are shown as yellow cylinders."}

## Administrative Repos

- [.github](https://github.com/biocommons/.github) This is our repo or workflows and issue templates
  <br/>
  [![.github pulse](../images/pulse.png ".github pulse")](https://github.com/biocommons/.github/pulse/monthly)
  [![.github stars](https://img.shields.io/github/stars/biocommons/.github)](https://github.com/biocommons/.github)
  [![.github forks](https://img.shields.io/github/forks/biocommons/.github)](https://github.com/biocommons/.github)
  [![.github issues](https://img.shields.io/github/issues/biocommons/.github)](https://github.com/biocommons/.github)
  [![.github prs](https://img.shields.io/github/issues-pr/biocommons/.github?color=0088ff)](https://github.com/biocommons/.github/pulls)
  [![.github contributors](https://img.shields.io/github/contributors/biocommons/.github)](https://github.com/biocommons/.github/graphs/contributors)

- [python-package](https://github.com/biocommons/python-package) This is our template repo
  <br/>
  [![python-package pulse](../images/pulse.png "python-package pulse")](https://github.com/biocommons/python-package/pulse/monthly)
  [![python-package stars](https://img.shields.io/github/stars/biocommons/python-package)](https://github.com/biocommons/python-package)
  [![python-package forks](https://img.shields.io/github/forks/biocommons/python-package)](https://github.com/biocommons/python-package)
  [![python-package issues](https://img.shields.io/github/issues/biocommons/python-package)](https://github.com/biocommons/python-package)
  [![python-package prs](https://img.shields.io/github/issues-pr/biocommons/python-package?color=0088ff)](https://github.com/biocommons/python-package/pulls)
  [![python-package contributors](https://img.shields.io/github/contributors/biocommons/python-package)](https://github.com/biocommons/biocommons.example/graphs/contributors)


## Related external projects

- [ga4gh/vrs-python](https://github.com/ga4gh/vrs-python) is an implementation of the [Variation
  Representation Specification](https://vrs.ga4gh.org).


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
