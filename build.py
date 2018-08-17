import cson
structure = cson.load(open("src/menu.cson"))

from mako.template import Template
from mako.lookup import TemplateLookup

folders = {
    "source": "src/",
    "template": "src/templates/",
    "output": "./"
}

lookup = TemplateLookup(directories=['.'])
nav_template = Template(filename=folders["template"] + "nav.mako", lookup=lookup)

def putDefaults(page):
    page.setdefault("id", page["title"])
    if "infile" in page:
        page.setdefault("outfile", page["infile"])
        page.setdefault("template", "page.mako")
    if "pages" in page:
        for sub in page["pages"]:
            putDefaults(sub)

for nav in structure:
    putDefaults(nav)

def buildBranch(page, path):
    global folders

    if "infile" in page:
        navs = {root["title"]: nav_template.render(pages=root["pages"]) for root in structure}
        template = Template(filename=folders["template"] + page["template"])

        open(folders["output"] + page["outfile"], "w").write(template.render(navs=navs))

    if "pages" in page:
        for subpage in page["pages"]:
            buildBranch(subpage, path + "." + page["id"])

for nav in structure:
    if "pages" in nav:
        buildBranch(nav, nav["id"])
