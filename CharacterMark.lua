-- CharacterMark Addon
local CharacterMark = CreateFrame("Frame", "CharacterMarkFrame", UIParent)
CharacterMark:SetFrameStrata("TOOLTIP")
CharacterMark:SetAllPoints(UIParent)
CharacterMark:EnableMouse(false)

-- Lokalisierung
local L = {}
local locale = GetLocale()

-- English Text (Standard)
L["TITLE"] = "Character Mark"
L["SIZE_X"] = "Horizontal Size"
L["SIZE_Y"] = "Vertical Size"
L["THICKNESS"] = "Thickness"
L["COLOR"] = "Color"
L["RED"] = "Red"
L["GREEN"] = "Green"
L["BLUE"] = "Blue"
L["ENABLE"] = "Enable Character Mark"
L["X_OFFSET"] = "X Offset"
L["Y_OFFSET"] = "Y Offset"
L["RESET_POSITION"] = "Reset Position"
L["POSITION"] = "Position"
L["BORDER"] = "Enable Border"
L["BORDER_SIZE"] = "Border Size"
L["BORDER_COLOR"] = "Border Color"
L["VISIBILITY"] = "Visibility"
L["ALWAYS"] = "Always"
L["IN_COMBAT"] = "In Combat"
L["IN_INSTANCE"] = "In Instance"
L["IN_GROUP"] = "In Group"
L["NEVER"] = "Never"
L["LINES"] = "Lines"
L["TOP_LINE"] = "Top"
L["BOTTOM_LINE"] = "Bottom"
L["LEFT_LINE"] = "Left"
L["RIGHT_LINE"] = "Right"
L["TOP_GAP"] = "Top Gap"
L["BOTTOM_GAP"] = "Bottom Gap"
L["LEFT_GAP"] = "Left Gap"
L["RIGHT_GAP"] = "Right Gap"
L["TOP_SIZE"] = "Top Length"
L["BOTTOM_SIZE"] = "Bottom Length"
L["LEFT_SIZE"] = "Left Length"
L["RIGHT_SIZE"] = "Right Length"
L["LOCK_VERTICAL"] = "Lock Top/Bottom"
L["LOCK_HORIZONTAL"] = "Lock Left/Right"
L["VERTICAL"] = "Vertical"
L["HORIZONTAL"] = "Horizontal"
L["PRESETS"] = "Presets"
L["PRESET_CLASSIC"] = "Classic"
L["PRESET_HOLLOW"] = "Hollow"
L["PRESET_TSHAPE"] = "T-Shape"
L["PRESET_DOT"] = "Dot"
L["GENERAL"] = "General"
L["SIZE_THICKNESS"] = "Shape"
L["GAPS"] = "Gaps"
L["APPEARANCE"] = "General"

-- German Text
if locale == "deDE" then
    L["TITLE"] = "Character Mark"
    L["SIZE_X"] = "Horizontale Größe"
    L["SIZE_Y"] = "Vertikale Größe"
    L["THICKNESS"] = "Dicke"
    L["COLOR"] = "Farbe"
    L["RED"] = "Rot"
    L["GREEN"] = "Grün"
    L["BLUE"] = "Blau"
    L["ENABLE"] = "Character Mark aktivieren"
    L["X_OFFSET"] = "X-Versatz"
    L["Y_OFFSET"] = "Y-Versatz"
    L["RESET_POSITION"] = "Position zurücksetzen"
    L["POSITION"] = "Position"
    L["BORDER"] = "Rahmen aktivieren"
    L["BORDER_SIZE"] = "Rahmengröße"
    L["BORDER_COLOR"] = "Rahmenfarbe"
    L["VISIBILITY"] = "Sichtbarkeit"
    L["ALWAYS"] = "Immer"
    L["IN_COMBAT"] = "Im Kampf"
    L["IN_INSTANCE"] = "In Instanz"
    L["IN_GROUP"] = "In Gruppe"
    L["NEVER"] = "Nie"
    L["LINES"] = "Linien"
    L["TOP_LINE"] = "Oben"
    L["BOTTOM_LINE"] = "Unten"
    L["LEFT_LINE"] = "Links"
    L["RIGHT_LINE"] = "Rechts"
    L["TOP_GAP"] = "Abstand Oben"
    L["BOTTOM_GAP"] = "Abstand Unten"
    L["LEFT_GAP"] = "Abstand Links"
    L["RIGHT_GAP"] = "Abstand Rechts"
    L["TOP_SIZE"] = "Länge Oben"
    L["BOTTOM_SIZE"] = "Länge Unten"
    L["LEFT_SIZE"] = "Länge Links"
    L["RIGHT_SIZE"] = "Länge Rechts"
    L["LOCK_VERTICAL"] = "Oben/Unten sperren"
    L["LOCK_HORIZONTAL"] = "Links/Rechts sperren"
    L["VERTICAL"] = "Vertikal"
    L["HORIZONTAL"] = "Horizontal"
    L["PRESETS"] = "Vorlagen"
    L["PRESET_CLASSIC"] = "Klassisch"
    L["PRESET_HOLLOW"] = "Hohl"
    L["PRESET_TSHAPE"] = "T-Form"
    L["PRESET_DOT"] = "Punkt"
    L["GENERAL"] = "Allgemein"
    L["SIZE_THICKNESS"] = "Form"
    L["GAPS"] = "Abstände"
    L["APPEARANCE"] = "Allgemein"
end

-- Spanish Text
if locale == "esES" or locale == "esMX" then
    L["TITLE"] = "Character Mark"
    L["SIZE_X"] = "Tamaño Horizontal"
    L["SIZE_Y"] = "Tamaño Vertical"
    L["THICKNESS"] = "Grosor"
    L["COLOR"] = "Color"
    L["RED"] = "Rojo"
    L["GREEN"] = "Verde"
    L["BLUE"] = "Azul"
    L["ENABLE"] = "Habilitar marca de carácter"
    L["X_OFFSET"] = "Desplazamiento X"
    L["Y_OFFSET"] = "Desplazamiento Y"
    L["RESET_POSITION"] = "Restablecer Posición"
    L["POSITION"] = "Posición"
    L["BORDER"] = "Activar Borde"
    L["BORDER_SIZE"] = "Tamaño del Borde"
    L["BORDER_COLOR"] = "Color del Borde"
    L["VISIBILITY"] = "Visibilidad"
    L["ALWAYS"] = "Siempre"
    L["IN_COMBAT"] = "En Combate"
    L["IN_INSTANCE"] = "En Instancia"
    L["IN_GROUP"] = "En Grupo"
    L["NEVER"] = "Nunca"
    L["LINES"] = "Líneas"
    L["TOP_LINE"] = "Arriba"
    L["BOTTOM_LINE"] = "Abajo"
    L["LEFT_LINE"] = "Izquierda"
    L["RIGHT_LINE"] = "Derecha"
    L["TOP_GAP"] = "Espacio Arriba"
    L["BOTTOM_GAP"] = "Espacio Abajo"
    L["LEFT_GAP"] = "Espacio Izquierda"
    L["RIGHT_GAP"] = "Espacio Derecha"
    L["TOP_SIZE"] = "Longitud Arriba"
    L["BOTTOM_SIZE"] = "Longitud Abajo"
    L["LEFT_SIZE"] = "Longitud Izquierda"
    L["RIGHT_SIZE"] = "Longitud Derecha"
    L["LOCK_VERTICAL"] = "Bloquear Arriba/Abajo"
    L["LOCK_HORIZONTAL"] = "Bloquear Izq/Der"
    L["VERTICAL"] = "Vertical"
    L["HORIZONTAL"] = "Horizontal"
    L["PRESETS"] = "Preajustes"
    L["PRESET_CLASSIC"] = "Clásico"
    L["PRESET_HOLLOW"] = "Hueco"
    L["PRESET_TSHAPE"] = "Forma T"
    L["PRESET_DOT"] = "Punto"
    L["GENERAL"] = "General"
    L["SIZE_THICKNESS"] = "Forma"
    L["GAPS"] = "Espacios"
    L["APPEARANCE"] = "General"
end

-- French Text
if locale == "frFR" then
    L["TITLE"] = "Character Mark"
    L["SIZE_X"] = "Taille Horizontale"
    L["SIZE_Y"] = "Taille Verticale"
    L["THICKNESS"] = "Épaisseur"
    L["COLOR"] = "Couleur"
    L["RED"] = "Rouge"
    L["GREEN"] = "Vert"
    L["BLUE"] = "Bleu"
    L["ENABLE"] = "Activer la marque de caractère"
    L["X_OFFSET"] = "Décalage X"
    L["Y_OFFSET"] = "Décalage Y"
    L["RESET_POSITION"] = "Réinitialiser la Position"
    L["POSITION"] = "Position"
    L["BORDER"] = "Activer la Bordure"
    L["BORDER_SIZE"] = "Taille de la Bordure"
    L["BORDER_COLOR"] = "Couleur de la Bordure"
    L["VISIBILITY"] = "Visibilité"
    L["ALWAYS"] = "Toujours"
    L["IN_COMBAT"] = "En Combat"
    L["IN_INSTANCE"] = "En Instance"
    L["IN_GROUP"] = "En Groupe"
    L["NEVER"] = "Jamais"
    L["LINES"] = "Lignes"
    L["TOP_LINE"] = "Haut"
    L["BOTTOM_LINE"] = "Bas"
    L["LEFT_LINE"] = "Gauche"
    L["RIGHT_LINE"] = "Droite"
    L["TOP_GAP"] = "Écart Haut"
    L["BOTTOM_GAP"] = "Écart Bas"
    L["LEFT_GAP"] = "Écart Gauche"
    L["RIGHT_GAP"] = "Écart Droite"
    L["TOP_SIZE"] = "Longueur Haut"
    L["BOTTOM_SIZE"] = "Longueur Bas"
    L["LEFT_SIZE"] = "Longueur Gauche"
    L["RIGHT_SIZE"] = "Longueur Droite"
    L["LOCK_VERTICAL"] = "Verrouiller Haut/Bas"
    L["LOCK_HORIZONTAL"] = "Verrouiller Gauche/Droite"
    L["VERTICAL"] = "Vertical"
    L["HORIZONTAL"] = "Horizontal"
    L["PRESETS"] = "Préréglages"
    L["PRESET_CLASSIC"] = "Classique"
    L["PRESET_HOLLOW"] = "Creux"
    L["PRESET_TSHAPE"] = "Forme T"
    L["PRESET_DOT"] = "Point"
    L["GENERAL"] = "Général"
    L["SIZE_THICKNESS"] = "Forme"
    L["GAPS"] = "Écarts"
    L["APPEARANCE"] = "Général"
