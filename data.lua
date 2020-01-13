--format: internal name, unlock tech
local Items = {
    {"alien-artifact", "deadlock-stacking-1"},
    {"alien-ore-1", "deadlock-stacking-1"},
    {"alien-ore-2", "deadlock-stacking-1"},
    {"alien-ore-3", "deadlock-stacking-1"}
}

--Add stacking recipes
for _, item in pairs(Items) do
    local name = item[1]
    local tech = item[2]
    if data.raw.item[name] then
        if not data.raw.item["deadlock-stack-" .. name] then
            deadlock.add_stack(name, nil, tech, nil)
        end
    end
end
