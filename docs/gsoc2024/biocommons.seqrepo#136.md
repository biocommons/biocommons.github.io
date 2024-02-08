# Generalize the seqrepo interface and implement new backends

[biocommons/biocommons.seqrepo#136](https://github.com/biocommons/biocommons.seqrepo/issues/136)

| Difficulty | Expected Duration | Possible Mentors |
|-|-|-|
| Medium | 175h | @reece |

### Summary

SeqRepo provides a simple interface to biological sequences and subsequences, with a single backend that provides fast random-access to local, non-redundant, compressed, and journaled sequences.  The original use case for SeqRepo was to provide fast and reliable access to sequences in a clinical genetics reporting pipeline. (See [design](https://github.com/biocommons/biocommons.seqrepo/blob/main/docs/design.rst))

The goal of this issue is to create an abstract interface that supports other storage backends, as well as caching and federation layers as depicted here:

![Image](https://github.com/biocommons/biocommons.seqrepo/assets/109453/03afc523-549b-4d51-b31f-b523a896bb27)

See #61 for additional information.


### Community Benefits

When implemented, this project will enable the following (and ideally implement a few of them):

- Network sources: The ability to store sequences in, for example, a private REDIS database
- Federation: The ability to merge sets of sequences from different sources or species
- Caching: The ability to transparently cache sequences locally on first use, rather than downloading a database
- Façade: Provide a consistent interface for existing network sequence sources
- REST API: Provide a REST API over any of these sources, including federated sources

### Expected Results / Deliverables

- Define and implement an abstract interface
- Adapt the current Fastadir to use the interface
- Incorporate and adapt the REST interface
- Implement a local sequence cache
- Implement redis, s3, or other backends as able

### Required and Desired Skills

- Python
- Relational database design, SQL
- REST interface design
- Caching techniques and modes
- Backend-specific experience, such as redis and/or AWS S3 


### Benefits to Intern

The internship will gain software architecture and interface abstraction skills while solving a contemporary practical issue for modern bioinformatics.

### How to apply

Students applying to this project should briefly describe their vision for this project, highlight their existing skills and the skills they would need to learn, and estimate an implementation timeline.