end

-- Standard settings
local defaults = {
    topSize = 20,
    bottomSize = 20,
    leftSize = 20,
    rightSize = 20,
    lockVertical = true,
    lockHorizontal = true,
    lockVerticalGap = true,
    lockHorizontalGap = true,
    color = { r = 0, g = 1, b = 0, a = 1 }, -- Green
    enabled = true,
    offsetX = 0,
    offsetY = 0,
    thickness = 1,
    border = false,
    borderSize = 2,
    borderColor = { r = 0, g = 0, b = 0, a = 1 }, -- Black
    visibility = "always",                        -- always, combat, instance, group, never
    showTop = true,
    showBottom = true,
    showLeft = true,
    showRight = true,
    topGap = 0,
    bottomGap = 0,
    leftGap = 0,
    rightGap = 0
}

-- Initialize database
CharacterMarkDB = CharacterMarkDB or {}

-- Apply defaults for any missing values
for k, v in pairs(defaults) do
    if CharacterMarkDB[k] == nil then
        if type(v) == "table" then
            CharacterMarkDB[k] = {}
            for k2, v2 in pairs(v) do
                CharacterMarkDB[k][k2] = v2
            end
        else
            CharacterMarkDB[k] = v
        end
    end
end

-- Container frame for the CharacterMark (for moving)
local CharacterMarkContainer = CreateFrame("Frame", "CharacterMarkContainer", UIParent)
CharacterMarkContainer:SetFrameStrata("LOW")
CharacterMarkContainer:SetSize(1, 1)
CharacterMarkContainer:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
CharacterMarkContainer:EnableMouse(false)
CharacterMarkContainer:SetMovable(true)

-- Helper function to create a line with its borders
local function CreateLineWithBorders(parent)
    local line = {}
    -- Main line texture
    line.texture = parent:CreateTexture(nil, "ARTWORK")
    line.texture:SetTexture("Interface\\Buttons\\WHITE8X8")
    -- Side borders (along the length)
    line.sideBorder1 = parent:CreateTexture(nil, "BACKGROUND")
    line.sideBorder1:SetTexture("Interface\\Buttons\\WHITE8X8")
    line.sideBorder2 = parent:CreateTexture(nil, "BACKGROUND")
    line.sideBorder2:SetTexture("Interface\\Buttons\\WHITE8X8")
    -- Tip borders (at each end)
    line.innerTipBorder = parent:CreateTexture(nil, "BACKGROUND")
    line.innerTipBorder:SetTexture("Interface\\Buttons\\WHITE8X8")
    line.outerTipBorder = parent:CreateTexture(nil, "BACKGROUND")
    line.outerTipBorder:SetTexture("Interface\\Buttons\\WHITE8X8")
    return line
end

-- Create the 4 line segments
local topLine = CreateLineWithBorders(CharacterMarkContainer)
local bottomLine = CreateLineWithBorders(CharacterMarkContainer)
local leftLine = CreateLineWithBorders(CharacterMarkContainer)
local rightLine = CreateLineWithBorders(CharacterMarkContainer)

-- Function to check visibility conditions
local function ShouldShowCharacterMark()
    if not CharacterMarkDB.enabled then
        return false
    end

    local visMode = CharacterMarkDB.visibility or "always"

    if visMode == "never" then
        return false
    elseif visMode == "always" then
        return true
    elseif visMode == "combat" then
        return UnitAffectingCombat("player") == true
    elseif visMode == "instance" then
        local inInstance, instanceType = IsInInstance()
        return inInstance
    elseif visMode == "group" then
        return IsInGroup() or IsInRaid()
    end

    return true
end

-- Helper function to hide a line and all its borders
local function HideLine(line)
    line.texture:Hide()
    line.sideBorder1:Hide()
    line.sideBorder2:Hide()
    line.innerTipBorder:Hide()
    line.outerTipBorder:Hide()
end

-- Helper function to set border color for a line
local function SetLineBorderColor(line, r, g, b, a)
    line.sideBorder1:SetVertexColor(r, g, b, a)
    line.sideBorder2:SetVertexColor(r, g, b, a)
    line.innerTipBorder:SetVertexColor(r, g, b, a)
    line.outerTipBorder:SetVertexColor(r, g, b, a)
end

