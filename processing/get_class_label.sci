function label = getClassLabel(classID)

    select classID

    case 0 then
        label = "Normal";

    case 1 then
        label = "Supraventricular";

    case 2 then
        label = "Ventricular";

    case 3 then
        label = "Fusion";

    case 4 then
        label = "Unknown";

    else
        label = "Invalid";

    end

endfunction
