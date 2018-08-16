import cson
structure = cson.load(open("menu.cson"))

from mako.template import Template

page = open("page.html", "w")
page.write(Template(filename="page.mako").render(structure=structure))
page.close()

type(structure) is dict

nav_template = Template(filename="nav.mako")
nav_template.render(me=nav_template, key="top", props=structure["top"])
