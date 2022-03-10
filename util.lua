function listMethods(component)
    if type(component) ~= "table" then
        return nil,"Attempted to call table function with" .. type(component) end

    for key,_ in pairs(component) do
        print(key)
    end

end

function getItemNames(component, side)
    if type(component) ~= "table" then
        return nil, "Component is " .. type(component) .. "And not a table" end
    if type(side) ~= "number" then
        return nil, "Side is " .. type(side) .. "And not a number" end
    for _, slotStack in pairs(component) do
        if slotStack.name ~= "minecraft:air" then 
            print(slotStack.name,"amount",slotStack.amount)
        end
    end
end