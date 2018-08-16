<li>${key}
    % if type(props) is dict:
        <ul>
            % for name, branch in props.items():
                ${me.render(me=me, key=name, props=branch)}
            % endfor
        </ul>
    % endif
</li>
