#!/usr/bin/env python

import yaml
from jinja2 import Template
template = Template(open('index.html.in').read())
pkgs = yaml.load_all(open('index.yaml', 'r'))
print(template.render(
    bb_base_url="https://bitbucket.org/biocommons",
    pkgs=pkgs,
))
