{
    function clone(item) { return JSON.parse(JSON.stringify(item)); }
    function repeat(item, times)
    {
        var result = [];
        if (item instanceof Array)
        {
            for (var i = 0; i < times; i++)
                result = result.concat(clone(item));
        } else {
            for (var i = 0; i < times; i++) 
                result.push(clone(item));
        }
        return result;
    }
}

start
  = mobarray

mobarray
  = a:mobs "\n" b:mobarray { return a.concat(b); }
  / a:mobbatch "\n" b:mobarray { return a.concat(b); }
  / mobbatch
  / mobs

mobbatch
  = count:multiplier "\n" item:mobindented { return repeat(item, count); }

mobindented
  = " "+ a:mobs "\n" b:mobindented { return a.concat(b); }
  / " "+ a:mobs { return a; }

mobs
  = count:multiplier item:mob { return repeat(item,count); }

mob
  = mobtype:[a-zA-Z]+ " "? data:json { 
      data["id"] = mobtype.join("");
      return data; 
    }
  / mobtype:[a-zA-Z]+ { return {id: mobtype.join("")}; }

json
  = "{" data:[^}]+ "}" { return eval("dummy = {" + data.join("") + "}"); }

multiplier
  = digits:[0-9]+ " "? "x" " "? { return parseInt(digits.join(""), 10); }
  / "" { return 1; }