-- Function to update the CharacterMark
local function UpdateCharacterMark()
    -- Ensure database is initialized
    if not CharacterMarkDB then
        CharacterMarkDB = {}
    end

    -- Apply defaults if values are missing
    if not CharacterMarkDB.topSize then CharacterMarkDB.topSize = defaults.topSize end
    if not CharacterMarkDB.bottomSize then CharacterMarkDB.bottomSize = defaults.bottomSize end
    if not CharacterMarkDB.leftSize then CharacterMarkDB.leftSize = defaults.leftSize end
    if not CharacterMarkDB.rightSize then CharacterMarkDB.rightSize = defaults.rightSize end
    if CharacterMarkDB.lockVertical == nil then CharacterMarkDB.lockVertical = defaults.lockVertical end
    if CharacterMarkDB.lockHorizontal == nil then CharacterMarkDB.lockHorizontal = defaults.lockHorizontal end
    if CharacterMarkDB.lockVerticalGap == nil then CharacterMarkDB.lockVerticalGap = defaults.lockVerticalGap end
    if CharacterMarkDB.lockHorizontalGap == nil then CharacterMarkDB.lockHorizontalGap = defaults.lockHorizontalGap end
    if not CharacterMarkDB.thickness then CharacterMarkDB.thickness = defaults.thickness end
    if not CharacterMarkDB.borderSize then CharacterMarkDB.borderSize = defaults.borderSize end
    if CharacterMarkDB.border == nil then CharacterMarkDB.border = defaults.border end
    if CharacterMarkDB.enabled == nil then CharacterMarkDB.enabled = defaults.enabled end
    if not CharacterMarkDB.color then CharacterMarkDB.color = { r = 0, g = 1, b = 0, a = 1 } end
    if not CharacterMarkDB.borderColor then CharacterMarkDB.borderColor = { r = 0, g = 0, b = 0, a = 1 } end
    if not CharacterMarkDB.offsetX then CharacterMarkDB.offsetX = defaults.offsetX end
    if not CharacterMarkDB.offsetY then CharacterMarkDB.offsetY = defaults.offsetY end
    if not CharacterMarkDB.visibility then CharacterMarkDB.visibility = defaults.visibility end
    if CharacterMarkDB.showTop == nil then CharacterMarkDB.showTop = defaults.showTop end
    if CharacterMarkDB.showBottom == nil then CharacterMarkDB.showBottom = defaults.showBottom end
    if CharacterMarkDB.showLeft == nil then CharacterMarkDB.showLeft = defaults.showLeft end
    if CharacterMarkDB.showRight == nil then CharacterMarkDB.showRight = defaults.showRight end
    if not CharacterMarkDB.topGap then CharacterMarkDB.topGap = defaults.topGap end
    if not CharacterMarkDB.bottomGap then CharacterMarkDB.bottomGap = defaults.bottomGap end
    if not CharacterMarkDB.leftGap then CharacterMarkDB.leftGap = defaults.leftGap end
    if not CharacterMarkDB.rightGap then CharacterMarkDB.rightGap = defaults.rightGap end

    if not ShouldShowCharacterMark() then
        HideLine(topLine)
        HideLine(bottomLine)
        HideLine(leftLine)
        HideLine(rightLine)
        CharacterMarkContainer:EnableMouse(false)
        return
    end

    local topSize = CharacterMarkDB.topSize
    local bottomSize = CharacterMarkDB.bottomSize
    local leftSize = CharacterMarkDB.leftSize
    local rightSize = CharacterMarkDB.rightSize
    local thickness = CharacterMarkDB.thickness
    local borderEnabled = CharacterMarkDB.border
    local borderSize = CharacterMarkDB.borderSize
    local topGap = CharacterMarkDB.topGap
    local bottomGap = CharacterMarkDB.bottomGap
    local leftGap = CharacterMarkDB.leftGap
    local rightGap = CharacterMarkDB.rightGap
    local color = CharacterMarkDB.color
    local borderColor = CharacterMarkDB.borderColor

    -- Container Position update
    CharacterMarkContainer:ClearAllPoints()
    CharacterMarkContainer:SetPoint("CENTER", UIParent, "CENTER", CharacterMarkDB.offsetX, CharacterMarkDB.offsetY)

    -- TOP LINE (vertical, going up)
    if CharacterMarkDB.showTop then
        topLine.texture:ClearAllPoints()
        topLine.texture:SetSize(thickness * 2, topSize)
        topLine.texture:SetPoint("BOTTOM", CharacterMarkContainer, "CENTER", 0, topGap)
        topLine.texture:SetVertexColor(color.r, color.g, color.b, color.a)
        topLine.texture:Show()

        if borderEnabled then
            SetLineBorderColor(topLine, borderColor.r, borderColor.g, borderColor.b, borderColor.a)
            -- Left side border
            topLine.sideBorder1:ClearAllPoints()
            topLine.sideBorder1:SetSize(borderSize, topSize)
            topLine.sideBorder1:SetPoint("RIGHT", topLine.texture, "LEFT", 0, 0)
            topLine.sideBorder1:Show()
            -- Right side border
            topLine.sideBorder2:ClearAllPoints()
            topLine.sideBorder2:SetSize(borderSize, topSize)
            topLine.sideBorder2:SetPoint("LEFT", topLine.texture, "RIGHT", 0, 0)
            topLine.sideBorder2:Show()
            -- Inner tip border (near center)
            topLine.innerTipBorder:ClearAllPoints()
            topLine.innerTipBorder:SetSize(thickness * 2 + borderSize * 2, borderSize)
            topLine.innerTipBorder:SetPoint("TOP", topLine.texture, "BOTTOM", 0, 0)
            topLine.innerTipBorder:Show()
            -- Outer tip border (at top end)
            topLine.outerTipBorder:ClearAllPoints()
            topLine.outerTipBorder:SetSize(thickness * 2 + borderSize * 2, borderSize)
            topLine.outerTipBorder:SetPoint("BOTTOM", topLine.texture, "TOP", 0, 0)
            topLine.outerTipBorder:Show()
        else
            topLine.sideBorder1:Hide()
            topLine.sideBorder2:Hide()
            topLine.innerTipBorder:Hide()
            topLine.outerTipBorder:Hide()
        end
    else
        HideLine(topLine)
    end

    -- BOTTOM LINE (vertical, going down)
    if CharacterMarkDB.showBottom then
        bottomLine.texture:ClearAllPoints()
        bottomLine.texture:SetSize(thickness * 2, bottomSize)
        bottomLine.texture:SetPoint("TOP", CharacterMarkContainer, "CENTER", 0, -bottomGap)
        bottomLine.texture:SetVertexColor(color.r, color.g, color.b, color.a)
        bottomLine.texture:Show()

        if borderEnabled then
            SetLineBorderColor(bottomLine, borderColor.r, borderColor.g, borderColor.b, borderColor.a)
            -- Left side border
            bottomLine.sideBorder1:ClearAllPoints()
            bottomLine.sideBorder1:SetSize(borderSize, bottomSize)
            bottomLine.sideBorder1:SetPoint("RIGHT", bottomLine.texture, "LEFT", 0, 0)
            bottomLine.sideBorder1:Show()
            -- Right side border
            bottomLine.sideBorder2:ClearAllPoints()
            bottomLine.sideBorder2:SetSize(borderSize, bottomSize)
            bottomLine.sideBorder2:SetPoint("LEFT", bottomLine.texture, "RIGHT", 0, 0)
            bottomLine.sideBorder2:Show()
            -- Inner tip border (near center)
            bottomLine.innerTipBorder:ClearAllPoints()
            bottomLine.innerTipBorder:SetSize(thickness * 2 + borderSize * 2, borderSize)
            bottomLine.innerTipBorder:SetPoint("BOTTOM", bottomLine.texture, "TOP", 0, 0)
            bottomLine.innerTipBorder:Show()
            -- Outer tip border (at bottom end)
            bottomLine.outerTipBorder:ClearAllPoints()
            bottomLine.outerTipBorder:SetSize(thickness * 2 + borderSize * 2, borderSize)
            bottomLine.outerTipBorder:SetPoint("TOP", bottomLine.texture, "BOTTOM", 0, 0)
            bottomLine.outerTipBorder:Show()
        else
            bottomLine.sideBorder1:Hide()
            bottomLine.sideBorder2:Hide()
            bottomLine.innerTipBorder:Hide()
            bottomLine.outerTipBorder:Hide()
        end
    else
        HideLine(bottomLine)
    end

    -- LEFT LINE (horizontal, going left)
    if CharacterMarkDB.showLeft then
        leftLine.texture:ClearAllPoints()
        leftLine.texture:SetSize(leftSize, thickness * 2)
        leftLine.texture:SetPoint("RIGHT", CharacterMarkContainer, "CENTER", -leftGap, 0)
        leftLine.texture:SetVertexColor(color.r, color.g, color.b, color.a)
        leftLine.texture:Show()

        if borderEnabled then
            SetLineBorderColor(leftLine, borderColor.r, borderColor.g, borderColor.b, borderColor.a)
            -- Top side border
            leftLine.sideBorder1:ClearAllPoints()
            leftLine.sideBorder1:SetSize(leftSize, borderSize)
            leftLine.sideBorder1:SetPoint("BOTTOM", leftLine.texture, "TOP", 0, 0)
            leftLine.sideBorder1:Show()
            -- Bottom side border
            leftLine.sideBorder2:ClearAllPoints()
            leftLine.sideBorder2:SetSize(leftSize, borderSize)
            leftLine.sideBorder2:SetPoint("TOP", leftLine.texture, "BOTTOM", 0, 0)
            leftLine.sideBorder2:Show()
            -- Inner tip border (near center)
            leftLine.innerTipBorder:ClearAllPoints()
            leftLine.innerTipBorder:SetSize(borderSize, thickness * 2 + borderSize * 2)
            leftLine.innerTipBorder:SetPoint("LEFT", leftLine.texture, "RIGHT", 0, 0)
            leftLine.innerTipBorder:Show()
            -- Outer tip border (at left end)
            leftLine.outerTipBorder:ClearAllPoints()
            leftLine.outerTipBorder:SetSize(borderSize, thickness * 2 + borderSize * 2)
            leftLine.outerTipBorder:SetPoint("RIGHT", leftLine.texture, "LEFT", 0, 0)
            leftLine.outerTipBorder:Show()
        else
            leftLine.sideBorder1:Hide()
            leftLine.sideBorder2:Hide()
            leftLine.innerTipBorder:Hide()
            leftLine.outerTipBorder:Hide()
        end
    else
        HideLine(leftLine)
    end

    -- RIGHT LINE (horizontal, going right)
    if CharacterMarkDB.showRight then
        rightLine.texture:ClearAllPoints()
        rightLine.texture:SetSize(rightSize, thickness * 2)
        rightLine.texture:SetPoint("LEFT", CharacterMarkContainer, "CENTER", rightGap, 0)
        rightLine.texture:SetVertexColor(color.r, color.g, color.b, color.a)
        rightLine.texture:Show()

        if borderEnabled then
            SetLineBorderColor(rightLine, borderColor.r, borderColor.g, borderColor.b, borderColor.a)
            -- Top side border
            rightLine.sideBorder1:ClearAllPoints()
            rightLine.sideBorder1:SetSize(rightSize, borderSize)
            rightLine.sideBorder1:SetPoint("BOTTOM", rightLine.texture, "TOP", 0, 0)
            rightLine.sideBorder1:Show()
            -- Bottom side border
            rightLine.sideBorder2:ClearAllPoints()
            rightLine.sideBorder2:SetSize(rightSize, borderSize)
            rightLine.sideBorder2:SetPoint("TOP", rightLine.texture, "BOTTOM", 0, 0)
            rightLine.sideBorder2:Show()
            -- Inner tip border (near center)
            rightLine.innerTipBorder:ClearAllPoints()
            rightLine.innerTipBorder:SetSize(borderSize, thickness * 2 + borderSize * 2)
            rightLine.innerTipBorder:SetPoint("RIGHT", rightLine.texture, "LEFT", 0, 0)
            rightLine.innerTipBorder:Show()
            -- Outer tip border (at right end)
            rightLine.outerTipBorder:ClearAllPoints()
            rightLine.outerTipBorder:SetSize(borderSize, thickness * 2 + borderSize * 2)
            rightLine.outerTipBorder:SetPoint("LEFT", rightLine.texture, "RIGHT", 0, 0)
            rightLine.outerTipBorder:Show()
        else
            rightLine.sideBorder1:Hide()
            rightLine.sideBorder2:Hide()
            rightLine.innerTipBorder:Hide()
            rightLine.outerTipBorder:Hide()
        end
    else
        HideLine(rightLine)
    end
end

-- Initialization
CharacterMark:RegisterEvent("PLAYER_LOGIN")
CharacterMark:RegisterEvent("ADDON_LOADED")
CharacterMark:RegisterEvent("DISPLAY_SIZE_CHANGED")
CharacterMark:RegisterEvent("PLAYER_REGEN_DISABLED") -- Entering combat
CharacterMark:RegisterEvent("PLAYER_REGEN_ENABLED")  -- Leaving combat
CharacterMark:RegisterEvent("PLAYER_ENTERING_WORLD") -- Entering/leaving instance
CharacterMark:RegisterEvent("GROUP_ROSTER_UPDATE")   -- Group changes

