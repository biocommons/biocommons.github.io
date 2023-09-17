# Welcome to the biocommons

<div style="display: grid; grid-template-columns: 1fr 5fr; grid-gap: 20px; place-items: center;">

  <div style="align: center">
    <img src="images/logo.svg">
  </div>

  <div style="color: #666;">
    <b>The biocommons is a community that fosters collaboration on pre-competitive, interoperable, and high-quality bioinformatics open source software and data, primarily for biological sequence analysis and interpretation.
    <p/>
    Code is released under <a href="https://opensource.org/licenses/Apache-2.0">Apache License v2</a> and data are released under the <a href="https://creativecommons.org/licenses/by/4.0/">Creative Commons CC-BY 4.0 license</a>.</b>
  </div>
</div>

<div style="color: #fff; font-size: small">
  commit: {{ git.short_commit }}
  <br/>date: {{ git.date }}
  <br/>deployed: {{ now() }}
</div>
