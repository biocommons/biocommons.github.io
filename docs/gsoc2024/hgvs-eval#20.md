# Develop HGVS evaluation framework

[biocommons/hgvs-eval#20](https://github.com/biocommons/hgvs-eval/issues/20)

| Difficulty | Expected Duration | Possible Mentors |
|-|-|-|
| Medium | 175h or 350h depending on scope | @reece |

### Summary

[HGVS Nomenclature](https://hgvs-nomenclature.org/) is the *lingua franca* for presenting sequence variants to humans in databases, scientific literature, and clinical reports.  Unfortunately, some implementations of the standard are buggy and/or incomplete. The purpose of this project is to develop an framework for evaluating implementations of HGVS Nomenclature to help users understand the limitations of packages, to help package developers improve their packages, and ultimately to increase the fidelity of data sharing. As a byproduct of the proposed plan, an OpenAPI specification would be developed and, if adopted, enable easier migration between tools.

### Community Benefits

The primary beneficiaries of this work would be the users of specific implementations who would be able to make well-informed decisions about gaps or issues. Since these users often work with clinicians, scientists, or adjacent professionals, it is expected that they would develop greater confidence that HGVS variant descriptions and manipulations were being performed consistently.

### Required and Desired Skills

- Python: very good-excellent
- OpenAPI: some experience is ideal

### Expected Results / Deliverables

- An OpenAPI specification for HGVS Nomenclature variant descriptions and manipulation
- A set of classified tests that exercise all aspects of HGVS Nomenclature
- A framework for executing/evaluating packages, storing and publishing results, and comparing within and across implementations
- Demonstration of the framework using at least one publicly available implementation (ideally more)
- Package the project so that it can be used in CI/CD testing and by a public evaluation server
- Develop a full-stack app to store and display evaluation results.

### Benefits to Intern

This project is well-suited to individuals who have experience with REST interface design and testing methodology. Implementation will be in Python, and applicants should have strong Python skills. Exposure to HGVS and genetic variants is desirable but not required. This project has enormous opportunities to learn and to have significant impact in the scientific community. At a minimum, the intern would:
- become familiar with HGVS Nomenclature and some of the challenges when writing standards
- learn how to design a REST interface and use it to create a façade over different software packages
- develop software architecture skills

This project could be simple, but also offers many avenues for extensions and learning. For example, the student might seek to build a web interface with authentication to store results.

### How to apply

Students applying to this project should briefly describe their vision for this project, highlight their existing skills and the skills they would need to learn, and estimate an implementation timeline.