-- Create configuration window
local configFrame = nil

-- Helper function to create collapsible section header
local function CreateCollapsibleSection(parent, title, yOffset, contentHeight)
    local section = {}

    -- Header button
    section.header = CreateFrame("Button", nil, parent)
    section.header:SetSize(380, 24)
    section.header:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, yOffset)

    -- Header background
    local headerBg = section.header:CreateTexture(nil, "BACKGROUND")
    headerBg:SetAllPoints()
    headerBg:SetColorTexture(0.2, 0.2, 0.2, 0.8)

    -- Arrow indicator
    section.arrow = section.header:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    section.arrow:SetPoint("LEFT", section.header, "LEFT", 8, 0)
    section.arrow:SetText("[-]")

    -- Title text
    section.title = section.header:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    section.title:SetPoint("LEFT", section.arrow, "RIGHT", 8, 0)
    section.title:SetText(title)
    section.title:SetTextColor(1, 0.82, 0)

    -- Content frame
    section.content = CreateFrame("Frame", nil, parent)
    section.content:SetSize(380, contentHeight)
    section.content:SetPoint("TOPLEFT", section.header, "BOTTOMLEFT", 0, -2)

    -- Content background
    local contentBg = section.content:CreateTexture(nil, "BACKGROUND")
    contentBg:SetAllPoints()
    contentBg:SetColorTexture(0.1, 0.1, 0.1, 0.5)

    section.expanded = true
    section.contentHeight = contentHeight

    section.header:SetScript("OnClick", function()
        section.expanded = not section.expanded
        if section.expanded then
            section.arrow:SetText("[-]")
            section.content:Show()
        else
            section.arrow:SetText("[+]")
            section.content:Hide()
        end
        -- Trigger layout update
        if parent.UpdateLayout then
            parent:UpdateLayout()
        end
    end)

    section.header:SetScript("OnEnter", function(self)
        headerBg:SetColorTexture(0.3, 0.3, 0.3, 0.8)
    end)

    section.header:SetScript("OnLeave", function(self)
        headerBg:SetColorTexture(0.2, 0.2, 0.2, 0.8)
    end)

    -- Get total height (header + content if expanded)
    section.GetHeight = function()
        if section.expanded then
            return 24 + 2 + section.contentHeight
        else
            return 24
        end
    end

    return section
end

-- Helper to create a compact slider
local function CreateCompactSlider(parent, name, label, min, max, default, width, onValueChanged)
    local container = CreateFrame("Frame", nil, parent)
    container:SetSize(width or 170, 40)

    local slider = CreateFrame("Slider", name, container, "OptionsSliderTemplate")
    slider:SetPoint("TOPLEFT", container, "TOPLEFT", 0, -15)
    slider:SetSize((width or 170) - 10, 17)
    slider:SetMinMaxValues(min, max)
    slider:SetValue(default)
    slider:SetValueStep(1)
    slider:SetObeyStepOnDrag(true)

    _G[name .. "Low"]:SetText(tostring(min))
    _G[name .. "High"]:SetText(tostring(max))
    _G[name .. "Text"]:SetText(label .. ": " .. default)

    slider:SetScript("OnValueChanged", function(self, value)
        value = math.floor(value)
        _G[name .. "Text"]:SetText(label .. ": " .. value)
        if onValueChanged then
            onValueChanged(value)
        end
    end)

    container.slider = slider
    return container
end

-- Helper to create a vertical slider with horizontal label and solid border
local function CreateVerticalSlider(parent, name, label, min, max, default, height, onValueChanged)
    local container = CreateFrame("Frame", nil, parent)
    container:SetSize(50, height or 100)

    -- Label at top (horizontal)
    local lbl = container:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    lbl:SetPoint("TOP", container, "TOP", 0, 0)
    lbl:SetText(label)

    -- Value display
    local valueText = container:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    valueText:SetPoint("TOP", lbl, "BOTTOM", 0, -2)
    valueText:SetText(tostring(default))

    -- Slider (vertical) - custom without template for solid border
    local slider = CreateFrame("Slider", name, container)
    slider:SetOrientation("VERTICAL")
    slider:SetPoint("TOP", valueText, "BOTTOM", 0, -8)
    slider:SetSize(20, (height or 100) - 50)
    slider:SetMinMaxValues(min, max)
    slider:SetValue(max - default + min) -- Invert for vertical
    slider:SetValueStep(1)
    slider:SetObeyStepOnDrag(true)

    -- Solid background
    local bg = slider:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(0.15, 0.15, 0.15, 0.8)

    -- Solid border
    local border = CreateFrame("Frame", nil, slider, "BackdropTemplate")
    border:SetAllPoints()
    border:SetBackdrop({
        edgeFile = "Interface\\Buttons\\WHITE8X8",
        edgeSize = 1,
    })
    border:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)

    -- Thumb texture
    local thumb = slider:CreateTexture(nil, "ARTWORK")
    thumb:SetSize(20, 10)
    thumb:SetColorTexture(0.6, 0.6, 0.6, 1)
    slider:SetThumbTexture(thumb)

    slider:SetScript("OnValueChanged", function(self, value)
        local actualValue = math.floor(max - value + min) -- Invert back
        valueText:SetText(tostring(actualValue))
        if onValueChanged then
            onValueChanged(actualValue)
        end
    end)

    -- Enable mouse wheel
    slider:EnableMouseWheel(true)
    slider:SetScript("OnMouseWheel", function(self, delta)
        local val = self:GetValue()
        self:SetValue(val - delta) -- Inverted because vertical is inverted
    end)

    container.slider = slider
    container.SetValue = function(self, val)
        slider:SetValue(max - val + min)
        valueText:SetText(tostring(val))
    end
    return container
end

-- Helper to create an edit box with +/- buttons
local function CreateValueEditBox(parent, name, label, min, max, default, onValueChanged)
    local container = CreateFrame("Frame", nil, parent)
    container:SetSize(240, 24)

    -- Label
    local lbl = container:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    lbl:SetPoint("LEFT", container, "LEFT", 0, 0)
    lbl:SetText(label)
    lbl:SetWidth(60)
    lbl:SetJustifyH("LEFT")

    -- -10 button
    local btnM10 = CreateFrame("Button", nil, container, "UIPanelButtonTemplate")
    btnM10:SetSize(32, 22)
    btnM10:SetPoint("LEFT", lbl, "RIGHT", 2, 0)
    btnM10:SetText("-10")
    btnM10:GetFontString():SetFont(btnM10:GetFontString():GetFont(), 10)

    -- -1 button
    local btnM1 = CreateFrame("Button", nil, container, "UIPanelButtonTemplate")
    btnM1:SetSize(28, 22)
    btnM1:SetPoint("LEFT", btnM10, "RIGHT", 1, 0)
    btnM1:SetText("-1")
    btnM1:GetFontString():SetFont(btnM1:GetFontString():GetFont(), 10)

    -- Edit box
    local editBox = CreateFrame("EditBox", name, container, "InputBoxTemplate")
    editBox:SetSize(40, 22)
    editBox:SetPoint("LEFT", btnM1, "RIGHT", 4, 0)
    editBox:SetAutoFocus(false)
    editBox:SetNumeric(false)
    editBox:SetMaxLetters(5)
    editBox:SetText(tostring(default))
    editBox:SetJustifyH("CENTER")

    -- +1 button
    local btnP1 = CreateFrame("Button", nil, container, "UIPanelButtonTemplate")
    btnP1:SetSize(28, 22)
    btnP1:SetPoint("LEFT", editBox, "RIGHT", 4, 0)
    btnP1:SetText("+1")
    btnP1:GetFontString():SetFont(btnP1:GetFontString():GetFont(), 10)

    -- +10 button
    local btnP10 = CreateFrame("Button", nil, container, "UIPanelButtonTemplate")
    btnP10:SetSize(32, 22)
    btnP10:SetPoint("LEFT", btnP1, "RIGHT", 1, 0)
    btnP10:SetText("+10")
    btnP10:GetFontString():SetFont(btnP10:GetFontString():GetFont(), 10)

    local function updateValue(delta)
        local val = tonumber(editBox:GetText()) or default
        val = math.max(min, math.min(max, val + delta))
        editBox:SetText(tostring(val))
        if onValueChanged then onValueChanged(val) end
    end

    btnM10:SetScript("OnClick", function() updateValue(-10) end)
    btnM1:SetScript("OnClick", function() updateValue(-1) end)
    btnP1:SetScript("OnClick", function() updateValue(1) end)
    btnP10:SetScript("OnClick", function() updateValue(10) end)

    editBox:SetScript("OnEnterPressed", function(self)
        local val = tonumber(self:GetText()) or default
        val = math.max(min, math.min(max, val))
        self:SetText(tostring(val))
        self:ClearFocus()
        if onValueChanged then onValueChanged(val) end
    end)

    editBox:SetScript("OnEscapePressed", function(self)
        self:ClearFocus()
    end)

    container.editBox = editBox
    container.btnP10 = btnP10
    container.label = lbl
    container.SetValue = function(self, val)
        editBox:SetText(tostring(val))
    end
    container.SetLabel = function(self, text)
        lbl:SetText(text)
    end
    return container
end

