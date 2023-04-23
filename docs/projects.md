# Projects

![biocommons projects](projects.drawio.svg){data-title="Relationships of biocommons projects" data-description="This diagram shows how biocommons and ga4gh projects are related. Arrows point from the dependent package to the dependency; dependency types are Python (blue), REST (yellow), or the PostgreSQL protocol libpq (red). Data distributions are shown as yellow cylinders."}

## Active projects

- [anyvar](https://github.com/biocommons/anyvar) (alpha) is a proof-of-concept variation
  translation, validation, and registration service.
- [bioutils](https://github.com/biocommons/bioutils) provides common tools and lookup tables used
  primarily by the hgvs and uta packages
- [eutils](https://github.com/biocommons/eutils) simplifies searching, fetching, and parsing records
  from NCBI using their E-utilities interface
- [hgvs](https://github.com/biocommons/hgvs) parses, formats, validates, normalizes,
  and transforms sequence variant expressions according to [HGVS Nomenclature](https://hgvs-nomenclature.org/)
- [SeqRepo](https://github.com/biocommons/biocommons.seqrepo) stores biological sequences in a
  non-redundant, compressed, journalled, file-based storage. The
  [seqrepo-rest-service](https://github.com/biocommons/seqrepo-rest-service) provides a REST
  interface to biological sequences and sequence metadata using a seqrepo instance backend.
- [UTA](https://github.com/biocommons/uta) (Universal Transcript Archive) is a comprehensive archive
  of genome-transcript alignments; multiple transcript sources and versions, multiple genomic
  references, and multiple alignment methods, particularly splign (NCBI) and (blat) (UCSC)

## Related external projects

- [ga4gh/vrs-python](https://github.com/ga4gh/vrs-python) is an implementation of the [Variation
  Representation Specification](https://vrs.ga4gh.org).