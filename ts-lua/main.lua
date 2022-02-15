--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
do
    local function ____catch(____error)
        print(____error)
    end
    local ____try, ____hasReturned = pcall(function()
        error(
            __TS__New(Error, "Deu error em nada"),
            0
        )
    end)
    if not ____try then
        ____catch(____hasReturned)
    end
end