-- Helper to create an offset edit box with +/- buttons
local function CreateOffsetEditBox(parent, name, label, min, max, default, onValueChanged)
    local container = CreateFrame("Frame", nil, parent)
    container:SetSize(240, 24)

    -- Label
    local lbl = container:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    lbl:SetPoint("LEFT", container, "LEFT", 0, 0)
    lbl:SetText(label .. ":")
    lbl:SetWidth(60)

    -- -10 button
    local btnM10 = CreateFrame("Button", nil, container, "UIPanelButtonTemplate")
    btnM10:SetSize(32, 22)
    btnM10:SetPoint("LEFT", lbl, "RIGHT", 2, 0)
    btnM10:SetText("-10")
    btnM10:GetFontString():SetFont(btnM10:GetFontString():GetFont(), 10)

    -- -1 button
    local btnM1 = CreateFrame("Button", nil, container, "UIPanelButtonTemplate")
    btnM1:SetSize(28, 22)
    btnM1:SetPoint("LEFT", btnM10, "RIGHT", 1, 0)
    btnM1:SetText("-1")
    btnM1:GetFontString():SetFont(btnM1:GetFontString():GetFont(), 10)

    -- Edit box
    local editBox = CreateFrame("EditBox", name, container, "InputBoxTemplate")
    editBox:SetSize(45, 22)
    editBox:SetPoint("LEFT", btnM1, "RIGHT", 4, 0)
    editBox:SetAutoFocus(false)
    editBox:SetNumeric(false)
    editBox:SetMaxLetters(5)
    editBox:SetText(tostring(default))
    editBox:SetJustifyH("CENTER")

    -- +1 button
    local btnP1 = CreateFrame("Button", nil, container, "UIPanelButtonTemplate")
    btnP1:SetSize(28, 22)
    btnP1:SetPoint("LEFT", editBox, "RIGHT", 4, 0)
    btnP1:SetText("+1")
    btnP1:GetFontString():SetFont(btnP1:GetFontString():GetFont(), 10)

    -- +10 button
    local btnP10 = CreateFrame("Button", nil, container, "UIPanelButtonTemplate")
    btnP10:SetSize(32, 22)
    btnP10:SetPoint("LEFT", btnP1, "RIGHT", 1, 0)
    btnP10:SetText("+10")
    btnP10:GetFontString():SetFont(btnP10:GetFontString():GetFont(), 10)

    local function updateValue(delta)
        local val = tonumber(editBox:GetText()) or default
        val = math.max(min, math.min(max, val + delta))
        editBox:SetText(tostring(val))
        if onValueChanged then onValueChanged(val) end
    end

    btnM10:SetScript("OnClick", function() updateValue(-10) end)
    btnM1:SetScript("OnClick", function() updateValue(-1) end)
    btnP1:SetScript("OnClick", function() updateValue(1) end)
    btnP10:SetScript("OnClick", function() updateValue(10) end)

    editBox:SetScript("OnEnterPressed", function(self)
        local val = tonumber(self:GetText()) or default
        val = math.max(min, math.min(max, val))
        self:SetText(tostring(val))
        self:ClearFocus()
        if onValueChanged then onValueChanged(val) end
    end)

    editBox:SetScript("OnEscapePressed", function(self)
        self:ClearFocus()
    end)

    container.editBox = editBox
    container.SetValue = function(self, val)
        editBox:SetText(tostring(val))
    end
    return container
end

