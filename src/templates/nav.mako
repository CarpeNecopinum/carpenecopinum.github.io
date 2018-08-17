<%namespace name="item" file="nav_item.mako"/>
<ul>
% for page in pages:
    ${item.template.render(me=item.template,page=page)}
% endfor
</ul>
