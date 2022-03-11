local util = {}
function util.listMethods(component)
    if type(component) ~= "table" then
        return nil,"Attempted to call table function with" .. type(component) end

    for key,_ in pairs(component) do
        print(key)
    end
end

function util.getItemNames(component, side)
    local itemList = {}
    if type(component) ~= "table" then
        return nil, "Component is " .. type(component) .. "And not a table" end
    if type(side) ~= "number" then
        return nil, "Side is " .. type(side) .. "And not a number" end
    for _, slotStack in pairs(component) do
        if slotStack.name ~= "minecraft:air" then
            if itemList[slotStack.name] == nil then itemList[slotStack.name] = slotStack.amount
            else itemList[slotStack.name] = itemList[slotStack.name] + slotStack.amount
            end
        end
    end
    return itemList
end

return util