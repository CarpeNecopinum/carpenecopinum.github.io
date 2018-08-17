<li>
    % if "outfile" in page:
        <a href=${page['outfile']}>${page["title"]}</a>
    % else:
        <% print(page) %>
        <span>${page["title"]}</span>
    % endif
    % if "pages" in page.keys():
        <ul>
            % for subpage in page["pages"]:
                ${me.render(me=me, page=subpage)}
            % endfor
        </ul>
    % endif
</li>