local function CreateConfigFrame()
    if configFrame then
        return configFrame
    end

    local frame = CreateFrame("Frame", "CharacterMarkConfigFrame", UIParent, "BasicFrameTemplateWithInset")
    frame:SetSize(420, 500)
    frame:SetPoint("CENTER")
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:SetFrameStrata("DIALOG")
    frame:Hide()

    -- Title
    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    frame.title:SetPoint("LEFT", frame.TitleBg, "LEFT", 5, 0)
    frame.title:SetText(L["TITLE"])

    -- Scroll frame setup
    local scrollFrame = CreateFrame("ScrollFrame", "CharacterMarkScrollFrame", frame, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 10, -30)
    scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -30, 10)

    local scrollChild = CreateFrame("Frame", "CharacterMarkScrollChild", scrollFrame)
    scrollChild:SetSize(380, 1) -- Height will be calculated
    scrollFrame:SetScrollChild(scrollChild)

    local sections = {}
    local currentY = -10

    -- ==================== PRESETS SECTION ====================
    local presetsLabel = scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    presetsLabel:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 10, currentY)
    presetsLabel:SetText(L["PRESETS"])
    presetsLabel:SetTextColor(1, 0.82, 0)
    currentY = currentY - 25

    local presetButtons = {}
    local presetData = {
        { name = L["PRESET_CLASSIC"], settings = { showTop = true, showBottom = true, showLeft = true, showRight = true, topGap = 0, bottomGap = 0, leftGap = 0, rightGap = 0, topSize = 20, bottomSize = 20, leftSize = 20, rightSize = 20, thickness = 1, lockVertical = true, lockHorizontal = true, lockVerticalGap = true, lockHorizontalGap = true }},
        { name = L["PRESET_HOLLOW"], settings = { showTop = true, showBottom = true, showLeft = true, showRight = true, topGap = 5, bottomGap = 5, leftGap = 5, rightGap = 5, topSize = 20, bottomSize = 20, leftSize = 20, rightSize = 20, thickness = 1, lockVertical = true, lockHorizontal = true, lockVerticalGap = true, lockHorizontalGap = true }},
        { name = L["PRESET_TSHAPE"], settings = { showTop = true, showBottom = false, showLeft = true, showRight = true, topGap = 0, bottomGap = 0, leftGap = 0, rightGap = 0, topSize = 20, bottomSize = 20, leftSize = 20, rightSize = 20, thickness = 1, lockVertical = true, lockHorizontal = true, lockVerticalGap = true, lockHorizontalGap = true }},
        { name = L["PRESET_DOT"], settings = { showTop = true, showBottom = true, showLeft = true, showRight = true, topGap = 0, bottomGap = 0, leftGap = 0, rightGap = 0, topSize = 3, bottomSize = 3, leftSize = 3, rightSize = 3, thickness = 2, lockVertical = true, lockHorizontal = true, lockVerticalGap = true, lockHorizontalGap = true }},
    }

    -- Function to refresh all UI controls from CharacterMarkDB
    local function RefreshUIControls()
        -- Size edit boxes
        if _G["CMTopSizeEdit"] then _G["CMTopSizeEdit"]:SetText(tostring(CharacterMarkDB.topSize)) end
        if _G["CMBottomSizeEdit"] then _G["CMBottomSizeEdit"]:SetText(tostring(CharacterMarkDB.bottomSize)) end
        if _G["CMLeftSizeEdit"] then _G["CMLeftSizeEdit"]:SetText(tostring(CharacterMarkDB.leftSize)) end
        if _G["CMRightSizeEdit"] then _G["CMRightSizeEdit"]:SetText(tostring(CharacterMarkDB.rightSize)) end
        -- Thickness and border size sliders (vertical)
        if _G["CMThicknessSliderContainer"] then _G["CMThicknessSliderContainer"]:SetValue(CharacterMarkDB.thickness) end
        if _G["CMBorderSizeSliderContainer"] then _G["CMBorderSizeSliderContainer"]:SetValue(CharacterMarkDB.borderSize) end
        -- Gap edit boxes
        if _G["CMTopGapEdit"] then _G["CMTopGapEdit"]:SetText(tostring(CharacterMarkDB.topGap)) end
        if _G["CMBottomGapEdit"] then _G["CMBottomGapEdit"]:SetText(tostring(CharacterMarkDB.bottomGap)) end
        if _G["CMLeftGapEdit"] then _G["CMLeftGapEdit"]:SetText(tostring(CharacterMarkDB.leftGap)) end
        if _G["CMRightGapEdit"] then _G["CMRightGapEdit"]:SetText(tostring(CharacterMarkDB.rightGap)) end
        -- Offset edit boxes
        if _G["CMXOffsetEdit"] then _G["CMXOffsetEdit"]:SetText(tostring(CharacterMarkDB.offsetX)) end
        if _G["CMYOffsetEdit"] then _G["CMYOffsetEdit"]:SetText(tostring(CharacterMarkDB.offsetY)) end
        -- Line checkboxes
        if _G["CMLine1Check"] then _G["CMLine1Check"]:SetChecked(CharacterMarkDB.showTop) end
        if _G["CMLine2Check"] then _G["CMLine2Check"]:SetChecked(CharacterMarkDB.showBottom) end
        if _G["CMLine3Check"] then _G["CMLine3Check"]:SetChecked(CharacterMarkDB.showLeft) end
        if _G["CMLine4Check"] then _G["CMLine4Check"]:SetChecked(CharacterMarkDB.showRight) end
        -- Lock checkboxes
        if _G["CMLockVerticalCheck"] then _G["CMLockVerticalCheck"]:SetChecked(CharacterMarkDB.lockVertical) end
        if _G["CMLockHorizontalCheck"] then _G["CMLockHorizontalCheck"]:SetChecked(CharacterMarkDB.lockHorizontal) end
        if _G["CMLockVerticalGapCheck"] then _G["CMLockVerticalGapCheck"]:SetChecked(CharacterMarkDB.lockVerticalGap) end
        if _G["CMLockHorizontalGapCheck"] then _G["CMLockHorizontalGapCheck"]:SetChecked(CharacterMarkDB.lockHorizontalGap) end
        -- Update visibility based on lock state
        if frame.UpdateLengthVisibility then frame.UpdateLengthVisibility() end
        if frame.UpdateGapVisibility then frame.UpdateGapVisibility() end
    end

    for i, preset in ipairs(presetData) do
        local btn = CreateFrame("Button", "CharacterMarkPreset" .. i, scrollChild, "UIPanelButtonTemplate")
        btn:SetSize(85, 22)
        btn:SetText(preset.name)
        if i == 1 then
            btn:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 10, currentY)
        else
            btn:SetPoint("LEFT", presetButtons[i-1], "RIGHT", 5, 0)
        end
        btn:SetScript("OnClick", function()
            for k, v in pairs(preset.settings) do
                CharacterMarkDB[k] = v
            end
            UpdateCharacterMark()
            RefreshUIControls()
        end)
        presetButtons[i] = btn
    end
    currentY = currentY - 35

    -- ==================== GENERAL SECTION (Colors, Border, Position, Visibility) ====================
    local appearanceSection = CreateCollapsibleSection(scrollChild, L["APPEARANCE"], currentY, 195)
    table.insert(sections, appearanceSection)

    -- Vertical sliders on the right side
    local thickSlider = CreateVerticalSlider(appearanceSection.content, "CMThicknessSlider", L["THICKNESS"], 1, 25, CharacterMarkDB.thickness, 170, function(v)
        CharacterMarkDB.thickness = v
        UpdateCharacterMark()
    end)
    thickSlider:SetPoint("TOPRIGHT", appearanceSection.content, "TOPRIGHT", -70, -5)
    _G["CMThicknessSliderContainer"] = thickSlider

    local borderSizeSlider = CreateVerticalSlider(appearanceSection.content, "CMBorderSizeSlider", L["BORDER_SIZE"], 1, 10, CharacterMarkDB.borderSize, 170, function(v)
        CharacterMarkDB.borderSize = v
        UpdateCharacterMark()
    end)
    borderSizeSlider:SetPoint("TOPRIGHT", appearanceSection.content, "TOPRIGHT", -10, -5)
    _G["CMBorderSizeSliderContainer"] = borderSizeSlider

    -- Enable checkbox
    local enableCheckbox = CreateFrame("CheckButton", "CharacterMarkEnableCheckbox", appearanceSection.content, "InterfaceOptionsCheckButtonTemplate")
    enableCheckbox:SetPoint("TOPLEFT", appearanceSection.content, "TOPLEFT", 10, -10)
    enableCheckbox:SetChecked(CharacterMarkDB.enabled)
    _G[enableCheckbox:GetName() .. "Text"]:SetText(L["ENABLE"])
    enableCheckbox:SetScript("OnClick", function(self)
        CharacterMarkDB.enabled = self:GetChecked()
        UpdateCharacterMark()
    end)

    -- Visibility dropdown (below enable)
    local visLabel = appearanceSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    visLabel:SetPoint("TOPLEFT", enableCheckbox, "BOTTOMLEFT", 0, -8)
    visLabel:SetText(L["VISIBILITY"] .. ":")

    local visDropdown = CreateFrame("Frame", "CharacterMarkVisDropdown", appearanceSection.content, "UIDropDownMenuTemplate")
    visDropdown:SetPoint("LEFT", visLabel, "RIGHT", -5, -2)

    local visOptions = {
        { value = "always", text = L["ALWAYS"] },
        { value = "combat", text = L["IN_COMBAT"] },
        { value = "instance", text = L["IN_INSTANCE"] },
        { value = "group", text = L["IN_GROUP"] },
        { value = "never", text = L["NEVER"] }
    }

    UIDropDownMenu_SetWidth(visDropdown, 100)
    UIDropDownMenu_Initialize(visDropdown, function(self, level)
        for _, opt in ipairs(visOptions) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = opt.text
            info.value = opt.value
            info.func = function()
                CharacterMarkDB.visibility = opt.value
                UIDropDownMenu_SetText(visDropdown, opt.text)
                UpdateCharacterMark()
            end
            info.checked = (CharacterMarkDB.visibility == opt.value)
            UIDropDownMenu_AddButton(info)
        end
    end)

    for _, opt in ipairs(visOptions) do
        if opt.value == (CharacterMarkDB.visibility or "always") then
            UIDropDownMenu_SetText(visDropdown, opt.text)
            break
        end
    end

    -- Color label and picker
    local colorLabel = appearanceSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    colorLabel:SetPoint("TOPLEFT", visLabel, "BOTTOMLEFT", 0, -25)
    colorLabel:SetText(L["COLOR"] .. ":")

    local colorButton = CreateFrame("Button", "CMColorButton", appearanceSection.content)
    colorButton:SetPoint("LEFT", colorLabel, "RIGHT", 10, 0)
    colorButton:SetSize(25, 25)

    local colorBg = colorButton:CreateTexture(nil, "BACKGROUND")
    colorBg:SetAllPoints()
    colorBg:SetColorTexture(0.3, 0.3, 0.3, 1)

    local colorTex = colorButton:CreateTexture(nil, "ARTWORK")
    colorTex:SetPoint("TOPLEFT", 2, -2)
    colorTex:SetPoint("BOTTOMRIGHT", -2, 2)
    colorTex:SetColorTexture(CharacterMarkDB.color.r, CharacterMarkDB.color.g, CharacterMarkDB.color.b, 1)

    colorButton:SetScript("OnClick", function()
        local prevR, prevG, prevB = CharacterMarkDB.color.r, CharacterMarkDB.color.g, CharacterMarkDB.color.b
        ColorPickerFrame:SetupColorPickerAndShow({
            r = prevR, g = prevG, b = prevB,
            hasOpacity = false,
            swatchFunc = function()
                local r, g, b = ColorPickerFrame:GetColorRGB()
                CharacterMarkDB.color.r, CharacterMarkDB.color.g, CharacterMarkDB.color.b = r, g, b
                colorTex:SetColorTexture(r, g, b, 1)
                UpdateCharacterMark()
            end,
            cancelFunc = function()
                CharacterMarkDB.color.r, CharacterMarkDB.color.g, CharacterMarkDB.color.b = prevR, prevG, prevB
                colorTex:SetColorTexture(prevR, prevG, prevB, 1)
                UpdateCharacterMark()
            end,
        })
    end)

    -- Border color label and picker (under main color with more distance)
    local borderColorLabel = appearanceSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    borderColorLabel:SetPoint("TOPLEFT", colorLabel, "BOTTOMLEFT", 0, -15)
    borderColorLabel:SetText(L["BORDER_COLOR"] .. ":")

    local borderColorButton = CreateFrame("Button", "CMBorderColorButton", appearanceSection.content)
    borderColorButton:SetPoint("LEFT", borderColorLabel, "RIGHT", 10, 0)
    borderColorButton:SetSize(25, 25)

    local borderColorBg = borderColorButton:CreateTexture(nil, "BACKGROUND")
    borderColorBg:SetAllPoints()
    borderColorBg:SetColorTexture(0.3, 0.3, 0.3, 1)

    local borderColorTex = borderColorButton:CreateTexture(nil, "ARTWORK")
    borderColorTex:SetPoint("TOPLEFT", 2, -2)
    borderColorTex:SetPoint("BOTTOMRIGHT", -2, 2)
    borderColorTex:SetColorTexture(CharacterMarkDB.borderColor.r, CharacterMarkDB.borderColor.g, CharacterMarkDB.borderColor.b, 1)

    borderColorButton:SetScript("OnClick", function()
        local prevR, prevG, prevB = CharacterMarkDB.borderColor.r, CharacterMarkDB.borderColor.g, CharacterMarkDB.borderColor.b
        ColorPickerFrame:SetupColorPickerAndShow({
            r = prevR, g = prevG, b = prevB,
            hasOpacity = false,
            swatchFunc = function()
                local r, g, b = ColorPickerFrame:GetColorRGB()
                CharacterMarkDB.borderColor.r, CharacterMarkDB.borderColor.g, CharacterMarkDB.borderColor.b = r, g, b
                borderColorTex:SetColorTexture(r, g, b, 1)
                UpdateCharacterMark()
            end,
            cancelFunc = function()
                CharacterMarkDB.borderColor.r, CharacterMarkDB.borderColor.g, CharacterMarkDB.borderColor.b = prevR, prevG, prevB
                borderColorTex:SetColorTexture(prevR, prevG, prevB, 1)
                UpdateCharacterMark()
            end,
        })
    end)

    -- Enable border checkbox (next to border color)
    local borderCheck = CreateFrame("CheckButton", "CMBorderCheck", appearanceSection.content, "InterfaceOptionsCheckButtonTemplate")
    borderCheck:SetPoint("LEFT", borderColorButton, "RIGHT", 10, 0)
    borderCheck:SetChecked(CharacterMarkDB.border)
    _G[borderCheck:GetName() .. "Text"]:SetText(L["BORDER"])
    borderCheck:SetScript("OnClick", function(self)
        CharacterMarkDB.border = self:GetChecked()
        UpdateCharacterMark()
    end)

    -- X Offset edit box
    local xOffBox = CreateOffsetEditBox(appearanceSection.content, "CMXOffsetEdit", L["X_OFFSET"], -500, 500, CharacterMarkDB.offsetX, function(v)
        CharacterMarkDB.offsetX = v
        UpdateCharacterMark()
    end)
    xOffBox:SetPoint("TOPLEFT", borderColorLabel, "BOTTOMLEFT", 0, -20)

    -- Y Offset edit box (below X)
    local yOffBox = CreateOffsetEditBox(appearanceSection.content, "CMYOffsetEdit", L["Y_OFFSET"], -500, 500, CharacterMarkDB.offsetY, function(v)
        CharacterMarkDB.offsetY = v
        UpdateCharacterMark()
    end)
    yOffBox:SetPoint("TOPLEFT", xOffBox, "BOTTOMLEFT", 0, -5)

    -- Reset position button
    local resetBtn = CreateFrame("Button", "CMResetButton", appearanceSection.content, "UIPanelButtonTemplate")
    resetBtn:SetSize(80, 22)
    resetBtn:SetPoint("LEFT", yOffBox, "RIGHT", 10, 0)
    resetBtn:SetText(L["RESET_POSITION"])
    resetBtn:SetScript("OnClick", function()
        CharacterMarkDB.offsetX = 0
        CharacterMarkDB.offsetY = 0
        if _G["CMXOffsetEdit"] then _G["CMXOffsetEdit"]:SetText("0") end
        if _G["CMYOffsetEdit"] then _G["CMYOffsetEdit"]:SetText("0") end
        UpdateCharacterMark()
    end)

    currentY = currentY - appearanceSection.GetHeight() - 5

    -- ==================== SHAPE SECTION (Size, Lines, Gaps) ====================
    local shapeSection = CreateCollapsibleSection(scrollChild, L["SIZE_THICKNESS"], currentY, 280)
    table.insert(sections, shapeSection)

    -- Line checkboxes label
    local linesLabel = shapeSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    linesLabel:SetPoint("TOPLEFT", shapeSection.content, "TOPLEFT", 10, -8)
    linesLabel:SetText(L["LINES"] .. ":")

    -- Line checkboxes in a row
    local lineChecks = {}
    local lineData = {
        { key = "showTop", label = L["TOP_LINE"] },
        { key = "showBottom", label = L["BOTTOM_LINE"] },
        { key = "showLeft", label = L["LEFT_LINE"] },
        { key = "showRight", label = L["RIGHT_LINE"] },
    }

    for i, data in ipairs(lineData) do
        local cb = CreateFrame("CheckButton", "CMLine" .. i .. "Check", shapeSection.content, "InterfaceOptionsCheckButtonTemplate")
        if i == 1 then
            cb:SetPoint("LEFT", linesLabel, "RIGHT", 10, 0)
        else
            cb:SetPoint("LEFT", lineChecks[i-1], "RIGHT", 50, 0)
        end
        cb:SetChecked(CharacterMarkDB[data.key])
        _G[cb:GetName() .. "Text"]:SetText(data.label)
        cb:SetScript("OnClick", function(self)
            CharacterMarkDB[data.key] = self:GetChecked()
            UpdateCharacterMark()
        end)
        lineChecks[i] = cb
    end

    -- Length section header
    local lengthLabel = shapeSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    lengthLabel:SetPoint("TOPLEFT", linesLabel, "BOTTOMLEFT", 0, -12)
    lengthLabel:SetText("Length:")
    lengthLabel:SetTextColor(0.8, 0.8, 0.8)

    -- Function to update visibility based on lock state
    local function UpdateLengthVisibility()
        local vertLocked = CharacterMarkDB.lockVertical
        local horizLocked = CharacterMarkDB.lockHorizontal
        -- Update labels
        if _G["CMTopSizeEditBox"] then
            _G["CMTopSizeEditBox"]:SetLabel(vertLocked and L["VERTICAL"] or L["TOP_LINE"])
        end
        if _G["CMLeftSizeEditBox"] then
            _G["CMLeftSizeEditBox"]:SetLabel(horizLocked and L["HORIZONTAL"] or L["LEFT_LINE"])
        end
        -- Show/hide bottom and right based on lock
        if _G["CMBottomSizeEditContainer"] then
            if vertLocked then _G["CMBottomSizeEditContainer"]:Hide() else _G["CMBottomSizeEditContainer"]:Show() end
        end
        if _G["CMRightSizeEditContainer"] then
            if horizLocked then _G["CMRightSizeEditContainer"]:Hide() else _G["CMRightSizeEditContainer"]:Show() end
        end
    end

    local function UpdateGapVisibility()
        local vertLocked = CharacterMarkDB.lockVerticalGap
        local horizLocked = CharacterMarkDB.lockHorizontalGap
        -- Update labels
        if _G["CMTopGapEditBox"] then
            _G["CMTopGapEditBox"]:SetLabel(vertLocked and L["VERTICAL"] or L["TOP_LINE"])
        end
        if _G["CMLeftGapEditBox"] then
            _G["CMLeftGapEditBox"]:SetLabel(horizLocked and L["HORIZONTAL"] or L["LEFT_LINE"])
        end
        -- Show/hide bottom and right based on lock
        if _G["CMBottomGapEditContainer"] then
            if vertLocked then _G["CMBottomGapEditContainer"]:Hide() else _G["CMBottomGapEditContainer"]:Show() end
        end
        if _G["CMRightGapEditContainer"] then
            if horizLocked then _G["CMRightGapEditContainer"]:Hide() else _G["CMRightGapEditContainer"]:Show() end
        end
    end

    -- Top/Vertical length
    local topSizeBox = CreateValueEditBox(shapeSection.content, "CMTopSizeEdit", CharacterMarkDB.lockVertical and L["VERTICAL"] or L["TOP_LINE"], 1, 100, CharacterMarkDB.topSize, function(v)
        CharacterMarkDB.topSize = v
        if CharacterMarkDB.lockVertical then
            CharacterMarkDB.bottomSize = v
            if _G["CMBottomSizeEdit"] then _G["CMBottomSizeEdit"]:SetText(tostring(v)) end
        end
        UpdateCharacterMark()
    end)
    topSizeBox:SetPoint("TOPLEFT", lengthLabel, "BOTTOMLEFT", 0, -5)
    _G["CMTopSizeEditBox"] = topSizeBox

    -- Lock vertical with label
    local lockVertCheck = CreateFrame("CheckButton", "CMLockVerticalCheck", shapeSection.content, "UICheckButtonTemplate")
    lockVertCheck:SetPoint("LEFT", topSizeBox.btnP10, "RIGHT", 5, 0)
    lockVertCheck:SetSize(20, 20)
    lockVertCheck:SetChecked(CharacterMarkDB.lockVertical)

    local lockVertLabel = shapeSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    lockVertLabel:SetPoint("LEFT", lockVertCheck, "RIGHT", 2, 0)
    lockVertLabel:SetText(L["LOCK_VERTICAL"])
    lockVertLabel:SetTextColor(0.7, 0.7, 0.7)

    lockVertCheck:SetScript("OnClick", function(self)
        CharacterMarkDB.lockVertical = self:GetChecked()
        if CharacterMarkDB.lockVertical then
            CharacterMarkDB.bottomSize = CharacterMarkDB.topSize
            if _G["CMBottomSizeEdit"] then _G["CMBottomSizeEdit"]:SetText(tostring(CharacterMarkDB.bottomSize)) end
        end
        UpdateLengthVisibility()
        UpdateCharacterMark()
    end)

    -- Bottom length (hidden when locked)
    local bottomSizeBox = CreateValueEditBox(shapeSection.content, "CMBottomSizeEdit", L["BOTTOM_LINE"], 1, 100, CharacterMarkDB.bottomSize, function(v)
        CharacterMarkDB.bottomSize = v
        if CharacterMarkDB.lockVertical then
            CharacterMarkDB.topSize = v
            if _G["CMTopSizeEdit"] then _G["CMTopSizeEdit"]:SetText(tostring(v)) end
        end
        UpdateCharacterMark()
    end)
    bottomSizeBox:SetPoint("TOPLEFT", topSizeBox, "BOTTOMLEFT", 0, -3)
    _G["CMBottomSizeEditContainer"] = bottomSizeBox
    if CharacterMarkDB.lockVertical then bottomSizeBox:Hide() end

    -- Left/Horizontal length
    local leftSizeBox = CreateValueEditBox(shapeSection.content, "CMLeftSizeEdit", CharacterMarkDB.lockHorizontal and L["HORIZONTAL"] or L["LEFT_LINE"], 1, 100, CharacterMarkDB.leftSize, function(v)
        CharacterMarkDB.leftSize = v
        if CharacterMarkDB.lockHorizontal then
            CharacterMarkDB.rightSize = v
            if _G["CMRightSizeEdit"] then _G["CMRightSizeEdit"]:SetText(tostring(v)) end
        end
        UpdateCharacterMark()
    end)
    leftSizeBox:SetPoint("TOPLEFT", bottomSizeBox, "BOTTOMLEFT", 0, -3)
    _G["CMLeftSizeEditBox"] = leftSizeBox

    -- Lock horizontal with label
    local lockHorizCheck = CreateFrame("CheckButton", "CMLockHorizontalCheck", shapeSection.content, "UICheckButtonTemplate")
    lockHorizCheck:SetPoint("LEFT", leftSizeBox.btnP10, "RIGHT", 5, 0)
    lockHorizCheck:SetSize(20, 20)
    lockHorizCheck:SetChecked(CharacterMarkDB.lockHorizontal)

    local lockHorizLabel = shapeSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    lockHorizLabel:SetPoint("LEFT", lockHorizCheck, "RIGHT", 2, 0)
    lockHorizLabel:SetText(L["LOCK_HORIZONTAL"])
    lockHorizLabel:SetTextColor(0.7, 0.7, 0.7)

    lockHorizCheck:SetScript("OnClick", function(self)
        CharacterMarkDB.lockHorizontal = self:GetChecked()
        if CharacterMarkDB.lockHorizontal then
            CharacterMarkDB.rightSize = CharacterMarkDB.leftSize
            if _G["CMRightSizeEdit"] then _G["CMRightSizeEdit"]:SetText(tostring(CharacterMarkDB.rightSize)) end
        end
        UpdateLengthVisibility()
        UpdateCharacterMark()
    end)

    -- Right length (hidden when locked)
    local rightSizeBox = CreateValueEditBox(shapeSection.content, "CMRightSizeEdit", L["RIGHT_LINE"], 1, 100, CharacterMarkDB.rightSize, function(v)
        CharacterMarkDB.rightSize = v
        if CharacterMarkDB.lockHorizontal then
            CharacterMarkDB.leftSize = v
            if _G["CMLeftSizeEdit"] then _G["CMLeftSizeEdit"]:SetText(tostring(v)) end
        end
        UpdateCharacterMark()
    end)
    rightSizeBox:SetPoint("TOPLEFT", leftSizeBox, "BOTTOMLEFT", 0, -3)
    _G["CMRightSizeEditContainer"] = rightSizeBox
    if CharacterMarkDB.lockHorizontal then rightSizeBox:Hide() end

    -- Gap section header
    local gapLabel = shapeSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    gapLabel:SetPoint("TOPLEFT", rightSizeBox, "BOTTOMLEFT", 0, -12)
    gapLabel:SetText("Gap:")
    gapLabel:SetTextColor(0.8, 0.8, 0.8)

    -- Top/Vertical gap
    local topGapBox = CreateValueEditBox(shapeSection.content, "CMTopGapEdit", CharacterMarkDB.lockVerticalGap and L["VERTICAL"] or L["TOP_LINE"], 0, 50, CharacterMarkDB.topGap, function(v)
        CharacterMarkDB.topGap = v
        if CharacterMarkDB.lockVerticalGap then
            CharacterMarkDB.bottomGap = v
            if _G["CMBottomGapEdit"] then _G["CMBottomGapEdit"]:SetText(tostring(v)) end
        end
        UpdateCharacterMark()
    end)
    topGapBox:SetPoint("TOPLEFT", gapLabel, "BOTTOMLEFT", 0, -5)
    _G["CMTopGapEditBox"] = topGapBox

    -- Lock vertical gap with label
    local lockVertGapCheck = CreateFrame("CheckButton", "CMLockVerticalGapCheck", shapeSection.content, "UICheckButtonTemplate")
    lockVertGapCheck:SetPoint("LEFT", topGapBox.btnP10, "RIGHT", 5, 0)
    lockVertGapCheck:SetSize(20, 20)
    lockVertGapCheck:SetChecked(CharacterMarkDB.lockVerticalGap)

    local lockVertGapLabel = shapeSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    lockVertGapLabel:SetPoint("LEFT", lockVertGapCheck, "RIGHT", 2, 0)
    lockVertGapLabel:SetText(L["LOCK_VERTICAL"])
    lockVertGapLabel:SetTextColor(0.7, 0.7, 0.7)

    lockVertGapCheck:SetScript("OnClick", function(self)
        CharacterMarkDB.lockVerticalGap = self:GetChecked()
        if CharacterMarkDB.lockVerticalGap then
            CharacterMarkDB.bottomGap = CharacterMarkDB.topGap
            if _G["CMBottomGapEdit"] then _G["CMBottomGapEdit"]:SetText(tostring(CharacterMarkDB.bottomGap)) end
        end
        UpdateGapVisibility()
        UpdateCharacterMark()
    end)

    -- Bottom gap (hidden when locked)
    local bottomGapBox = CreateValueEditBox(shapeSection.content, "CMBottomGapEdit", L["BOTTOM_LINE"], 0, 50, CharacterMarkDB.bottomGap, function(v)
        CharacterMarkDB.bottomGap = v
        if CharacterMarkDB.lockVerticalGap then
            CharacterMarkDB.topGap = v
            if _G["CMTopGapEdit"] then _G["CMTopGapEdit"]:SetText(tostring(v)) end
        end
        UpdateCharacterMark()
    end)
    bottomGapBox:SetPoint("TOPLEFT", topGapBox, "BOTTOMLEFT", 0, -3)
    _G["CMBottomGapEditContainer"] = bottomGapBox
    if CharacterMarkDB.lockVerticalGap then bottomGapBox:Hide() end

    -- Left/Horizontal gap
    local leftGapBox = CreateValueEditBox(shapeSection.content, "CMLeftGapEdit", CharacterMarkDB.lockHorizontalGap and L["HORIZONTAL"] or L["LEFT_LINE"], 0, 50, CharacterMarkDB.leftGap, function(v)
        CharacterMarkDB.leftGap = v
        if CharacterMarkDB.lockHorizontalGap then
            CharacterMarkDB.rightGap = v
            if _G["CMRightGapEdit"] then _G["CMRightGapEdit"]:SetText(tostring(v)) end
        end
        UpdateCharacterMark()
    end)
    leftGapBox:SetPoint("TOPLEFT", bottomGapBox, "BOTTOMLEFT", 0, -3)
    _G["CMLeftGapEditBox"] = leftGapBox

    -- Lock horizontal gap with label
    local lockHorizGapCheck = CreateFrame("CheckButton", "CMLockHorizontalGapCheck", shapeSection.content, "UICheckButtonTemplate")
    lockHorizGapCheck:SetPoint("LEFT", leftGapBox.btnP10, "RIGHT", 5, 0)
    lockHorizGapCheck:SetSize(20, 20)
    lockHorizGapCheck:SetChecked(CharacterMarkDB.lockHorizontalGap)

    local lockHorizGapLabel = shapeSection.content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    lockHorizGapLabel:SetPoint("LEFT", lockHorizGapCheck, "RIGHT", 2, 0)
    lockHorizGapLabel:SetText(L["LOCK_HORIZONTAL"])
    lockHorizGapLabel:SetTextColor(0.7, 0.7, 0.7)

    lockHorizGapCheck:SetScript("OnClick", function(self)
        CharacterMarkDB.lockHorizontalGap = self:GetChecked()
        if CharacterMarkDB.lockHorizontalGap then
            CharacterMarkDB.rightGap = CharacterMarkDB.leftGap
            if _G["CMRightGapEdit"] then _G["CMRightGapEdit"]:SetText(tostring(CharacterMarkDB.rightGap)) end
        end
        UpdateGapVisibility()
        UpdateCharacterMark()
    end)

    -- Right gap (hidden when locked)
    local rightGapBox = CreateValueEditBox(shapeSection.content, "CMRightGapEdit", L["RIGHT_LINE"], 0, 50, CharacterMarkDB.rightGap, function(v)
        CharacterMarkDB.rightGap = v
        if CharacterMarkDB.lockHorizontalGap then
            CharacterMarkDB.leftGap = v
            if _G["CMLeftGapEdit"] then _G["CMLeftGapEdit"]:SetText(tostring(v)) end
        end
        UpdateCharacterMark()
    end)
    rightGapBox:SetPoint("TOPLEFT", leftGapBox, "BOTTOMLEFT", 0, -3)
    _G["CMRightGapEditContainer"] = rightGapBox
    if CharacterMarkDB.lockHorizontalGap then rightGapBox:Hide() end

    currentY = currentY - shapeSection.GetHeight() - 5

    -- Store update functions for RefreshUIControls
    frame.UpdateLengthVisibility = UpdateLengthVisibility
    frame.UpdateGapVisibility = UpdateGapVisibility

    -- Initial visibility update
    UpdateLengthVisibility()
    UpdateGapVisibility()

    -- Set scroll child height
    scrollChild:SetHeight(math.abs(currentY) + 20)

    -- Layout update function for collapsible sections
    scrollChild.UpdateLayout = function()
        local y = -10
        -- Presets always at top
        y = y - 60 -- presets height

        for _, section in ipairs(sections) do
            section.header:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 0, y)
            y = y - section.GetHeight() - 5
        end

        scrollChild:SetHeight(math.abs(y) + 20)
    end

    configFrame = frame
    return frame
end

-- Event Handler
CharacterMark:SetScript("OnEvent", function(self, event, addonName)
    if event == "ADDON_LOADED" and addonName == "Character Mark" then
        UpdateCharacterMark()
        print("|cFF00FF00Character Mark|r |cFF88AAFFv1.0|r")
    elseif event == "PLAYER_LOGIN" then
        UpdateCharacterMark()
        CreateConfigFrame()
    elseif event == "DISPLAY_SIZE_CHANGED" then
        UpdateCharacterMark()
    elseif event == "PLAYER_REGEN_DISABLED" or event == "PLAYER_REGEN_ENABLED" or
        event == "PLAYER_ENTERING_WORLD" or event == "GROUP_ROSTER_UPDATE" then
        UpdateCharacterMark()
    end
end)

-- Slash Command
SLASH_CHARACTERMARK1 = "/CharacterMark"
SLASH_CHARACTERMARK2 = "/cm"
SlashCmdList["CHARACTERMARK"] = function(msg)
    if not configFrame then
        CreateConfigFrame()
    end

    if configFrame:IsVisible() then
        configFrame:Hide()
    else
        configFrame:Show()
    end
end
