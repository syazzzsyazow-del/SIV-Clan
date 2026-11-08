-- HCSK Clan l Private | by SyazwiOnTop | Leader: HCSKxSIV_SyazzOnTop | TikTok: @Syazwi101
local P=game:GetService("Players").LocalPlayer
local RS,VIM=game:GetService("ReplicatedStorage"),game:GetService("VirtualInputManager")
local HB=game:GetService("RunService").Heartbeat
local UIS,SS,HS,TPS=game:GetService("UserInputService"),game:GetService("SoundService"),game:GetService("HttpService"),game:GetService("TeleportService")
local _pkg={ok=false,run=nil}
local VER,CFG_URL="1.0.1","https://pastebin.com/raw/HCSK_CFG"
local WEBHOOK=""
local SF="HCSK_cfg.json"
local function note(m)pcall(function()game:GetService("StarterGui"):SetCore("SendNotification",{Title="HCSK",Text=tostring(m):sub(1,180),Duration=8})end)end
local function RQ(u,m,b)
  local r=syn and syn.request or http_request or request
  if not r then return nil end
  local ok,res=pcall(r,{Url=u,Method=m or "GET",Body=b,Headers={["Content-Type"]="application/json"}})
  return ok and res or nil
end
local function GET(u)local r=RQ(u)return r and r.Body or nil end
local function WH(msg)if WEBHOOK~=""then pcall(RQ,WEBHOOK,"POST",HS:JSONEncode({content=msg}))end end
local function BEEP()pcall(function()local s=Instance.new("Sound")s.SoundId="rbxassetid://9046907525"s.Volume=.5 s.Parent=SS s:Play()end)end

-- ============ KEY GATE ============
do
  local _ks,_xor,_ck={82,89,73,81,85,116,78,117,106},26,793
  local function _v(s)if type(s)~="string"or#s~=#_ks then return false end local sum=0 for i=1,#_ks do local b=s:byte(i)if b~=bit32.bxor(_ks[i],_xor)then return false end sum=sum+b end return sum==_ck end
  local _,cg=pcall(function()return game:GetService("CoreGui")end)
  local gui=Instance.new("ScreenGui")
  gui.Name="HC_K"..math.random(1e5,1e6)gui.ResetOnSpawn=false gui.IgnoreGuiInset=true gui.DisplayOrder=999999 gui.Parent=cg or P:WaitForChild("PlayerGui")
  local F=Instance.new("Frame")F.Size=UDim2.new(0,380,0,235)F.Position=UDim2.new(.5,-190,.5,-117)F.BackgroundColor3=Color3.fromRGB(20,20,28)F.BorderSizePixel=0 F.Parent=gui
  local c=Instance.new("UICorner")c.CornerRadius=UDim.new(0,12)c.Parent=F
  local st=Instance.new("UIStroke")st.Color=Color3.fromRGB(124,58,237)st.Thickness=2 st.Parent=F
  local t=Instance.new("TextLabel")t.Size=UDim2.new(1,0,0,32)t.Position=UDim2.new(0,0,0,15)t.BackgroundTransparency=1 t.Text="HCSK Clan l Private"t.TextColor3=Color3.new(1,1,1)t.Font=Enum.Font.GothamBold t.TextSize=20 t.Parent=F
  local sb=Instance.new("TextLabel")sb.Size=UDim2.new(1,0,0,20)sb.Position=UDim2.new(0,0,0,48)sb.BackgroundTransparency=1 sb.Text="Enter key to unlock"sb.TextColor3=Color3.fromRGB(180,180,190)sb.Font=Enum.Font.Gotham sb.TextSize=13 sb.Parent=F
  local bx=Instance.new("TextBox")bx.Size=UDim2.new(1,-60,0,42)bx.Position=UDim2.new(0,30,0,85)bx.BackgroundColor3=Color3.fromRGB(30,30,40)bx.BorderSizePixel=0 bx.PlaceholderText="Enter key..."bx.PlaceholderColor3=Color3.fromRGB(100,100,110)bx.TextColor3=Color3.new(1,1,1)bx.Font=Enum.Font.Gotham bx.TextSize=15 bx.ClearTextOnFocus=false bx.Parent=F
  local bc=Instance.new("UICorner")bc.CornerRadius=UDim.new(0,8)bc.Parent=bx
  local bt=Instance.new("TextButton")bt.Size=UDim2.new(1,-60,0,42)bt.Position=UDim2.new(0,30,0,142)bt.BackgroundColor3=Color3.fromRGB(124,58,237)bt.BorderSizePixel=0 bt.Text="Submit"bt.TextColor3=Color3.new(1,1,1)bt.Font=Enum.Font.GothamBold bt.TextSize=15 bt.Parent=F
  local bt2=Instance.new("UICorner")bt2.CornerRadius=UDim.new(0,8)bt2.Parent=bt
  local er=Instance.new("TextLabel")er.Size=UDim2.new(1,-60,0,18)er.Position=UDim2.new(0,30,0,196)er.BackgroundTransparency=1 er.Text=""er.TextColor3=Color3.fromRGB(255,90,90)er.Font=Enum.Font.Gotham er.TextSize=12 er.Parent=F
  local busy=false
  local function sub()
    if busy then return end busy=true
    if _v(bx.Text)then _pkg.ok=true gui:Destroy()task.spawn(function()if _pkg.run then _pkg.run()end end)
    else er.Text="❌ Invalid key"bx.Text=""local o=F.Position for i=1,6 do F.Position=o+UDim2.new(0,math.sin(i*3)*6,0,0)task.wait(.03)end F.Position=o task.wait(1)er.Text=""end
    busy=false
  end
  bt.MouseButton1Click:Connect(sub)bx.FocusLost:Connect(function(e)if e then sub()end end)
