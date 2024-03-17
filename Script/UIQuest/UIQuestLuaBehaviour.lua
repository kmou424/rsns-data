local View = require("UIQuest/UIQuestView")
local DataModel = require("UIQuest/UIQuestDataModel")
local Controller = require("UIQuest/UIQuestController")
local ViewFunction = require("UIQuest/UIQuestViewFunction")
local Luabehaviour = {
  serialize = function()
  end,
  deserialize = function(initParams)
    local questTrace = PlayerData:GetQuestTrace()
    DataModel.LastSelectBtn = nil
    DataModel.QuestTrace = questTrace[1]
    Controller:RequestAllQuest()
  end,
  awake = function()
  end,
  start = function()
  end,
  update = function()
  end,
  ondestroy = function()
    DataModel.LastShowScroll = nil
  end,
  enable = function()
  end,
  disenable = function()
  end
}
return {
  Luabehaviour,
  View,
  ViewFunction
}
