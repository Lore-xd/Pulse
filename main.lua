print("Pulse loader is active!")
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
["Binds"] = {
        ["Silent"] = "Q", -- Silent Aim Target toggle
        ["Walk Speed"] = "V",
        ["Jump Height"] = "C",
        ["Infinite Jump"] = "X",
        ["Spread Modifications"] = "B",
        ["Triggerbot"] = "Z",
        ["Camlock"] = "E"
    },

    ["Silent"] = {
        ["Enabled"] = true,
        ["Mode"] = "Auto",
        ["Hitchance"] = 100,
        ["HitPart"] = "ClosestPoint",
        ["Prediction"] = {
            ["X"] = 0,
            ["Y"] = 0,
            ["Z"] = 0
        },
        ["PredictionPower"] = 1,
        ["ClosestPoint"] = {
            ["Mode"] = "Advanced",
            ["PointScale"] = 0.15
        },
        ["Anti Curve"] = {
            ["Enabled"] = true,
            ["Mode"] = "3DAngles",
            ["Angle"] = 15
        },
        ["Showfov"] = true,
        ["FOV"] = {
            ["Enabled"] = true,
            ["Size"] = {
                ["X"] = 4.3,
                ["Y"] = 4.1,
                ["Z"] = 4.1
            },
            ["Weapon Configuration"] = {
                ["Enabled"] = false,
                ["Shotguns"] = {
                    ["X"] = 15,
                    ["Y"] = 15,
                    ["Z"] = 15
                },
                ["Pistols"] = {
                    ["X"] = 20,
                    ["Y"] = 20,
                    ["Z"] = 20
                },
                ["Others"] = {
                    ["X"] = 20,
                    ["Y"] = 20,
                    ["Z"] = 20
                }
            }
        }
    },

    ["Camlock"] = {
        ["Enabled"] = true,
        ["Hitpart"] = "Closest Part", -- "Closest Part","Head","UpperTorso", etc
        ["Smoothness"] = 0.2679,
        ["Prediction"] = {
            ["X"] = 0,
            ["Y"] = 0,
            ["Z"] = 0
        },
        ["Safety Checks"] = {
            ["Wall Check"] = true,
            ["Knocked Check"] = true,
            ["Self Knocked Check"] = true
        },
        ["Camera Modes"] = {
            ["Shift Locked"] = true,
            ["Third Person"] = false,
            ["First Person"] = true
        },
        ["FOV"] = {
            ["Enabled"] = true,
            ["Visible"] = true,
            ["Radius"] = 100
        }
    },

    ["Triggerbot"] = {
        ["Enabled"] = true,
        ["ClickCooldown"] = 0,
        ["User Settings"] = {
            ["Mode"] = "Hold", -- "Hold" or "Toggle"
            ["Type"] = "FOV"   -- "FOV" or "Hitbox"
        },
        ["Weapons"] = {
            "[Double-Barrel SG]",
            "[Revolver]",
            "[TacticalShotgun]"
        },
        ["Prediction"] = {
            ["X"] = 0.1,
            ["Y"] = 0.1,
            ["Z"] = 0.1
        },
        ["ShowFov"] = true,
        ["FOV"] = {
            ["X"] = 13.6,
            ["Y"] = 13.6,
            ["Z"] = 13.6
        },
        ["Safety Checks"] = {
            ["Wall Check"] = true,
            ["Knocked Check"] = true,
            ["Self Knocked Check"] = true
        }
    },

    ["HitboxExpander"] = {
        ["Enabled"] = true,
        ["VisualizeHitbox"] = true,
        ["HitboxSize"] = {
            ["X"] = 5,
            ["Y"] = 9,
            ["Z"] = 5
        }
    },

    ["Weapon Modifications"] = {
        ["Spread Modifications"] = {
            ["Enabled"] = true,
            ["Amount"] = 0.1
        }
    },

    ["Physics"] = {
        ["Walk Speed"] = {
            ["Enabled"] = true,
            ["Value"] = 150
        },
        ["Jump Height"] = {
            ["Enabled"] = true,
            ["Value"] = 150
        },
        ["Infinite Jump"] = {
            ["Enabled"] = true
        }
    },

    ["Misc"] = {
        ["Indicators"] = {
            ["Enabled"] = true
        }
    }
}