end

-- ============ MAIN ============
_pkg.run=function()
  if not _pkg.ok then error("Unauthorized",0)end
  local _sig=tostring(_pkg.run):len()
  local function guard()if not _pkg.ok or tostring(_pkg.run):len()~=_sig then error("Tampered",0)end end
  -- auto update check
  task.spawn(function()local v=GET(CFG_URL..".ver")if v and v:gsub("%s","")~=VER then note("Update available: "..v)end end)
  local ok,e=pcall(function()
    local ME,LS=P:WaitForChild("muscleEvent",15),P:WaitForChild("leaderstats",15)
    assert(ME and LS,"Not Muscle Legends")
    local ST,RB,DU=LS:WaitForChild("Strength"),LS:WaitForChild("Rebirths"),P:WaitForChild("Durability")
    P.Idled:Connect(function()VIM:SendKeyEvent(true,Enum.KeyCode.Y,false,game)task.wait(.05)VIM:SendKeyEvent(false,Enum.KeyCode.Y,false,game)end)
    local function F(n)n=n or 0 local u,i={"","K","M","B","T","Qa","Qi"},1 while n>=1000 and i<#u do n=n/1000 i=i+1 end return i==1 and string.format("%.0f",n)or string.format("%.2f%s",n,u[i])end
    local function T(s)local f=math.floor return string.format("%dd %dh %dm %ds",f(s/86400),f(s%86400/3600),f(s%3600/60),f(s%60))end
    -- load cfg from pastebin
    local PETS={["Omega Overlord"]={20,0,0,0},["Swift Samurai"]={15,0,0,0},["Powercore Hound"]={0,25,15,0},["Titanium Hydra"]={0,0,0,2},["Tribal Overlord"]={0,0,0,2},["Inferno Unicorn"]={0,25,25,0},["Inferno Drake"]={40,0,0,0},["Mythic Boss Pet"]={10,20,0,0},["Legendary Boss Pet"]={10,10,0,0},["Epic Boss Pet"]={10,0,0,0},["Rare Boss Pet"]={7,0,0,0},["Common Boss Pet"]={5,0,0,0}}
    task.spawn(function()local j=GET(CFG_URL)if j then local s,d=pcall(HS.JSONDecode,HS,j)if s and type(d)=="table"then for k,v in pairs(d)do PETS[k]=v end end end end)
    local function equip(reb)
      local ev,pets=RS.rEvents.equipPetEvent,{}
      for _,f in ipairs(P.petsFolder:GetChildren())do if f:IsA("Folder")then for _,p in ipairs(f:GetChildren())do ev:FireServer("unequipPet",p)local c=PETS[p.Name]if c then pets[#pets+1]={p,c}end end end end
      task.wait(.08)
      local n,rs=0,0
      if reb then table.sort(pets,function(a,b)return a[2][4]>b[2][4]end)for _,p in ipairs(pets)do if n>=12 or p[2][4]<=0 then break end ev:FireServer("equipPet",p[1])n=n+1 end
      else
        table.sort(pets,function(a,b)return a[2][1]>b[2][1]end)
        local used={}
        for _,p in ipairs(pets)do if n>=12 or rs>=100 or p[2][1]<=0 then break end ev:FireServer("equipPet",p[1])used[p]=1 n=n+1 rs=rs+p[2][1]end
        table.sort(pets,function(a,b)return a[2][2]+a[2][3]>b[2][2]+b[2][3]end)
        for _,p in ipairs(pets)do if n>=12 then break end if not used[p]and p[2][2]+p[2][3]>0 then ev:FireServer("equipPet",p[1])n=n+1 end end
      end
    end
    local W=loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library/main/Library",true))():AddWindow("HCSK Clan l Private",{main_color=Color3.fromRGB(124,58,237),min_size=Vector2.new(500,500),can_resize=false})
    local I,S,B,A=W:AddTab("Info"),W:AddTab("Fast Strength"),W:AddTab("Fast Rebirth"),W:AddTab("Auto")
    for _,v in ipairs{"HCSK Clan Script","By : SyazwiOnTop","Leader : HCSKxSIV_SyazzOnTop","","TikTok : @Syazwi101","Version: "..VER}do I:AddLabel(v)end
    -- FAST STRENGTH
    local L={}
    for i,v in ipairs{"Status: Inactive","Runtime: 0d 0h 0m 0s","","","Str Pace: --","Dura Pace: --","Str Avg: --","Dura Avg: --"}do L[i]=S:AddLabel(v)end
    S:AddLabel("Recommended: 659")
    local run,t0,el,s0,d0,lc,ls,ld=false,0,0,ST.Value,DU.Value,tick(),ST.Value,DU.Value
    local SPD=659
    S:AddSlider("Speed",200,1000,659,function(v)SPD=v end)
    S:AddSwitch("Fast Strength",function(s)
      guard()run=s
      if s then t0,lc,ls,ld=tick(),tick(),ST.Value,DU.Value
        task.spawn(function()local rate,tok,last=200,0,os.clock()
          while run do guard()local n=os.clock()local d=math.min(.1,n-last)last=n rate=math.min(SPD,rate*1.05)tok=math.min(24,tok+rate*d)
            local c=math.min(math.floor(tok),math.max(1,math.min(24,math.ceil(rate*.05))))
            for _=1,c do if not run then break end ME:FireServer("rep")end
            tok=tok-c L[1].Text="Farming | "..math.floor(rate).." reps/s"HB:Wait()end
          L[1].Text="Inactive"end)
      elseif t0>0 then el=el+tick()-t0 t0=0 L[1].Text="Stopped"end
    end):Set(false)
    task.spawn(function()while true do guard()local tot=el+(run and t0>0 and tick()-t0 or 0)
      L[2].Text="Runtime: "..T(tot)L[3].Text="Str: "..F(ST.Value).." | +"..F(ST.Value-s0)L[4].Text="Dur: "..F(DU.Value).." | +"..F(DU.Value-d0)
      if run and tick()-lc>=10 then local dt=tick()-lc local sp,dp=(ST.Value-ls)/dt,(DU.Value-ld)/dt
        if sp>0 then L[5].Text=string.format("Str Pace: %s/s",F(sp))end
        if dp>0 then L[6].Text=string.format("Dur Pace: %s/s",F(dp))end
        if tot>0 then L[7].Text=string.format("Str Avg: %s/s",F((ST.Value-s0)/tot))L[8].Text=string.format("Dur Avg: %s/s",F((DU.Value-d0)/tot))end
        lc,ls,ld=tick(),ST.Value,DU.Value end
      task.wait(1)end end)
    -- FAST REBIRTH
    local st,rt,rs_,rp=B:AddLabel("Inactive"),B:AddLabel("Runtime: 0s"),B:AddLabel("Rebirths: "..F(RB.Value).." | +0"),B:AddLabel("Pace: --")
    local on,bt,be,base,lt,lv=false,0,0,RB.Value,tick(),RB.Value
    RB:GetPropertyChangedSignal("Value"):Connect(function()if on and RB.Value>lv then local ph=3600/((tick()-lt)/(RB.Value-lv))
      rp.Text=string.format("Pace: %s/h",F(ph))lt,lv=tick(),RB.Value end end)
    B:AddSwitch("Fast Rebirth",function(s)
      guard()on=s
      if s then st.Text="Rebirthing"bt=tick()base,lt,lv=RB.Value,tick(),RB.Value
        task.spawn(function()while on do guard()
          st.Text="Equipping pets..."pcall(equip,false)task.wait(.15)
          local target=5000+RB.Value*2550 st.Text="Farming "..F(target)
          local burst=P.MembershipType==Enum.MembershipType.Premium and 6 or 12
          while on and ST.Value<target do guard()for _=1,burst do if not on then break end ME:FireServer("rep")end task.wait(.01)end
          if on and ST.Value>=target then st.Text="Rebirth equip..."pcall(equip,true)task.wait(.1)st.Text="Rebirthing..."
            local b4,n=RB.Value,0 repeat pcall(function()RS.rEvents.rebirthRemote:InvokeServer("rebirthRequest")end)n=n+1 task.wait(.01)until RB.Value>b4 or not on or n>50
            BEEP()WH(string.format("HCSK: %s reached R=%d",P.Name,RB.Value))end
          if on then local n=0 while on and(not P.Character or not P.Character:FindFirstChild("HumanoidRootPart"))and n<50 do task.wait(.1)n=n+1 end task.wait(.2)end end
          st.Text="Inactive"end)
      elseif bt>0 then be=be+tick()-bt bt=0 st.Text="Stopped"end
    end):Set(false)
    task.spawn(function()while true do rt.Text="Runtime: "..T(be+(on and bt>0 and tick()-bt or 0))rs_.Text="Rebirths: "..F(RB.Value).." | +"..F(RB.Value-base)task.wait(1)end end)
    -- AUTO FEATURES
    local function fire(ev,...)pcall(function()RS.rEvents[ev]:FireServer(...)end)end
    A:AddSwitch("Auto Hatch",function(s)if s then task.spawn(function()while s do guard()fire("hatchEggEvent")task.wait(1)end end)end end):Set(false)
    A:AddSwitch("Auto Daily",function(s)if s then task.spawn(function()while s do guard()fire("claimDailyRemote")task.wait(60)end end)end end):Set(false)
    A:AddSwitch("Auto Sell Pets",function(s)if s then task.spawn(function()while s do guard()
      local common={}for _,f in ipairs(P.petsFolder:GetChildren())do if f:IsA("Folder")then for _,p in ipairs(f:GetChildren())do local c=PETS[p.Name]if c and c[1]<10 and c[2]+c[3]+c[4]==0 then common[#common+1]=p end end end end
      for _,p in ipairs(common)do pcall(function()RS.rEvents.sellPetEvent:FireServer(p)end)end
      task.wait(30)end end)end end):Set(false)
    A:AddSwitch("Auto Equip Best",function(s)if s then task.spawn(function()while s do guard()pcall(equip,false)task.wait(15)end end)end end):Set(false)
    A:AddSwitch("Auto Quest",function(s)if s then task.spawn(function()while s do guard()fire("questEvent")fire("claimQuest")task.wait(30)end end)end end):Set(false)
    A:AddSwitch("Auto Claim Code",function(s)if s then task.spawn(function()while s do guard()fire("redeemCodeEvent")task.wait(120)end end)end end):Set(false)
    A:AddSwitch("Auto Rejoin",function(s)if s then task.spawn(function()while s do guard()task.wait(5)if not P.Character or not P.Character:FindFirstChild("HumanoidRootPart")then task.wait(30)pcall(function()TPS:Teleport(game.PlaceId,P)end)end end end)end end):Set(false)
    -- MINI HUD
    local hud=Instance.new("ScreenGui")hud.Name="HC_HUD"hud.ResetOnSpawn=false hud.IgnoreGuiInset=true hud.DisplayOrder=1 hud.Parent=P:WaitForChild("PlayerGui")
    local hl=Instance.new("TextLabel")hl.Size=UDim2.new(0,260,0,54)hl.Position=UDim2.new(0,10,0,10)hl.BackgroundColor3=Color3.fromRGB(20,20,28)hl.BackgroundTransparency=.3 hl.TextColor3=Color3.fromRGB(124,58,237)hl.Font=Enum.Font.GothamBold hl.TextSize=12 hl.Text="HCSK HUD"hl.TextXAlignment=Enum.TextXAlignment.Left hl.Parent=hud
    local hc=Instance.new("UICorner")hc.CornerRadius=UDim.new(0,8)hc.Parent=hl
    local hpad=Instance.new("UIPadding")hpad.PaddingLeft=UDim.new(0,8)hpad.PaddingTop=UDim.new(0,4)hpad.Parent=hl
    task.spawn(function()while hud.Parent do local tot=el+(run and t0>0 and tick()-t0 or 0)local sp=0
      hl.Text=string.format("HCSK | Str:%s R:%d\nRuntime: %s\nStr/s: --",F(ST.Value),RB.Value,T(tot))task.wait(2)end end)
    -- KEYBIND + MINIMIZE (window-level, elurium tak support direct, jadi kita guna UserInputService)
    UIS.InputBegan:Connect(function(i,g)if g then return end if i.KeyCode==Enum.KeyCode.RightShift then hud.Enabled=not hud.Enabled end end)
    -- SETTINGS SAVE/LOAD
    task.spawn(function()
      if readfile then pcall(function()if isfile(SF)then local d=HS:JSONDecode(readfile(SF))if d.spd then SPD=d.spd end end end)end
      while true do task.wait(30)pcall(function()if writefile then writefile(SF,HS:JSONEncode({spd=SPD}))end end)end
    end)
  end)
  if not ok then note(e)end
end
