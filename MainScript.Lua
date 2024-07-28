--//中文函数 1.0基础版
-- 作者Ttm

function a(text)
  --// OK:
  if text == "工作区" then
    return gane.Workspace
   elseif text == "所有玩家" then
    return game.Players
   elseif text == "使用玩家" then
    return game.Players.LocalPlayer
   elseif text == "角色" then
    return a("使用玩家").Character
   elseif text == "人物" then
    return a("角色"):WaitForChild("Humanoid")
   elseif text == "躯干" then
    return a("人物").HumanoidRootPart
   elseif text == "复制存储" then
    return game:GetService("ReplicatedStorage")
   elseif text == "运行服务" then
    return game:GetService("RunService")
   elseif text == "光亮" then
    return game:GetService("Lighting")
   elseif text == "物品栏" then
    return a("使用玩家").Backpack
  end
end

function For(b)

  get = b["功能"] or "获取子级"
  idk = b["目标"] or a("工作区")
  fuc = b["动作"] or print("114514啥也米有")
  s = b["重复数量"] or 10
  OK = true

  if get == "获取子级" then
    local lol = idk:GetChildren()
   elseif get == "获取全部子级" then
    local lol = idk:GetDescendants()
   elseif get == "重复" then
    OK = not OK
    for i = 1,s do
      fuc()
    end
  end

  if OK then
    for i,v in pairs(lol) do
      fuc()
    end
  end

end
