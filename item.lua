local NAME = "long-handed-stack-inserter"
local ICON = "__factorio-mod-test__/graphics/long-inserter.png"

-- ENTITY

local entity = table.deepcopy(data.raw.inserter["stack-inserter"])
entity.name = NAME
entity.icon = ICON
entity.icon_size = 32

entity.hand_size = data.raw.inserter["long-handed-inserter"].hand_size
entity.insert_position = data.raw.inserter["long-handed-inserter"].insert_position
entity.pickup_position = data.raw.inserter["long-handed-inserter"].pickup_position
entity.platform_picture =
{
  sheet =
  {
    filename = "__factorio-mod-test__/graphics/ultimate-long-inserter-platform.png",
    height = 40,
    priority = "extra-high",
    shift = {
      0.03125,
      0.1875
    },
    width = 53
  }
}

-- ITEM

local item = table.deepcopy(data.raw.item["stack-inserter"])
item.name = NAME
item.icon = ICON
item.icon_size = 32
item.place_result = NAME

-- RECIPE

local recipe = table.deepcopy(data.raw.recipe["stack-inserter"])
recipe.ingredients = {{"long-handed-inserter", 1}, {"stack-inserter", 1}}
recipe.enabled = true
recipe.name = NAME
recipe.result = NAME


data:extend{entity,item,recipe}
