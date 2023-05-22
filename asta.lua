-- Livraria de UI para Roblox Studio

local UI = {}

function UI.button(text, callback)
    local button = Instance.new("TextButton")
    button.Name = "Button"
    button.Text = text
    button.Size = UDim2.new(0, 110, 0, 35)
    button.Position = UDim2.new(0.5, -55, 0.5, -17.5)
    button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button.BorderSizePixel = 0
    button.Parent = game.Players.LocalPlayer.PlayerGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = button

    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 1
    stroke.Color = Color3.fromRGB(0, 0, 0)
    stroke.Parent = button

    button.MouseButton1Click:Connect(function()
        callback()
    end)
end

return UI
