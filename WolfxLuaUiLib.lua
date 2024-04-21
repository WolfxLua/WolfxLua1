-- Define the UI library table
local UI = {}

-- Create a black and gray-white background
function UI.createBackground()
    local background = display.newRect(display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight)
    background:setFillColor(0.2, 0.2, 0.2) -- black
    return background
end

-- Create a white button
function UI.createButton(x, y, width, height, label, onPress)
    local button = display.newRect(x, y, width, height)
    button:setFillColor(1, 1, 1) -- white

    local buttonText = display.newText({
        text = label,
        x = x,
        y = y,
        width = width - 10,
        height = height,
        font = native.systemFontBold,
        fontSize = 18,
        align = "center"
    })
    buttonText:setFillColor(0) -- black

    -- Add event listener to the button
    button:addEventListener("tap", onPress)

    return button
end

return UI
