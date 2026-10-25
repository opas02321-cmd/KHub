-- Korean Word Stack Hub (Rayfield)
-- Tabs: Basic / Hunmin / Chain / Settings / Add Words
local sharedEnv=type(getgenv)=='function' and getgenv() or _G
local previousRun=sharedEnv.KoreanWordStackRun
if previousRun then
    previousRun.active=false
    for _,connection in ipairs(previousRun.connections or {}) do connection:Disconnect() end
    if previousRun.ui then pcall(function() previousRun.ui:Destroy() end) end
end
local session={active=true,connections={}}
sharedEnv.KoreanWordStackRun=session
local ok, Rayfield=pcall(function()
local UI=assert(loadstring([====[local WindUI=assert(loadstring([========[--[[
     _      ___         ____  ______
    | | /| / (_)__  ___/ / / / /  _/
    | |/ |/ / / _ \/ _  / /_/ // /  
    |__/|__/_/_//_/\_,_/\____/___/
    
    v1.6.65  |  2026-07-01  |  Roblox UI Library for scripts
    
    To view the source code, see the `src/` folder on the official GitHub repository.
    
    Author: Footagesus (Footages, .ftgs, oftgs)
    Github: https://github.com/Footagesus/WindUI
    Discord: https://discord.gg/ftgs-development-hub-1300692552005189632
    License: MIT
]]

type ConfigType__DARKLUA_TYPE_a={
Object:Instance,
Camera:Instance?,
Interactive:boolean?,
Height:number?,
Focused:boolean,

Window:any,
WindUI:any,
Tab:any,
Parent:Instance,
}local a a={cache={}, load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}end return a.cache[b].c end}do function a.a()

local b

local d={
New=nil,
Init=nil,
Shapes={
Circle={
Image="rbxassetid://111665032676235",
Rect=Rect.new(512,512,512,512),
Radius=512,
},
CircleOutline={
Image="rbxassetid://108556680453287",
Rect=Rect.new(512,512,512,512),
Radius=512,
},
CircleGlass={
Image="rbxassetid://95600044758841",
Rect=Rect.new(512,512,512,512),
Radius=512,
},



SquircleH={
Image="rbxassetid://125083578015333",
Rect=Rect.new(512,325,512,325),
Radius=325,
},
SquircleHOutline={
Image="rbxassetid://107043713170567",
Rect=Rect.new(512,325,512,325),
Radius=325,
},
SquircleHGlass={
Image="rbxassetid://84819521201001",
Rect=Rect.new(512,325,512,325),
Radius=325,
},
["SquircleH-TL-TR"]={
Image="rbxassetid://90680657206619",
Rect=Rect.new(807,512,807,512),
Radius=325,
AutoChange=false,
},
["SquircleH-BL-BR"]={
Image="rbxassetid://99216342056719",
Rect=Rect.new(0,512,0,512),
Radius=325,
AutoChange=false,
},

SquircleV={
Image="rbxassetid://124965260437653",
Rect=Rect.new(325,512,325,512),
Radius=325,
},
SquircleVOutline={
Image="rbxassetid://88808835404198",
Rect=Rect.new(325,512,325,512),
Radius=325,
},
SquircleVGlass={
Image="rbxassetid://124982801466667",
Rect=Rect.new(325,512,325,512),
Radius=325,
},

Squircle={
Image="rbxassetid://89641024074289",
Rect=Rect.new(460,460,460,460),
Radius=310,
},
SquircleOutline={
Image="rbxassetid://74029063732681",
Rect=Rect.new(512,512,512,512),
Radius=310,
},
SquircleGlass={
Image="rbxassetid://131126436897551",
Rect=Rect.new(512,512,512,512),
Radius=310,
},

["Squircle-TL-TR"]={
Image="rbxassetid://75712142040725",
Rect=Rect.new(512,512,512,512),
Radius=310,
AutoChange=false,
},
["Squircle-BL-BR"]={
Image="rbxassetid://83676684425544",
Rect=Rect.new(512,0,512,0),
Radius=310,
AutoChange=false,
},Square=
{
Image="rbxassetid://82909646051652",
Rect=Rect.new(512,512,512,512),
Radius=512,
AutoChange=false,
},
},
}

function d.Init(e,f)
b=f
return e.New
end

function d.New(e,f,g,h,i,j,l)
local m={
Radius=f or 0,
Type=g or"Circle",
GetRadius=nil,
GetType=nil,
SetRadius=nil,
SetType=nil,
}

local p={
["Glass-0.7"]="SquircleGlass",
["Glass-1"]="SquircleGlass",
["Glass-1.4"]="SquircleGlass",
["Squircle-Outline"]="SquircleOutline",
}

local function GetShape(r)
return d.Shapes[p[r]or r]or d.Shapes.Circle
end

local r=b.New(j and"ImageButton"or"ImageLabel",{
Image="",
ScaleType=l~=false and"Slice"or nil,
SliceCenter=m.Type~="Squircle"and Rect.new(512,512,512,512)or nil,
SliceScale=1,
ThemeTag=h and h.ThemeTag or nil,
BackgroundTransparency=1,
},i)

for u,v in next,h do
if not table.find({"ThemeTag"},u)then
r[u]=v
end
end

function m.SetRadius(u,v)
m.Radius=v
r.SliceScale=math.max(v/GetShape(m.Type).Radius,0.0001)
return m
end

function m.SetType(u,v)
m.Type=v
local x=GetShape(v)
r.Image=x.Image
r.SliceCenter=x.Rect
m:SetRadius(m.Radius)
return m
end

function m.GetRadius(u)
return m.Radius
end

function m.GetType(u)
return m.Type
end

m:SetRadius(f)
m:SetType(g)

b.AddSignal(r:GetPropertyChangedSignal"AbsoluteSize",function()
local u=GetShape(m.Type)
if u.AutoChange==false then
return
end

if string.find(m.Type,"Squircle")then
local v=string.find(m.Type,"Glass")and"Glass"or nil
local x=string.find(m.Type,"Outline")and"Outline"or nil

local z=math.round(r.AbsoluteSize.X/b.UIScale)
local A=math.round(r.AbsoluteSize.Y/b.UIScale)

local B=m.Radius~=0 and m.Radius or math.min(z,A)/2
local C=d.Shapes.Squircle.Radius/1024
local F=B/math.min(z,A)

local G

if z>A then
if F>=C then
G="SquircleH"..(x or v or"")
else
G="Squircle"..(x or v or"")
end
elseif z<A then
if F>=C then
G="SquircleV"..(x or v or"")
else
G="Squircle"..(x or v or"")
end
else
if F>=C then
G="Circle"..(x or v or"")
else
G="Squircle"..(x or v or"")
end
end

if G~=m:GetType()then
m:SetType(G)
end
end
end)

return r,m
end

return d end function a.b()

local b=(cloneref or clonereference or function(b)return b end)

local d=b(game:GetService"ReplicatedStorage":WaitForChild("GetIcons",99999):InvokeServer())

local function parseIconString(e)
if type(e)=="string"then
local f=e:find":"
if f then
local g=e:sub(1,f-1)
local h=e:sub(f+1)
return g,h
end
end
return nil,e
end

function d.AddIcons(e,f)
if type(e)~="string"or type(f)~="table"then
error"AddIcons: packName must be string, iconsData must be table"
return
end

if not d.Icons[e]then
d.Icons[e]={
Icons={},
Spritesheets={}
}
end

for g,h in pairs(f)do
if type(h)=="number"or(type(h)=="string"and h:match"^rbxassetid://")then
local i=h
if type(h)=="number"then
i="rbxassetid://"..tostring(h)
end

d.Icons[e].Icons[g]={
Image=i,
ImageRectSize=Vector2.new(0,0),
ImageRectPosition=Vector2.new(0,0),
Parts=nil
}
d.Icons[e].Spritesheets[i]=i

elseif type(h)=="table"then
if h.Image and h.ImageRectSize and h.ImageRectPosition then
local i=h.Image
if type(i)=="number"then
i="rbxassetid://"..tostring(i)
end

d.Icons[e].Icons[g]={
Image=i,
ImageRectSize=h.ImageRectSize,
ImageRectPosition=h.ImageRectPosition,
Parts=h.Parts
}

if not d.Icons[e].Spritesheets[i]then
d.Icons[e].Spritesheets[i]=i
end
else
warn("AddIcons: Invalid spritesheet data format for icon '"..g.."'")
end
else
warn("AddIcons: Unsupported data type for icon '"..g.."': "..type(h))
end
end
end

function d.SetIconsType(e)
d.IconsType=e
end

local e
function d.Init(f,g)
d.New=f
d.IconThemeTag=g

e=f
return d
end

function d.Icon(f,g,h)
h=h~=false
local i,j=parseIconString(f)

local l=i or g or d.IconsType
local m=j

local p=d.Icons[l]

if p and p.Icons and p.Icons[m]then
return{
p.Spritesheets[tostring(p.Icons[m].Image)],
p.Icons[m],
}
elseif p and p[m]and string.find(p[m],"rbxassetid://")then
return h and{
p[m],
{ImageRectSize=Vector2.new(0,0),ImageRectPosition=Vector2.new(0,0)}
}or p[m]
end
return nil
end

function d.GetIcon(f,g)
return d.Icon(f,g,false)
end


function d.Icon2(f,g,h)
return d.Icon(f,g,true)
end

function d.Image(f)
local g={
Icon=f.Icon or nil,
Type=f.Type,
Colors=f.Colors or{(d.IconThemeTag or Color3.new(1,1,1)),Color3.new(1,1,1)},
Transparency=f.Transparency or{0,0},
Size=f.Size or UDim2.new(0,24,0,24),

IconFrame=nil,
}

local h={}
local i={}

for j,l in next,g.Colors do
h[j]={
ThemeTag=typeof(l)=="string"and l,
Color=typeof(l)=="Color3"and l,
}
end

for j,l in next,g.Transparency do
i[j]={
ThemeTag=typeof(l)=="string"and l,
Value=typeof(l)=="number"and l,
}
end


local j=d.Icon2(g.Icon,g.Type)
local l=typeof(j)=="string"and string.find(j,'rbxassetid://')

if d.New then
local m=e or d.New



local p=m("ImageLabel",{
Size=g.Size,
BackgroundTransparency=1,
ImageColor3=h[1].Color or nil,
ImageTransparency=i[1].Value or nil,
ThemeTag=h[1].ThemeTag and{
ImageColor3=h[1].ThemeTag,
ImageTransparency=i[1].ThemeTag,
},
Image=l and j or j[1],
ImageRectSize=l and nil or j[2].ImageRectSize,
ImageRectOffset=l and nil or j[2].ImageRectPosition,
})


if not l and j[2].Parts then
for r,u in next,j[2].Parts do
local v=d.Icon(u,g.Type)

m("ImageLabel",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ImageColor3=h[1+r].Color or nil,
ImageTransparency=i[1+r].Value or nil,
ThemeTag=h[1+r].ThemeTag and{
ImageColor3=h[1+r].ThemeTag,
ImageTransparency=i[1+r].ThemeTag,
},
Image=v[1],
ImageRectSize=v[2].ImageRectSize,
ImageRectOffset=v[2].ImageRectPosition,
Parent=p,
})
end
end

g.IconFrame=p
else
local m=Instance.new"ImageLabel"
m.Size=g.Size
m.BackgroundTransparency=1
m.ImageColor3=h[1].Color
m.ImageTransparency=i[1].Value or nil
m.Image=l and j or j[1]
m.ImageRectSize=l and nil or j[2].ImageRectSize
m.ImageRectOffset=l and nil or j[2].ImageRectPosition


if not l and j[2].Parts then
for p,r in next,j[2].Parts do
local u=d.Icon(r,g.Type)

local v=Instance.New"ImageLabel"
v.Size=UDim2.new(1,0,1,0)
v.BackgroundTransparency=1
v.ImageColor3=h[1+p].Color
v.ImageTransparency=i[1+p].Value or nil
v.Image=u[1]
v.ImageRectSize=u[2].ImageRectSize
v.ImageRectOffset=u[2].ImageRectPosition
v.Parent=m
end
end

g.IconFrame=m
end


return g
end

return d end function a.c()
return function(b)
return{


Primary="Icon",

White=Color3.new(1,1,1),
Black=Color3.new(0,0,0),

Dialog="Accent",

Background="Accent",
BackgroundTransparency=0,
Hover="Text",

PanelBackground="White",
PanelBackgroundTransparency=0.95,

WindowBackground="Background",

WindowShadow="Black",


WindowTopbarTitle="Text",
WindowTopbarAuthor="Text",
WindowTopbarIcon="Icon",
WindowTopbarButtonIcon="Icon",


WindowSearchBarBackground="Dialog",

TabBackground="Hover",
TabBackgroundHover="Hover",
TabBackgroundHoverTransparency=0.97,
TabBackgroundActive="Hover",
TabBackgroundActiveTransparency=0.93,
TabText="Text",
TabTextTransparency=0.3,
TabTextTransparencyActive=0,
TabTitle="Text",
TabIcon="Icon",
TabIconTransparency=0.4,
TabIconTransparencyActive=0.1,
TabBorderTransparency=1,
TabBorderTransparencyActive=0.75,
TabBorder="White",

ElementBackground="Text",
ElementBackgroundTransparency=0.93,
ElementBackgroundHover=b:AddColor("ElementBackground","#ffffff",0.1),
ElementTitle="Text",
ElementDesc="Text",
ElementIcon="Icon",

PopupBackground="Background",
PopupBackgroundTransparency="BackgroundTransparency",
PopupTitle="Text",
PopupContent="Text",
PopupIcon="Icon",

DialogBackground="Dialog",
DialogBackgroundTransparency="BackgroundTransparency",
DialogTitle="Text",
DialogContent="Text",
DialogIcon="Icon",

Toggle="Button",
ToggleBar="White",

Checkbox="Primary",
CheckboxIcon="White",
CheckboxBorder="White",
CheckboxBorderTransparency=0.75,

SliderIcon="Icon",

Slider="Primary",
SliderThumb="White",
SliderIconFrom="SliderIcon",
SliderIconTo="SliderIcon",

ProgressBar="Primary",
ProgressBarTrack="Text",
ProgressBarTrackTransparency=0.9,
ProgressBarText="Text",

Tooltip=Color3.fromHex"4C4C4C",
TooltipText="White",
TooltipSecondary="Primary",
TooltipSecondaryText="White",

TabSectionIcon="Icon",

SectionIcon="Icon",

SectionExpandIcon="Icon",
SectionExpandIconTransparency=0.4,
SectionBox="Text",
SectionBoxTransparency=0.95,
SectionBoxBorder="White",
SectionBoxBorderTransparency=0.75,
SectionBoxBackground="Text",
SectionBoxBackgroundTransparency=0.97,

SearchBarBorder="White",
SearchBarBorderTransparency=0.75,

Notification="Background",
Notification2="White",
Notification2Transparency=0.92,
NotificationTitle="Text",
NotificationTitleTransparency=0,
NotificationContent="Text",
NotificationContentTransparency=0.4,
NotificationDuration="White",
NotificationDurationTransparency=0.95,
NotificationBorder="White",
NotificationBorderTransparency=0.75,

DropdownTabBorder="White",
DropdownTabBackground="ElementBackground",
DropdownBackground="Background",

LabelBackground="White",
LabelBackgroundTransparency=0.95,

ViewportBackground="ElementBackground",
ViewportBackgroundTransparency="ElementBackgroundTransparency",
}
end end function a.d()

local b=(cloneref or clonereference or function(b)
return b
end)

local d=b(game:GetService"RunService")
local e=b(game:GetService"UserInputService")
local f=b(game:GetService"TweenService")
local g=b(game:GetService"LocalizationService")
local h=b(game:GetService"HttpService")

local i=a.load'a'local j=

d.Heartbeat

local l="https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua"

local m
if d:IsStudio()or not writefile then
m=a.load'b'
else
m=loadstring(
game.HttpGet and game:HttpGet(l)or h:GetAsync(l)
)()
end

m.SetIconsType"lucide"

local p

local r
r={
Font="rbxassetid://12187365364",
Localization=nil,
CanDraggable=true,
Theme=nil,
Themes=nil,
Icons=m,
Signals={},
Objects={},
LocalizationObjects={},
UIScale=1,
FontObjects={},
Language=string.match(g.SystemLocaleId,"^[a-z]+"),
Request=http_request or(syn and syn.request)or request,
DefaultProperties={
ScreenGui={
ResetOnSpawn=false,
ZIndexBehavior="Sibling",
},
CanvasGroup={
BorderSizePixel=0,
BackgroundColor3=Color3.new(1,1,1),
},
Frame={
BorderSizePixel=0,
BackgroundColor3=Color3.new(1,1,1),
},
TextLabel={
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
Text="",
RichText=true,
TextColor3=Color3.new(1,1,1),
TextSize=14,
},
TextButton={
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
Text="",
AutoButtonColor=false,
TextColor3=Color3.new(1,1,1),
TextSize=14,
},
TextBox={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
ClearTextOnFocus=false,
Text="",
TextColor3=Color3.new(0,0,0),
TextSize=14,
},
ImageLabel={
BackgroundTransparency=1,
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
},
ImageButton={
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
AutoButtonColor=false,
},
UIListLayout={
SortOrder="LayoutOrder",
},
ScrollingFrame={
ScrollBarImageTransparency=1,
BorderSizePixel=0,
},
VideoFrame={
BorderSizePixel=0,
},
},
Colors={
Red="#e53935",
Orange="#f57c00",
Green="#43a047",
Blue="#039be5",
White="#ffffff",
Grey="#484848",
},
ThemeFallbacks=nil,





















ThemeChangeCallbacks={},
}

function r.Init(u)
p=u

r.ThemeFallbacks=a.load'c'(r)

r.UIScale=u.UIScale

i:Init(r)
end

function r.AddSignal(u,v)
local x=u:Connect(v)
table.insert(r.Signals,x)
return x
end

function r.DisconnectAll()
for u,v in next,r.Signals do
local x=table.remove(r.Signals,u)
x:Disconnect()
end
end

function r.SafeCallback(u,...)
if not u then
return
end

local v,x=pcall(u,...)
if not v then
if p and p.Window and p.Window.Debug then local
z, A=x:find":%d+: "

warn("[ WindUI: DEBUG Mode ] "..x)

return p:Notify{
Title="DEBUG Mode: Error",
Content=not A and x or x:sub(A+1),
Duration=8,
}
end
end
end

function r.Gradient(u,v)
if p and p.Gradient then
return p:Gradient(u,v)
end

local x={}
local z={}

for A,B in next,u do
local C=tonumber(A)
if C then
C=math.clamp(C/100,0,1)
table.insert(x,ColorSequenceKeypoint.new(C,B.Color))
table.insert(z,NumberSequenceKeypoint.new(C,B.Transparency or 0))
end
end

table.sort(x,function(A,B)
return A.Time<B.Time
end)
table.sort(z,function(A,B)
return A.Time<B.Time
end)

if#x<2 then
error"ColorSequence requires at least 2 keypoints"
end

local A={
Color=ColorSequence.new(x),
Transparency=NumberSequence.new(z),
}

if v then
for B,C in pairs(v)do
A[B]=C
end
end

return A
end

function r.SetTheme(u)
local v=r.Theme
r.Theme=u
r.UpdateTheme(nil,false)

for x,z in next,r.ThemeChangeCallbacks do
r.SafeCallback(z,u,v)
end
end

function r.AddFontObject(u)
table.insert(r.FontObjects,u)
r.UpdateFont(r.Font)
end

function r.UpdateFont(u)
r.Font=u
for v,x in next,r.FontObjects do
x.FontFace=Font.new(u,x.FontFace.Weight,x.FontFace.Style)
end
end

function r.GetThemeProperty(u,v)
local function getValue(x,z)
local A=z[x]

if A==nil then
return nil
end

if typeof(A)=="string"and string.sub(A,1,1)=="#"then
return Color3.fromHex(A)
end

if typeof(A)=="Color3"then
return A
end

if typeof(A)=="number"then
return A
end

if typeof(A)=="table"and A.Color and A.Transparency then
return A
end

if typeof(A)=="function"then
return A(z)
end

return A
end

local x=getValue(u,v)
if x~=nil then
if typeof(x)=="string"and string.sub(x,1,1)~="#"then
local z=r.GetThemeProperty(x,v)
if z~=nil then
return z
end
else
return x
end
end

local z=r.ThemeFallbacks[u]
if z~=nil then
if typeof(z)=="string"and string.sub(z,1,1)~="#"then
return r.GetThemeProperty(z,v)
else
return getValue(u,{[u]=z})
end
end

x=getValue(u,r.Themes.Dark)
if x~=nil then
if typeof(x)=="string"and string.sub(x,1,1)~="#"then
local A=r.GetThemeProperty(x,r.Themes.Dark)
if A~=nil then
return A
end
else
return x
end
end

if z~=nil then
if typeof(z)=="string"and string.sub(z,1,1)~="#"then
return r.GetThemeProperty(z,r.Themes.Dark)
else
return getValue(u,{[u]=z})
end
end

return nil
end

function r.AddThemeObject(u,v,x)
if r.Objects[u]then
for z,A in pairs(v)do
r.Objects[u].Properties[z]=A
end
else
r.Objects[u]={Object=u,Properties=v}
end

if not x then
r.UpdateTheme(u,false)
end
return u
end

function r.AddLangObject(u)
local v=r.LocalizationObjects[u]
if not v then
return
end

local x=v.Object

r.SetLangForObject(u)

return x
end

function r.UpdateTheme(u,v,x,z,A,B)
local function ApplyTheme(C)
for F,G in pairs(C.Properties or{})do
local H=r.GetThemeProperty(G,r.Theme)
if H~=nil then
if typeof(H)=="Color3"then
local J=C.Object:FindFirstChild"LibraryGradient"
if J then
J:Destroy()
end

if x then
r.Tween(
C.Object,
z or 0.2,
{[F]=H},
A or Enum.EasingStyle.Quint,
B or Enum.EasingDirection.Out
):Play()
elseif v then
r.Tween(C.Object,0.08,{[F]=H}):Play()
else
C.Object[F]=H
end
elseif typeof(H)=="table"and H.Color and H.Transparency then
C.Object[F]=Color3.new(1,1,1)

local J=C.Object:FindFirstChild"LibraryGradient"
if not J then
J=Instance.new"UIGradient"
J.Name="LibraryGradient"
J.Parent=C.Object
end

J.Color=H.Color
J.Transparency=H.Transparency

for L,M in pairs(H)do
if L~="Color"and L~="Transparency"and J[L]~=nil then
J[L]=M
end
end
elseif typeof(H)=="number"then
if x then
r.Tween(
C.Object,
z or 0.2,
{[F]=H},
A or Enum.EasingStyle.Quint,
B or Enum.EasingDirection.Out
):Play()
elseif v then
r.Tween(C.Object,0.08,{[F]=H}):Play()
else
C.Object[F]=H
end
end
else
local J=C.Object:FindFirstChild"LibraryGradient"
if J then
J:Destroy()
end
end
end
end

if u then
local C=r.Objects[u]
if C then
ApplyTheme(C)
end
else
for C,F in pairs(r.Objects)do
ApplyTheme(F)
end
end
end

function r.SetThemeTag(u,v,x,z,A)
r.AddThemeObject(u,v)
r.UpdateTheme(u,false,true,x,z,A)
end

function r.SetLangForObject(u)
if r.Localization and r.Localization.Enabled then
local v=r.LocalizationObjects[u]
if not v then
return
end

local x=v.Object
local z=v.TranslationId

local A=r.Localization.Translations[r.Language]
if A and A[z]then
x.Text=A[z]
else
local B=r.Localization
and r.Localization.Translations
and r.Localization.Translations.en
or nil
if B and B[z]then
x.Text=B[z]
else
x.Text="["..z.."]"
end
end
end
end

function r.ChangeTranslationKey(u,v,x)
if r.Localization and r.Localization.Enabled then
local z=string.match(x,"^"..r.Localization.Prefix.."(.+)")
if z then
for A,B in ipairs(r.LocalizationObjects)do
if B.Object==v then
B.TranslationId=z
r.SetLangForObject(A)
return
end
end

table.insert(r.LocalizationObjects,{
TranslationId=z,
Object=v,
})
r.SetLangForObject(#r.LocalizationObjects)
end
end
end

function r.UpdateLang(u)
if u then
r.Language=u
end

for v=1,#r.LocalizationObjects do
local x=r.LocalizationObjects[v]
if x.Object and x.Object.Parent~=nil then
r.SetLangForObject(v)
else
r.LocalizationObjects[v]=nil
end
end
end

function r.SetLanguage(u)
r.Language=u
r.UpdateLang()
end

function r.Icon(u,v)
return m.Icon2(u,nil,v~=false)
end

function r.AddIcons(u,v)
return m.AddIcons(u,v)
end

function r.New(u,v,x)
local z=Instance.new(u)

for A,B in next,r.DefaultProperties[u]or{}do
z[A]=B
end

for A,B in next,v or{}do
if A~="ThemeTag"then
z[A]=B
end
if r.Localization and r.Localization.Enabled and A=="Text"then
local C=string.match(B,"^"..r.Localization.Prefix.."(.+)")
if C then
local F=#r.LocalizationObjects+1
r.LocalizationObjects[F]={TranslationId=C,Object=z}

r.SetLangForObject(F)
end
end
end

for A,B in next,x or{}do
B.Parent=z
end

if v and v.ThemeTag then
r.AddThemeObject(z,v.ThemeTag)
end
if v and v.FontFace then
r.AddFontObject(z)
end
return z
end

function r.Tween(u,v,x,...)
return f:Create(u,TweenInfo.new(v,...),x)
end








































































function r.NewRoundFrame(u,v,x,z,A,B)
return i:New(u,v,x,z,A,nil)
end

local u=r.New local v=
r.Tween

function r.SetDraggable(x)
r.CanDraggable=x
end

function r.Drag(x,z,A)
local B=p.GenerateGUID()

local C
local F=false
local G,H
local J

local L={
CanDraggable=true,
}

if not z or typeof(z)~="table"then
z={x}
end

local function update(M)
if not F or not L.CanDraggable then
return
end

local N=M.Position-G
r.Tween(x,0.02,{
Position=UDim2.new(
H.X.Scale,
H.X.Offset+N.X,
H.Y.Scale,
H.Y.Offset+N.Y
),
}):Play()
end

for M,N in pairs(z)do
N.InputBegan:Connect(function(O)
if not L.CanDraggable or F then
return
end

if
O.UserInputType==Enum.UserInputType.MouseButton1
or O.UserInputType==Enum.UserInputType.Touch
then
if p and p.CurrentInput and p.CurrentInput~=B then
return
end

p.CurrentInput=B

F=true
J=O
C=N
G=O.Position
H=x.Position

if A and typeof(A)=="function"then
A(true,C)
end
end
end)
end

e.InputChanged:Connect(function(M)
if not F then
return
end
if p.CurrentInput and p.CurrentInput~=B then
return
end

if J.UserInputType==Enum.UserInputType.MouseButton1 then
if M.UserInputType==Enum.UserInputType.MouseMovement then
update(M)
end
elseif J.UserInputType==Enum.UserInputType.Touch then
if M==J then
update(M)
end
end
end)

e.InputEnded:Connect(function(M)
if not F or p.CurrentInput~=B then
return
end

if
M==J
or(
J.UserInputType==Enum.UserInputType.MouseButton1
and M.UserInputType==Enum.UserInputType.MouseButton1
)
then
p.CurrentInput=nil
F=false
J=nil
C=nil

if A and typeof(A)=="function"then
A(false,nil)
end
end
end)

function L.Set(M,N)
L.CanDraggable=N
end

return L
end

m.Init(u,"Icon")

function r.SanitizeFilename(x)
local z=x:match"([^/]+)$"or x

z=z:gsub("%.[^%.]+$","")

z=z:gsub("[^%w%-_]","_")

if#z>50 then
z=z:sub(1,50)
end

return z
end

function r.Image(x,z,A,B,C,F,G,H)
B=B or"Temp"
z=r.SanitizeFilename(z)

local J=u("Frame",{
Size=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
},{
u("ImageLabel",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ScaleType="Crop",
ThemeTag=(r.Icon(x)or G)and{
ImageColor3=F and(H or"Icon")or nil,
}or nil,
},{
u("UICorner",{
CornerRadius=UDim.new(0,A),
}),
}),
})
if r.Icon(x)then
J.ImageLabel:Destroy()

local L=m.Image{
Icon=x,
Size=UDim2.new(1,0,1,0),
Colors={
(F and(H or"Icon")or false),
"Button",
},
}.IconFrame
L.Parent=J
elseif string.find(x,"http")and not string.find(x,"roblox.com")then
local L="WindUI/"..B.."/assets/."..C.."-"..z..".png"
local M,N=pcall(function()
task.spawn(function()
local M=r.Request
and r.Request{
Url=x,
Method="GET",
}.Body
or{}

if not d:IsStudio()and writefile then
writefile(L,M)
end


local N,O=pcall(getcustomasset,L)
if N then
J.ImageLabel.Image=O
else
warn(
string.format(
"[ WindUI.Creator ] Failed to load custom asset '%s': %s",
L,
tostring(O)
)
)
J:Destroy()

return
end
end)
end)
if not M then
warn(
"[ WindUI.Creator ]  '"..identifyexecutor()
or"Studio".."' doesnt support the URL Images. Error: "..N
)

J:Destroy()
end
elseif x==""then
J.Visible=false
else
J.ImageLabel.Image=x
end

return J
end

function r.Color3ToHSB(x)
local z,A,B=x.R,x.G,x.B
local C=math.max(z,A,B)
local F=math.min(z,A,B)
local G=C-F

local H=0
if G~=0 then
if C==z then
H=(A-B)/G%6
elseif C==A then
H=(B-z)/G+2
else
H=(z-A)/G+4
end
H=H*60
else
H=0
end

local J=(C==0)and 0 or(G/C)
local L=C

return{
h=math.floor(H+0.5),
s=J,
b=L,
}
end

function r.GetPerceivedBrightness(x)
local z=x.R
local A=x.G
local B=x.B
return 0.299*z+0.587*A+0.114*B
end

function r.GetTextColorForHSB(x,z)
local A=r.Color3ToHSB(x)local
B, C, F=A.h, A.s, A.b
if r.GetPerceivedBrightness(x)>(z or 0.5)then
return Color3.fromHSV(B/360,0,0.05)
else
return Color3.fromHSV(B/360,0,0.98)
end
end

function r.GetAverageColor(x)
local z,A,B=0,0,0
local C=x.Color.Keypoints
for F,G in ipairs(C)do

z=z+G.Value.R
A=A+G.Value.G
B=B+G.Value.B
end
local F=#C
return Color3.new(z/F,A/F,B/F)
end

function r.GenerateUniqueID(x)
return h:GenerateGUID(false)
end

function r.OnThemeChange(x,z)
if typeof(z)~="function"then
return
end

local A=h:GenerateGUID(false)
r.ThemeChangeCallbacks[A]=z

return{
Disconnect=function()
r.ThemeChangeCallbacks[A]=nil
end,
}
end

function r.AddColor(x,z,A,B)
B=math.clamp(B or 1,0,1)
if typeof(A)=="string"then
A=Color3.fromHex(A)
end

return function(C)
local F
if typeof(z)=="string"and string.sub(z,1,1)~="#"then
F=r.GetThemeProperty(z,C)
elseif typeof(z)=="string"then
F=Color3.fromHex(z)
else
F=z
end

if not F or typeof(F)~="Color3"then
return nil
end

return Color3.new(
math.clamp(F.R+A.R*B,0,1),
math.clamp(F.G+A.G*B,0,1),
math.clamp(F.B+A.B*B,0,1)
)
end
end

function r.GetElementPosition(x,z,A,B)
if type(A)~="number"or A~=math.floor(A)then
return nil,1
end






local C=#z


if C==0 or A<1 or A>C then
return nil,2
end

local function isDelimiter(F)
if F==nil then
return true
end
local G=F.__type
return G=="Divider"or G=="Space"or G=="Section"
end

if isDelimiter(z[A])then
return nil,3
end

local function calculate(F,G)
if G==1 then
return"Squircle"
end
if F==1 then
return B and"SquircleH-TL-TR"or"Squircle-TL-TR"
end
if F==G then
return B and"SquircleH-BL-BR"or"Squircle-BL-BR"
end
return"Square"
end

local F=1
local G=0

for H=1,C do
local J=z[H]
if isDelimiter(J)then
if A>=F and A<=H-1 then
local L=A-F+1
return calculate(L,G)
end
F=H+1
G=0
else
G=G+1
end
end

if A>=F and A<=C then
local H=A-F+1
return calculate(H,G)
end

return nil,4
end

return r end function a.e()

local b={}







function b.New(d,e,f)
local g={
Enabled=e.Enabled or false,
Translations=e.Translations or{},
Prefix=e.Prefix or"loc:",
DefaultLanguage=e.DefaultLanguage or"en"
}

f.Localization=g

return g
end



return b end function a.f()
local b=a.load'd'
local d=b.New
local e=b.Tween

local f={
Size=UDim2.new(0,300,1,-156),
SizeLower=UDim2.new(0,300,1,-56),
UICorner=18,
UIPadding=14,

Holder=nil,
NotificationIndex=0,
Notifications={},
}

function f.Init(g)
local h={
Lower=false,
}

function h.SetLower(i)
h.Lower=i
h.Frame.Size=i and f.SizeLower or f.Size
end

h.Frame=d("Frame",{
Position=UDim2.new(1,-29,0,56),
AnchorPoint=Vector2.new(1,0),
Size=f.Size,
Parent=g,
BackgroundTransparency=1,




},{
d("UIListLayout",{
HorizontalAlignment="Center",
SortOrder="LayoutOrder",
VerticalAlignment="Bottom",
Padding=UDim.new(0,8),
}),
d("UIPadding",{
PaddingBottom=UDim.new(0,29),
}),
})
return h
end

function f.New(g)
local h={
Title=g.Title or"Notification",
Content=g.Content or nil,
Icon=g.Icon or nil,
IconThemed=g.IconThemed,
Background=g.Background,
BackgroundImageTransparency=g.BackgroundImageTransparency,
Duration=g.Duration or 5,
Buttons=g.Buttons or{},
CanClose=g.CanClose~=false,
UIElements={},
Closed=false,
}



f.NotificationIndex=f.NotificationIndex+1
f.Notifications[f.NotificationIndex]=h









local i

if h.Icon then





















i=b.Image(
h.Icon,
h.Title..":"..h.Icon,
0,
g.Window,
"Notification",
h.IconThemed
)
i.Size=UDim2.new(0,26,0,26)
i.Position=UDim2.new(0,f.UIPadding,0,f.UIPadding)

end

local l
if h.CanClose then
l=d("ImageButton",{
Image=b.Icon"x"[1],
ImageRectSize=b.Icon"x"[2].ImageRectSize,
ImageRectOffset=b.Icon"x"[2].ImageRectPosition,
BackgroundTransparency=1,
Size=UDim2.new(0,16,0,16),
Position=UDim2.new(1,-f.UIPadding,0,f.UIPadding),
AnchorPoint=Vector2.new(1,0),
ThemeTag={
ImageColor3="Text",
},
ImageTransparency=0.4,
},{
d("TextButton",{
Size=UDim2.new(1,8,1,8),
BackgroundTransparency=1,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Text="",
}),
})
end

local m=b.NewRoundFrame(f.UICorner,"Squircle",{
Size=UDim2.new(0,0,1,0),
ThemeTag={
ImageTransparency="NotificationDurationTransparency",
ImageColor3="NotificationDuration",
},

})

local p=d("Frame",{
Size=UDim2.new(1,h.Icon and-28-f.UIPadding or 0,1,0),
Position=UDim2.new(1,0,0,0),
AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1,
AutomaticSize="Y",
},{
d("UIPadding",{
PaddingTop=UDim.new(0,f.UIPadding),
PaddingLeft=UDim.new(0,f.UIPadding),
PaddingRight=UDim.new(0,f.UIPadding),
PaddingBottom=UDim.new(0,f.UIPadding),
}),
d("TextLabel",{
AutomaticSize="Y",
Size=UDim2.new(1,-30-f.UIPadding,0,0),
TextWrapped=true,
TextXAlignment="Left",
RichText=true,
BackgroundTransparency=1,
TextSize=18,
ThemeTag={
TextColor3="NotificationTitle",
TextTransparency="NotificationTitleTransparency",
},
Text=h.Title,
FontFace=Font.new(b.Font,Enum.FontWeight.SemiBold),
}),
d("UIListLayout",{
Padding=UDim.new(0,f.UIPadding/3),
}),
})

if h.Content then
d("TextLabel",{
AutomaticSize="Y",
Size=UDim2.new(1,0,0,0),
TextWrapped=true,
TextXAlignment="Left",
RichText=true,
BackgroundTransparency=1,

TextSize=15,
ThemeTag={
TextColor3="NotificationContent",
TextTransparency="NotificationContentTransparency",
},
Text=h.Content,
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
Parent=p,
})
end

local r=b.NewRoundFrame(f.UICorner,"Squircle",{
Size=UDim2.new(1,0,0,0),
Position=UDim2.new(2,0,1,0),
AnchorPoint=Vector2.new(0,1),
AutomaticSize="Y",
ImageTransparency=0.05,
ThemeTag={
ImageColor3="Notification",
},

},{
b.NewRoundFrame(f.UICorner,"Squircle",{
Size=UDim2.new(1,0,1,0),
ThemeTag={
ImageColor3="Notification2",
ImageTransparency="Notification2Transparency",
},
}),
d("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Name="DurationFrame",
},{






d("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ClipsDescendants=true,
},{
m,
}),




}),
d("ImageLabel",{
Name="Background",
Image=h.Background,
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,0),
ScaleType="Crop",
ImageTransparency=h.BackgroundImageTransparency,

},{
d("UICorner",{
CornerRadius=UDim.new(0,f.UICorner),
}),
}),

p,
i,
l,
})

local u=d("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,0,0),
Parent=g.Holder,
},{
r,
})

function h.Close(v)
if not h.Closed then
h.Closed=true
e(
u,
0.45,
{Size=UDim2.new(1,0,0,-8)},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
e(r,0.55,{Position=UDim2.new(2,0,1,0)},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
task.wait(0.45)
u:Destroy()
end
end

task.spawn(function()
task.wait()
e(
u,
0.45,
{Size=UDim2.new(1,0,0,r.AbsoluteSize.Y)},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
e(r,0.45,{Position=UDim2.new(0,0,1,0)},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
if h.Duration then
m.Size=UDim2.new(0,r.DurationFrame.AbsoluteSize.X,1,0)
e(
r.DurationFrame.Frame,
h.Duration,
{Size=UDim2.new(0,0,1,0)},
Enum.EasingStyle.Linear,
Enum.EasingDirection.InOut
):Play()
task.wait(h.Duration)
h:Close()
end
end)

if l then
b.AddSignal(l.TextButton.MouseButton1Click,function()
h:Close()
end)
end


return h
end

return f end function a.g()












local b=4294967296;local d=b-1;local function c(e,f)local g,h=0,1;while e~=0 or f~=0 do local i,l=e%2,f%2;local m=(i+l)%2;g=g+m*h;e=math.floor(e/2)f=math.floor(f/2)h=h*2 end;return g%b end;local function k(e,f,g,...)local h;if f then e=e%b;f=f%b;h=c(e,f)if g then h=k(h,g,...)end;return h elseif e then return e%b else return 0 end end;local function n(e,f,g,...)local h;if f then e=e%b;f=f%b;h=(e+f-c(e,f))/2;if g then h=n(h,g,...)end;return h elseif e then return e%b else return d end end;local function o(e)return d-e end;local function q(e,f)if f<0 then return lshift(e,-f)end;return math.floor(e%4294967296/2^f)end;local function s(e,f)if f>31 or f<-31 then return 0 end;return q(e%b,f)end;local function lshift(e,f)if f<0 then return s(e,-f)end;return e*2^f%4294967296 end;local function t(e,f)e=e%b;f=f%32;local g=n(e,2^f-1)return s(e,f)+lshift(g,32-f)end;local e={0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2}local function w(f)return string.gsub(f,".",function(g)return string.format("%02x",string.byte(g))end)end;local function y(f,g)local h=""for i=1,g do local l=f%256;h=string.char(l)..h;f=(f-l)/256 end;return h end;local function D(f,g)local h=0;for i=g,g+3 do h=h*256+string.byte(f,i)end;return h end;local function E(f,g)local h=64-(g+9)%64;g=y(8*g,8)f=f.."\128"..string.rep("\0",h)..g;assert(#f%64==0)return f end;local function I(f)f[1]=0x6a09e667;f[2]=0xbb67ae85;f[3]=0x3c6ef372;f[4]=0xa54ff53a;f[5]=0x510e527f;f[6]=0x9b05688c;f[7]=0x1f83d9ab;f[8]=0x5be0cd19;return f end;local function K(f,g,h)local i={}for l=1,16 do i[l]=D(f,g+(l-1)*4)end;for l=17,64 do local m=i[l-15]local p=k(t(m,7),t(m,18),s(m,3))m=i[l-2]i[l]=(i[l-16]+p+i[l-7]+k(t(m,17),t(m,19),s(m,10)))%b end;local l,m,p,r,u,v,x,z=h[1],h[2],h[3],h[4],h[5],h[6],h[7],h[8]for A=1,64 do local B=k(t(l,2),t(l,13),t(l,22))local C=k(n(l,m),n(l,p),n(m,p))local F=(B+C)%b;local G=k(t(u,6),t(u,11),t(u,25))local H=k(n(u,v),n(o(u),x))local J=(z+G+H+e[A]+i[A])%b;z=x;x=v;v=u;u=(r+J)%b;r=p;p=m;m=l;l=(J+F)%b end;h[1]=(h[1]+l)%b;h[2]=(h[2]+m)%b;h[3]=(h[3]+p)%b;h[4]=(h[4]+r)%b;h[5]=(h[5]+u)%b;h[6]=(h[6]+v)%b;h[7]=(h[7]+x)%b;h[8]=(h[8]+z)%b end;local function Z(f)f=E(f,#f)local g=I{}for h=1,#f,64 do K(f,h,g)end;return w(y(g[1],4)..y(g[2],4)..y(g[3],4)..y(g[4],4)..y(g[5],4)..y(g[6],4)..y(g[7],4)..y(g[8],4))end;local f;local g={["\\"]="\\",["\""]="\"",["\b"]="b",["\f"]="f",["\n"]="n",["\r"]="r",["\t"]="t"}local h={["/"]="/"}for i,l in pairs(g)do h[l]=i end;local i=function(i)return"\\"..(g[i]or string.format("u%04x",i:byte()))end;local l=function(l)return"null"end;local m=function(m,p)local r={}p=p or{}if p[m]then error"circular reference"end;p[m]=true;if rawget(m,1)~=nil or next(m)==nil then local u=0;for v in pairs(m)do if type(v)~="number"then error"invalid table: mixed or invalid key types"end;u=u+1 end;if u~=#m then error"invalid table: sparse array"end;for v,x in ipairs(m)do table.insert(r,f(x,p))end;p[m]=nil;return"["..table.concat(r,",").."]"else for u,v in pairs(m)do if type(u)~="string"then error"invalid table: mixed or invalid key types"end;table.insert(r,f(u,p)..":"..f(v,p))end;p[m]=nil;return"{"..table.concat(r,",").."}"end end;local p=function(p)return'"'..p:gsub('[%z\1-\31\\"]',i)..'"'end;local r=function(r)if r~=r or r<=-math.huge or r>=math.huge then error("unexpected number value '"..tostring(r).."'")end;return string.format("%.14g",r)end;local u={["nil"]=l,table=m,string=p,number=r,boolean=tostring}f=function(v,x)local z=type(v)local A=u[z]if A then return A(v,x)end;error("unexpected type '"..z.."'")end;local v=function(v)return f(v)end;local x;local z=function(...)local z={}for A=1,select("#",...)do z[select(A,...)]=true end;return z end;local A=z(" ","\t","\r","\n")local B=z(" ","\t","\r","\n","]","}",",")local C=z("\\","/",'"',"b","f","n","r","t","u")local F=z("true","false","null")local G={["true"]=true,["false"]=false,null=nil}local H=function(H,J,L,M)for N=J,#H do if L[H:sub(N,N)]~=M then return N end end;return#H+1 end;local J=function(J,L,M)local N=1;local O=1;for P=1,L-1 do O=O+1;if J:sub(P,P)=="\n"then N=N+1;O=1 end end;error(string.format("%s at line %d col %d",M,N,O))end;local L=function(L)local M=math.floor;if L<=0x7f then return string.char(L)elseif L<=0x7ff then return string.char(M(L/64)+192,L%64+128)elseif L<=0xffff then return string.char(M(L/4096)+224,M(L%4096/64)+128,L%64+128)elseif L<=0x10ffff then return string.char(M(L/262144)+240,M(L%262144/4096)+128,M(L%4096/64)+128,L%64+128)end;error(string.format("invalid unicode codepoint '%x'",L))end;local M=function(M)local N=tonumber(M:sub(1,4),16)local O=tonumber(M:sub(7,10),16)if O then return L((N-0xd800)*0x400+O-0xdc00+0x10000)else return L(N)end end;local N=function(N,O)local P=""local Q=O+1;local R=Q;while Q<=#N do local S=N:byte(Q)if S<32 then J(N,Q,"control character in string")elseif S==92 then P=P..N:sub(R,Q-1)Q=Q+1;local T=N:sub(Q,Q)if T=="u"then local U=N:match("^[dD][89aAbB]%x%x\\u%x%x%x%x",Q+1)or N:match("^%x%x%x%x",Q+1)or J(N,Q-1,"invalid unicode escape in string")P=P..M(U)Q=Q+#U else if not C[T]then J(N,Q-1,"invalid escape char '"..T.."' in string")end;P=P..h[T]end;R=Q+1 elseif S==34 then P=P..N:sub(R,Q-1)return P,Q+1 end;Q=Q+1 end;J(N,O,"expected closing quote for string")end;local O=function(O,P)local Q=H(O,P,B)local R=O:sub(P,Q-1)local S=tonumber(R)if not S then J(O,P,"invalid number '"..R.."'")end;return S,Q end;local P=function(P,Q)local R=H(P,Q,B)local S=P:sub(Q,R-1)if not F[S]then J(P,Q,"invalid literal '"..S.."'")end;return G[S],R end;local Q=function(Q,R)local S={}local T=1;R=R+1;while 1 do local U;R=H(Q,R,A,true)if Q:sub(R,R)=="]"then R=R+1;break end;U,R=x(Q,R)S[T]=U;T=T+1;R=H(Q,R,A,true)local V=Q:sub(R,R)R=R+1;if V=="]"then break end;if V~=","then J(Q,R,"expected ']' or ','")end end;return S,R end;local R=function(R,S)local T={}S=S+1;while 1 do local U,V;S=H(R,S,A,true)if R:sub(S,S)=="}"then S=S+1;break end;if R:sub(S,S)~='"'then J(R,S,"expected string for key")end;U,S=x(R,S)S=H(R,S,A,true)if R:sub(S,S)~=":"then J(R,S,"expected ':' after key")end;S=H(R,S+1,A,true)V,S=x(R,S)T[U]=V;S=H(R,S,A,true)local W=R:sub(S,S)S=S+1;if W=="}"then break end;if W~=","then J(R,S,"expected '}' or ','")end end;return T,S end;local S={['"']=N,["0"]=O,["1"]=O,["2"]=O,["3"]=O,["4"]=O,["5"]=O,["6"]=O,["7"]=O,["8"]=O,["9"]=O,["-"]=O,t=P,f=P,n=P,["["]=Q,["{"]=R}x=function(T,U)local V=T:sub(U,U)local W=S[V]if W then return W(T,U)end;J(T,U,"unexpected character '"..V.."'")end;local T=function(T)if type(T)~="string"then error("expected argument of type string, got "..type(T))end;local U,V=x(T,H(T,1,A,true))V=H(T,V,A,true)if V<=#T then J(T,V,"trailing garbage")end;return U end;
local U,V,W=v,T,Z;





local X={}

local Y=(cloneref or clonereference or function(Y)return Y end)


function X.New(_,aa)

local ab=_;
local ac=aa;
local ad=true;


local ae=function(ae)end;


repeat task.wait(1)until game:IsLoaded();


local af=false;
local ag,ah,ai,aj,ak,al,am,an,ao=setclipboard or toclipboard,request or http_request or syn_request,string.char,tostring,string.sub,os.time,math.random,math.floor,gethwid or function()return Y(game:GetService"Players").LocalPlayer.UserId end
local ap,aq="",0;


local ar="https://api.platoboost.app";
local as=ah{
Url=ar.."/public/connectivity",
Method="GET"
};
if as.StatusCode~=200 and as.StatusCode~=429 then
ar="https://api.platoboost.net";
end


function cacheLink()
if aq+(600)<al()then
local at=ah{
Url=ar.."/public/start",
Method="POST",
Body=U{
service=ab,
identifier=W(ao())
},
Headers={
["Content-Type"]="application/json",
["User-Agent"]="Roblox/Exploit"
}
};

if at.StatusCode==200 then
local au=V(at.Body);

if au.success==true then
ap=au.data.url;
aq=al();
return true,ap
else
ae(au.message);
return false,au.message
end
elseif at.StatusCode==429 then
local au="you are being rate limited, please wait 20 seconds and try again.";
ae(au);
return false,au
end

local au="Failed to cache link.";
ae(au);
return false,au
else
return true,ap
end
end

cacheLink();


local at=function()
local at=""
for au=1,16 do
at=at..ai(an(am()*(26))+97)
end
return at
end


for au=1,5 do
local av=at();
task.wait(0.2)
if at()==av then
local aw="platoboost nonce error.";
ae(aw);
error(aw);
end
end


local au=function()
local au,av=cacheLink();

if au then
ag(av);
end
end


local av=function(av)
local aw=at();
local ax=ar.."/public/redeem/"..aj(ab);

local ay={
identifier=W(ao()),
key=av
}

if ad then
ay.nonce=aw;
end

local az=ah{
Url=ax,
Method="POST",
Body=U(ay),
Headers={
["Content-Type"]="application/json"
}
};

if az.StatusCode==200 then
local aA=V(az.Body);

if aA.success==true then
if aA.data.valid==true then
if ad then
if aA.data.hash==W("true".."-"..aw.."-"..ac)then
return true
else
ae"failed to verify integrity.";
return false
end
else
return true
end
else
ae"key is invalid.";
return false
end
else
if ak(aA.message,1,27)=="unique constraint violation"then
ae"you already have an active key, please wait for it to expire before redeeming it.";
return false
else
ae(aA.message);
return false
end
end
elseif az.StatusCode==429 then
ae"you are being rate limited, please wait 20 seconds and try again.";
return false
else
ae"server returned an invalid status code, please try again later.";
return false
end
end


local aw=function(aw)
if af==true then
return false,("A request is already being sent, please slow down.")
else
af=true;
end

local ax=at();
local ay=ar.."/public/whitelist/"..aj(ab).."?identifier="..W(ao()).."&key="..aw;

if ad then
ay=ay.."&nonce="..ax;
end

local az=ah{
Url=ay,
Method="GET",
};

af=false;

if az.StatusCode==200 then
local aA=V(az.Body);

if aA.success==true then
if aA.data.valid==true then
if ad then
if aA.data.hash==W("true".."-"..ax.."-"..ac)then
return true,""
else
return false,("failed to verify integrity.")
end
else
return true
end
else
if ak(aw,1,4)=="KEY_"then
return true,av(aw)
else
return false,("Key is invalid.")
end
end
else
return false,(aA.message)
end
elseif az.StatusCode==429 then
return false,("You are being rate limited, please wait 20 seconds and try again.")
else
return false,("Server returned an invalid status code, please try again later.")
end
end


local ax=function(ax)
local ay=at();
local az=ar.."/public/flag/"..aj(ab).."?name="..ax;

if ad then
az=az.."&nonce="..ay;
end

local aA=ah{
Url=az,
Method="GET",
};

if aA.StatusCode==200 then
local aB=V(aA.Body);

if aB.success==true then
if ad then
if aB.data.hash==W(aj(aB.data.value).."-"..ay.."-"..ac)then
return aB.data.value
else
ae"failed to verify integrity.";
return nil
end
else
return aB.data.value
end
else
ae(aB.message);
return nil
end
else
return nil
end
end


return{
Verify=aw,
GetFlag=ax,
Copy=au,
}
end


return X end function a.h()






local aa=(cloneref or clonereference or function(aa)
return aa
end)

local ab=aa(game:GetService"HttpService")
local ac={}

function ac.New(ad)
local ae=gethwid or function()
return aa(game:GetService"Players").LocalPlayer.UserId
end
local af,ag=request or http_request or syn_request,setclipboard or toclipboard

function ValidateKey(ah)
local ai="https://api.pandauth.com/api/v1/keys/validate"

local aj={
ServiceID=ad,
HWID=tostring(ae()),
Key=tostring(ah),
}

local ak=ab:JSONEncode(aj)
local al,am=pcall(function()
return af{
Url=ai,
Method="POST",
Headers={
["User-Agent"]="Roblox/Exploit",
["Content-Type"]="application/json",
},
Body=ak,
}
end)

if al and am then
if am.Success then
local an,ao=pcall(function()
return ab:JSONDecode(am.Body)
end)

if an and ao then
if ao.Authenticated_Status and ao.Authenticated_Status=="Success"then
return true,"Authenticated"
else
local ap=ao.Note or"Unknown reason"
return false,"Authentication failed: "..ap
end
else
return false,"JSON decode error"
end
else
warn(
" HTTP request was not successful. Code: "
..tostring(am.StatusCode)
.." Message: "
..am.StatusMessage
)
return false,"HTTP request failed: "..am.StatusMessage
end
else
return false,"Request pcall error"
end
end

function GetKeyLink()
return"https://new.pandadevelopment.net/getkey/"..tostring(ad).."?hwid="..tostring(ae())
end

function CopyLink()
return ag(GetKeyLink())
end

return{
Verify=ValidateKey,
Copy=CopyLink,
}
end

return ac end function a.i()







local aa={}

function aa.New(ab,ac)
local ad="https://sdkapi-public.luarmor.net/library.lua"

local ae=loadstring(game.HttpGet and game:HttpGet(ad)or HttpService:GetAsync(ad))()
local af=setclipboard or toclipboard

ae.script_id=ab

function ValidateKey(ag)
local ah=ae.check_key(ag)


if ah.code=="KEY_VALID"then
return true,"Whitelisted!"
elseif ah.code=="KEY_HWID_LOCKED"then
return false,"Key linked to a different HWID. Please reset it using our bot"
elseif ah.code=="KEY_INCORRECT"then
return false,"Key is wrong or deleted!"
else
return false,"Key check failed:"..ah.message.." Code: "..ah.code
end
end

function CopyLink()
af(tostring(ac))
end

return{
Verify=ValidateKey,
Copy=CopyLink,
}
end

return aa end function a.j()









local aa={}

function aa.New(ab,ac,ad)
JunkieProtected.API_KEY=ac
JunkieProtected.PROVIDER=ad
JunkieProtected.SERVICE_ID=ab

local function ValidateKey(ae)
if not ae or ae==""then
print"No key provided!"

return false,"No key provided. Please get a key."
end

local af=JunkieProtected.IsKeylessMode()
if af and af.keyless_mode then
print"Keyless mode enabled. Starting script..."
return true,"Keyless mode enabled. Starting script..."
end

local ag=JunkieProtected.ValidateKey{Key=ae}
if ag=="valid"then
print"Key is valid! Starting script..."
load()
if _G.JD_IsPremium then
print"Premium user detected!"
else
print"Standard user"
end

return true,"Key is valid!"
else
local ah=JunkieProtected.GetKeyLink()
print"Invalid key!"

return false,"Invalid key. Get one from:"..ah
end
end

local function copyLink()
local ae=JunkieProtected.GetKeyLink()

if setclipboard then
setclipboard(ae)
end
end
return{
Verify=ValidateKey,
Copy=copyLink
}
end

return aa end function a.k()



return{
platoboost={
Name="Platoboost",
Icon="rbxassetid://75920162824531",
Args={"ServiceId","Secret"},

New=a.load'g'.New
},
pandadevelopment={
Name="Panda Development",
Icon="panda",
Args={"ServiceId"},

New=a.load'h'.New
},
luarmor={
Name="Luarmor",
Icon="rbxassetid://130918283130165",
Args={"ScriptId","Discord"},

New=a.load'i'.New
},
junkiedevelopment={
Name="Junkie Development",
Icon="rbxassetid://106310347705078",
Args={"ServiceId","ApiKey","Provider"},

New=a.load'j'.New
},


}end function a.l()



return[[
{
    "name": "windui",
    "version": "1.6.65",
    "main": "./dist/main.lua",
    "repository": "https://github.com/Footagesus/WindUI",
    "discord": "https://discord.gg/ftgs-development-hub-1300692552005189632",
    "author": "Footagesus",
    "description": "Roblox UI Library for scripts",
    "license": "MIT",
    "scripts": {
        "dev": "bash build/build.sh dev $INPUT_FILE",
        "build": "bash build/build.sh build $INPUT_FILE",
        "live": "python3 -m http.server 8642",
        "watch": "chokidar . -i 'node_modules' -i 'dist' -i 'build' -c 'npm run dev --'",
        "live-build": "concurrently \"npm run live\" \"npm run watch --\"",
        "example-live-build": "INPUT_FILE=main_example.lua npm run live-build",
        "updater": "python3 updater/main.py"
    },
    "keywords": [
        "ui-library",
        "ui-design",
        "script",
        "script-hub",
        "exploiting"
    ],
    "devDependencies": {
        "chokidar-cli": "^3.0.0",
        "concurrently": "^9.2.0"
    }
}
]]end function a.m()

local aa={}

local ab=a.load'd'
local ac=ab.New
local ad=ab.Tween

function aa.New(ae,af,ag,ah,ai,aj,ak,al)
ah=ah or"Primary"
local am=al or(not ak and 10 or 999)
local an
if af and af~=""then
an=ac("ImageLabel",{
Image=ab.Icon(af)[1],
ImageRectSize=ab.Icon(af)[2].ImageRectSize,
ImageRectOffset=ab.Icon(af)[2].ImageRectPosition,
Size=UDim2.new(0,21,0,21),
BackgroundTransparency=1,
ImageColor3=ah=="White"and Color3.new(0,0,0)or nil,
ImageTransparency=ah=="White"and 0.4 or 0,
ThemeTag={
ImageColor3=ah~="White"and"Icon"or nil,
},
})
end

local ao=ac("TextButton",{
Size=UDim2.new(0,0,1,0),
AutomaticSize="X",
Parent=ai,
BackgroundTransparency=1,
},{
ab.NewRoundFrame(am,"Squircle",{
ThemeTag={
ImageColor3=ah~="White"and"Button"or nil,
},
ImageColor3=ah=="White"and Color3.new(1,1,1)or nil,
Size=UDim2.new(1,0,1,0),
Name="Squircle",
ImageTransparency=ah=="Primary"and 0 or ah=="White"and 0 or 0.9,
}),

ab.NewRoundFrame(am,"Squircle",{



ImageColor3=Color3.new(1,1,1),
Size=UDim2.new(1,0,1,0),
Name="Special",
ImageTransparency=ah=="Secondary"and 0.95 or 1,
}),

ab.NewRoundFrame(am,"Shadow-sm",{



ImageColor3=Color3.new(0,0,0),
Size=UDim2.new(1,3,1,3),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Name="Shadow",

ImageTransparency=1,
Visible=not ak,
}),

ab.NewRoundFrame(am,"SquircleGlass",{
ThemeTag={
ImageColor3="White",
},
Size=UDim2.new(1,1,1,1),

ImageTransparency=0.9,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Name="Outline",
},{













}),

ab.NewRoundFrame(am,"Squircle",{
Size=UDim2.new(1,0,1,0),
Name="Frame",
ThemeTag={
ImageColor3=ah~="White"and"Text"or nil,
},
ImageColor3=ah=="White"and Color3.new(0,0,0)or nil,
ImageTransparency=1,
},{
ac("UIPadding",{
PaddingLeft=UDim.new(0,16),
PaddingRight=UDim.new(0,16),
}),
ac("UIListLayout",{
FillDirection="Horizontal",
Padding=UDim.new(0,8),
VerticalAlignment="Center",
HorizontalAlignment="Center",
}),
an,
ac("TextLabel",{
BackgroundTransparency=1,
FontFace=Font.new(ab.Font,Enum.FontWeight.SemiBold),
Text=ae or"Button",
ThemeTag={
TextColor3=(ah~="Primary"and ah~="White")and"Text",
},
TextColor3=ah=="Primary"and Color3.new(1,1,1)
or ah=="White"and Color3.new(0,0,0)
or nil,
AutomaticSize="XY",
TextSize=18,
}),
}),
})

ab.AddSignal(ao.MouseEnter,function()
ad(ao.Frame,0.047,{ImageTransparency=0.95}):Play()
end)
ab.AddSignal(ao.MouseLeave,function()
ad(ao.Frame,0.047,{ImageTransparency=1}):Play()
end)
ab.AddSignal(ao.MouseButton1Click,function()
if aj then
aj:Close()()
end
if ag then
ab.SafeCallback(ag)
end
end)

return ao
end

return aa end function a.n()

local aa={}

local ab=a.load'd'
local ac=ab.New local ad=
ab.Tween

function aa.New(ae,af,ag,ah,ai,aj,ak,al,am)
ah=ah or"Input"
local an=ak or 10
local ao
if af and af~=""then
ao=ac("ImageLabel",{
Image=ab.Icon(af)[1],
ImageRectSize=ab.Icon(af)[2].ImageRectSize,
ImageRectOffset=ab.Icon(af)[2].ImageRectPosition,
Size=UDim2.new(0,21,0,21),
BackgroundTransparency=1,
ThemeTag={
ImageColor3="Icon",
},
})
end

local ap=ah=="Textarea"

local aq=ac("TextBox",{
BackgroundTransparency=1,
TextSize=17,
FontFace=Font.new(ab.Font,Enum.FontWeight.Regular),
Size=UDim2.new(1,ao and-29 or 0,1,0),
PlaceholderText=ae,
ClearTextOnFocus=al or false,
ClipsDescendants=true,
TextWrapped=ap,
MultiLine=ap,
TextXAlignment="Left",
TextYAlignment=ah~="Textarea"and"Center"or"Top",

ThemeTag={
PlaceholderColor3="PlaceholderText",
TextColor3="Text",
},
})

local ar=ac("Frame",{
Size=UDim2.new(1,0,0,42),
Parent=ag,
BackgroundTransparency=1,
},{
ac("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
},{
ab.NewRoundFrame(an,"Squircle",{
ThemeTag={
ImageColor3="Placeholder",
},
Size=UDim2.new(1,0,1,0),
ImageTransparency=0.85,
}),
not am and ab.NewRoundFrame(an-1,"SquircleGlass",{
ThemeTag={
ImageColor3="Outline",
},
Size=UDim2.new(1,1,1,1),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
ImageTransparency=0.8,
})or nil,
ab.NewRoundFrame(an,"Squircle",{
Size=UDim2.new(1,0,1,0),
Name="Frame",
ThemeTag={
ImageColor3="LabelBackground",
ImageTransparency="LabelBackgroundTransparency",
},


},{
ac("UIPadding",{
PaddingTop=UDim.new(0,ah~="Textarea"and 0 or 12),
PaddingLeft=UDim.new(0,12),
PaddingRight=UDim.new(0,12),
PaddingBottom=UDim.new(0,ah~="Textarea"and 0 or 12),
}),
ac("UIListLayout",{
FillDirection="Horizontal",
Padding=UDim.new(0,8),
VerticalAlignment=ah~="Textarea"and"Center"or"Top",
HorizontalAlignment="Left",
}),
ao,
aq,
}),
}),
})










if aj then
ab.AddSignal(aq:GetPropertyChangedSignal"Text",function()
if ai then
ab.SafeCallback(ai,aq.Text)
end
end)
else
ab.AddSignal(aq.FocusLost,function()
if ai then
ab.SafeCallback(ai,aq.Text)
end
end)
end

return ar
end

return aa end function a.o()

local aa=a.load'd'
local ab=aa.New
local ac=aa.Tween




local ad={
Holder=nil,

Parent=nil,
}

function ad.Create(ae,af,ag,ah,ai)
local aj={
UICorner=28,
UIPadding=12,

Window=ag,
WindUI=ah,

UIElements={},
}

if ae then
aj.UIPadding=0
end
if ae then
aj.UICorner=26
end

af=af or"Dialog"

if not ae then
aj.UIElements.FullScreen=ab("Frame",{
ZIndex=999,
BackgroundTransparency=1,
BackgroundColor3=Color3.fromHex"#000000",
Size=UDim2.new(1,0,1,0),
Active=false,
Visible=false,
Parent=ad.Parent
or(ag and ag.UIElements and ag.UIElements.Main and ag.UIElements.Main.Main),
},{
ab("UICorner",{
CornerRadius=UDim.new(0,ag.UICorner),
}),
})
end

ab("ImageLabel",{
Image="rbxassetid://8992230677",
ThemeTag={
ImageColor3="WindowShadow",

},
ImageTransparency=1,
Size=UDim2.new(1,100,1,100),
Position=UDim2.new(0,-50,0,-50),
ScaleType="Slice",
SliceCenter=Rect.new(99,99,99,99),
BackgroundTransparency=1,
ZIndex=-999999999999999,
Name="Blur",
})

aj.UIElements.Main=ab("Frame",{
Size=UDim2.new(0,280,0,0),
ThemeTag={
BackgroundColor3=af.."Background",
},
AutomaticSize="Y",
BackgroundTransparency=1,
Visible=false,
ZIndex=99999,
},{
ab("UIPadding",{
PaddingTop=UDim.new(0,aj.UIPadding),
PaddingLeft=UDim.new(0,aj.UIPadding),
PaddingRight=UDim.new(0,aj.UIPadding),
PaddingBottom=UDim.new(0,aj.UIPadding),
}),
})

aj.UIElements.MainContainer=aa.NewRoundFrame(aj.UICorner,"Squircle",{
Visible=false,

ImageTransparency=ae and 0.15 or 0,
Parent=ai or aj.UIElements.FullScreen,
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
AutomaticSize="XY",
ThemeTag={
ImageColor3=af.."Background",
ImageTransparency=af.."BackgroundTransparency",
},
ZIndex=9999,
},{






aj.UIElements.Main,




















})

function aj.Open(ak)
if not ae then
aj.UIElements.FullScreen.Visible=true
aj.UIElements.FullScreen.Active=true
end

task.spawn(function()
aj.UIElements.MainContainer.Visible=true

if not ae then
ac(aj.UIElements.FullScreen,0.1,{BackgroundTransparency=0.65}):Play()
end
ac(aj.UIElements.MainContainer,0.1,{ImageTransparency=0}):Play()


task.spawn(function()
task.wait(0.05)
aj.UIElements.Main.Visible=true
end)
end)
end
function aj.Close(ak)
if not ae then
ac(aj.UIElements.FullScreen,0.1,{BackgroundTransparency=1}):Play()
aj.UIElements.FullScreen.Active=false
task.spawn(function()
task.wait(0.1)
aj.UIElements.FullScreen.Visible=false
end)
end
aj.UIElements.Main.Visible=false

ac(aj.UIElements.MainContainer,0.1,{ImageTransparency=1}):Play()



task.spawn(function()
task.wait(0.1)
if not ae then
aj.UIElements.FullScreen:Destroy()
else
aj.UIElements.MainContainer:Destroy()
end
end)

return function()end
end


return aj
end

return ad end function a.p()

local aa={}

local ab=a.load'd'
local ac=ab.New
local ad=ab.Tween

local ae=a.load'm'.New
local af=a.load'n'.New

function aa.new(ag,ah,ai,aj)
local ak=a.load'o'
local al=ak.Create(true,"Popup",ag.Window,ag.WindUI,ag.WindUI.ScreenGui.KeySystem)

local am={}

local an

local ao=(ag.KeySystem.Thumbnail and ag.KeySystem.Thumbnail.Width)or 200

local ap=430
if ag.KeySystem.Thumbnail and ag.KeySystem.Thumbnail.Image then
ap=430+(ao/2)
end

al.UIElements.Main.AutomaticSize="Y"
al.UIElements.Main.Size=UDim2.new(0,ap,0,0)

local aq

if ag.Icon then
aq=
ab.Image(ag.Icon,ag.Title..":"..ag.Icon,0,"Temp","KeySystem",ag.IconThemed)
aq.Size=UDim2.new(0,24,0,24)
aq.LayoutOrder=-1
end

local ar=ac("TextLabel",{
AutomaticSize="XY",
BackgroundTransparency=1,
Text=ag.KeySystem.Title or ag.Title,
FontFace=Font.new(ab.Font,Enum.FontWeight.SemiBold),
ThemeTag={
TextColor3="Text",
},
TextSize=20,
})

local as=ac("TextLabel",{
AutomaticSize="XY",
BackgroundTransparency=1,
Text="Key System",
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,0,0.5,0),
TextTransparency=1,
FontFace=Font.new(ab.Font,Enum.FontWeight.Medium),
ThemeTag={
TextColor3="Text",
},
TextSize=16,
})

local at=ac("Frame",{
BackgroundTransparency=1,
AutomaticSize="XY",
},{
ac("UIListLayout",{
Padding=UDim.new(0,14),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
aq,
ar,
})

local au=ac("Frame",{
AutomaticSize="Y",
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,
},{





at,
as,
})

local av=af("Enter Key","key",nil,"Input",function(av)
an=av
end)

local aw
if ag.KeySystem.Note and ag.KeySystem.Note~=""then
aw=ac("TextLabel",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
FontFace=Font.new(ab.Font,Enum.FontWeight.Medium),
TextXAlignment="Left",
Text=ag.KeySystem.Note,
TextSize=18,
TextTransparency=0.4,
ThemeTag={
TextColor3="Text",
},
BackgroundTransparency=1,
RichText=true,
TextWrapped=true,
})
end

local ax=ac("Frame",{
Size=UDim2.new(1,0,0,42),
BackgroundTransparency=1,
},{
ac("Frame",{
BackgroundTransparency=1,
AutomaticSize="X",
Size=UDim2.new(0,0,1,0),
},{
ac("UIListLayout",{
Padding=UDim.new(0,9),
FillDirection="Horizontal",
}),
}),
})

local ay
if ag.KeySystem.Thumbnail and ag.KeySystem.Thumbnail.Image then
local az
if ag.KeySystem.Thumbnail.Title then
az=ac("TextLabel",{
Text=ag.KeySystem.Thumbnail.Title,
ThemeTag={
TextColor3="Text",
},
TextSize=18,
FontFace=Font.new(ab.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
AutomaticSize="XY",
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
})
end
ay=ac("ImageLabel",{
Image=ag.KeySystem.Thumbnail.Image,
BackgroundTransparency=1,
Size=UDim2.new(0,ao,1,-12),
Position=UDim2.new(0,6,0,6),
Parent=al.UIElements.Main,
ScaleType="Crop",
},{
az,
ac("UICorner",{
CornerRadius=UDim.new(0,20),
}),
})
end

ac("Frame",{

Size=UDim2.new(1,ay and-ao or 0,1,0),
Position=UDim2.new(0,ay and ao or 0,0,0),
BackgroundTransparency=1,
Parent=al.UIElements.Main,
},{
ac("Frame",{

Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
},{
ac("UIListLayout",{
Padding=UDim.new(0,18),
FillDirection="Vertical",
}),
au,
aw,
av,
ax,
ac("UIPadding",{
PaddingTop=UDim.new(0,16),
PaddingLeft=UDim.new(0,16),
PaddingRight=UDim.new(0,16),
PaddingBottom=UDim.new(0,16),
}),
}),
})





local az=ae("Exit","log-out",function()
al:Close()()
end,"Tertiary",ax.Frame)

if ay then
az.Parent=ay
az.Size=UDim2.new(0,0,0,42)
az.Position=UDim2.new(0,10,1,-10)
az.AnchorPoint=Vector2.new(0,1)
end

if ag.KeySystem.URL then
ae("Get key","key",function()
setclipboard(ag.KeySystem.URL)
end,"Secondary",ax.Frame)
end

if ag.KeySystem.API then








local aA=240
local aB=false
local b=ae("Get key","key",nil,"Secondary",ax.Frame)

local d=ab.NewRoundFrame(99,"Squircle",{
Size=UDim2.new(0,1,1,0),
ThemeTag={
ImageColor3="Text",
},
ImageTransparency=0.9,
})

ac("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(0,0,1,0),
AutomaticSize="X",
Parent=b.Frame,
},{
d,
ac("UIPadding",{
PaddingLeft=UDim.new(0,5),
PaddingRight=UDim.new(0,5),
}),
})

local f=ab.Image("chevron-down","chevron-down",0,"Temp","KeySystem",true)

f.Size=UDim2.new(1,0,1,0)

ac("Frame",{
Size=UDim2.new(0,21,0,21),
Parent=b.Frame,
BackgroundTransparency=1,
},{
f,
})

local g=ab.NewRoundFrame(15,"Squircle",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
ThemeTag={
ImageColor3="Background",
},
},{
ac("UIPadding",{
PaddingTop=UDim.new(0,5),
PaddingLeft=UDim.new(0,5),
PaddingRight=UDim.new(0,5),
PaddingBottom=UDim.new(0,5),
}),
ac("UIListLayout",{
FillDirection="Vertical",
Padding=UDim.new(0,5),
}),
})

local h=ac("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(0,aA,0,0),
ClipsDescendants=true,
AnchorPoint=Vector2.new(1,0),
Parent=b,
Position=UDim2.new(1,0,1,15),
},{
g,
})

ac("TextLabel",{
Text="Select Service",
BackgroundTransparency=1,
FontFace=Font.new(ab.Font,Enum.FontWeight.Medium),
ThemeTag={TextColor3="Text"},
TextTransparency=0.2,
TextSize=16,
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
TextWrapped=true,
TextXAlignment="Left",
Parent=g,
},{
ac("UIPadding",{
PaddingTop=UDim.new(0,10),
PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10),
PaddingBottom=UDim.new(0,10),
}),
})

for i,l in next,ag.KeySystem.API do
local m=ag.WindUI.Services[l.Type]
if m then
local p={}
for r,u in next,m.Args do
table.insert(p,l[u])
end

local r=m.New(table.unpack(p))
r.Type=l.Type
table.insert(am,r)

local u=ab.Image(
l.Icon or m.Icon or Icons[l.Type]or"user",
l.Icon or m.Icon or Icons[l.Type]or"user",
0,
"Temp",
"KeySystem",
true
)
u.Size=UDim2.new(0,24,0,24)

local v=ab.NewRoundFrame(10,"Squircle",{
Size=UDim2.new(1,0,0,0),
ThemeTag={ImageColor3="Text"},
ImageTransparency=1,
Parent=g,
AutomaticSize="Y",
},{
ac("UIListLayout",{
FillDirection="Horizontal",
Padding=UDim.new(0,10),
VerticalAlignment="Center",
}),
u,
ac("UIPadding",{
PaddingTop=UDim.new(0,10),
PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10),
PaddingBottom=UDim.new(0,10),
}),
ac("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,-34,0,0),
AutomaticSize="Y",
},{
ac("UIListLayout",{
FillDirection="Vertical",
Padding=UDim.new(0,5),
HorizontalAlignment="Center",
}),
ac("TextLabel",{
Text=l.Title or m.Name,
BackgroundTransparency=1,
FontFace=Font.new(ab.Font,Enum.FontWeight.Medium),
ThemeTag={TextColor3="Text"},
TextTransparency=0.05,
TextSize=18,
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
TextWrapped=true,
TextXAlignment="Left",
}),
ac("TextLabel",{
Text=l.Desc or"",
BackgroundTransparency=1,
FontFace=Font.new(ab.Font,Enum.FontWeight.Regular),
ThemeTag={TextColor3="Text"},
TextTransparency=0.2,
TextSize=16,
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
TextWrapped=true,
Visible=l.Desc and true or false,
TextXAlignment="Left",
}),
}),
},true)

ab.AddSignal(v.MouseEnter,function()
ad(v,0.08,{ImageTransparency=0.95}):Play()
end)
ab.AddSignal(v.InputEnded,function()
ad(v,0.08,{ImageTransparency=1}):Play()
end)
ab.AddSignal(v.MouseButton1Click,function()
r.Copy()
ag.WindUI:Notify{
Title="Key System",
Content="Key link copied to clipboard.",
Image="key",
}
end)
end
end

ab.AddSignal(b.MouseButton1Click,function()
if not aB then
ad(
h,
0.3,
{Size=UDim2.new(0,aA,0,g.AbsoluteSize.Y+1)},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
ad(f,0.3,{Rotation=180},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
else
ad(
h,
0.25,
{Size=UDim2.new(0,aA,0,0)},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
ad(f,0.25,{Rotation=0},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end
aB=not aB
end)
end

local function handleSuccess(aA)
al:Close()()
writefile((ag.Folder or"Temp").."/"..ah..".key",tostring(aA))
task.wait(0.4)
ai(true)
end

local aA=ae("Submit","arrow-right",function()
local aA=tostring(an or"empty")local aB=
ag.Folder or ag.Title

if ag.KeySystem.KeyValidator then
local b=ag.KeySystem.KeyValidator(aA)

if b then
if ag.KeySystem.SaveKey then
handleSuccess(aA)
else
al:Close()()
task.wait(0.4)
ai(true)
end
else
ag.WindUI:Notify{
Title="Key System. Error",
Content="Invalid key.",
Icon="triangle-alert",
}
end
elseif not ag.KeySystem.API then
local b=type(ag.KeySystem.Key)=="table"and table.find(ag.KeySystem.Key,aA)
or ag.KeySystem.Key==aA

if b then
if ag.KeySystem.SaveKey then
handleSuccess(aA)
else
al:Close()()
task.wait(0.4)
ai(true)
end
end
else
local b,d
for f,g in next,am do
local h,i=g.Verify(aA)
if h then
b,d=true,i
break
end
d=i
end

if b then
handleSuccess(aA)
else
ag.WindUI:Notify{
Title="Key System. Error",
Content=d,
Icon="triangle-alert",
}
end
end
end,"Primary",ax)

aA.AnchorPoint=Vector2.new(1,0.5)
aA.Position=UDim2.new(1,0,0.5,0)










al:Open()
end

return aa end function a.q()




local aa=(cloneref or clonereference or function(aa)return aa end)


local function map(ab,ac,ad,ae,af)
return(ab-ac)*(af-ae)/(ad-ac)+ae
end

local function viewportPointToWorld(ab,ac)
local ad=aa(game:GetService"Workspace").CurrentCamera:ScreenPointToRay(ab.X,ab.Y)
return ad.Origin+ad.Direction*ac
end

local function getOffset()
local ab=aa(game:GetService"Workspace").CurrentCamera.ViewportSize.Y
return map(ab,0,2560,8,56)
end

return{viewportPointToWorld,getOffset}end function a.r()



local aa=(cloneref or clonereference or function(aa)return aa end)


local ab=a.load'd'
local ac=ab.New


local ad,ae=unpack(a.load'q')
local af=Instance.new("Folder",aa(game:GetService"Workspace").CurrentCamera)


local function createAcrylic()
local ag=ac("Part",{
Name="Body",
Color=Color3.new(0,0,0),
Material=Enum.Material.Glass,
Size=Vector3.new(1,1,0),
Anchored=true,
CanCollide=false,
Locked=true,
CastShadow=false,
Transparency=0.98,
},{
ac("SpecialMesh",{
MeshType=Enum.MeshType.Brick,
Offset=Vector3.new(0,0,-1E-6),
}),
})

return ag
end


local function createAcrylicBlur(ag)
local ah={}

ag=ag or 0.001
local ai={
topLeft=Vector2.new(),
topRight=Vector2.new(),
bottomRight=Vector2.new(),
}
local aj=createAcrylic()
aj.Parent=af

local function updatePositions(ak,al)
ai.topLeft=al
ai.topRight=al+Vector2.new(ak.X,0)
ai.bottomRight=al+ak
end

local function render()
local ak=aa(game:GetService"Workspace").CurrentCamera
if ak then
ak=ak.CFrame
end
local al=ak
if not al then
al=CFrame.new()
end

local am=al
local an=ai.topLeft
local ao=ai.topRight
local ap=ai.bottomRight

local aq=ad(an,ag)
local ar=ad(ao,ag)
local as=ad(ap,ag)

local at=(ar-aq).Magnitude
local au=(ar-as).Magnitude

aj.CFrame=
CFrame.fromMatrix((aq+as)/2,am.XVector,am.YVector,am.ZVector)
aj.Mesh.Scale=Vector3.new(at,au,0)
end

local function onChange(ak)
local al=ae()
local am=ak.AbsoluteSize-Vector2.new(al,al)
local an=ak.AbsolutePosition+Vector2.new(al/2,al/2)

updatePositions(am,an)
task.spawn(render)
end

local function renderOnChange()
local ak=aa(game:GetService"Workspace").CurrentCamera
if not ak then
return
end

table.insert(ah,ak:GetPropertyChangedSignal"CFrame":Connect(render))
table.insert(ah,ak:GetPropertyChangedSignal"ViewportSize":Connect(render))
table.insert(ah,ak:GetPropertyChangedSignal"FieldOfView":Connect(render))
task.spawn(render)
end

aj.Destroying:Connect(function()
for ak,al in ah do
pcall(function()
al:Disconnect()
end)
end
end)

renderOnChange()

return onChange,aj
end

return function(ag)
local ah={}
local ai,aj=createAcrylicBlur(ag)

local ak=ac("Frame",{
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
})

ab.AddSignal(ak:GetPropertyChangedSignal"AbsolutePosition",function()
ai(ak)
end)

ab.AddSignal(ak:GetPropertyChangedSignal"AbsoluteSize",function()
ai(ak)
end)

ah.AddParent=function(al)
ab.AddSignal(al:GetPropertyChangedSignal"Visible",function()

end)
end

ah.SetVisibility=function(al)
aj.Transparency=al and 0.98 or 1
end

ah.Frame=ak
ah.Model=aj

return ah
end end function a.s()


local aa=a.load'd'
local ab=a.load'r'

local ac=aa.New

return function(ad)
local ae={}

ae.Frame=ac("Frame",{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
BackgroundColor3=Color3.fromRGB(255,255,255),
BorderSizePixel=0,
},{












ac("UICorner",{
CornerRadius=UDim.new(0,8),
}),

ac("Frame",{
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
Name="Background",
ThemeTag={
BackgroundColor3="AcrylicMain",
},
},{
ac("UICorner",{
CornerRadius=UDim.new(0,8),
}),
}),

ac("Frame",{
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
},{










}),

ac("ImageLabel",{
Image="rbxassetid://9968344105",
ImageTransparency=0.98,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.new(0,128,0,128),
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
},{
ac("UICorner",{
CornerRadius=UDim.new(0,8),
}),
}),

ac("ImageLabel",{
Image="rbxassetid://9968344227",
ImageTransparency=0.9,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.new(0,128,0,128),
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
ThemeTag={
ImageTransparency="AcrylicNoise",
},
},{
ac("UICorner",{
CornerRadius=UDim.new(0,8),
}),
}),

ac("Frame",{
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
ZIndex=2,
},{










}),
})


local af

task.wait()
if ad.UseAcrylic then
af=ab()

af.Frame.Parent=ae.Frame
ae.Model=af.Model
ae.AddParent=af.AddParent
ae.SetVisibility=af.SetVisibility
end

return ae,af
end end function a.t()



local aa=(cloneref or clonereference or function(aa)return aa end)


local ab={
AcrylicBlur=a.load'r',

AcrylicPaint=a.load's',
}

function ab.init()
local ac=Instance.new"DepthOfFieldEffect"
ac.FarIntensity=0
ac.InFocusRadius=0.1
ac.NearIntensity=1

local ad={}

function ab.Enable()
for ae,af in pairs(ad)do
af.Enabled=false
end
ac.Parent=aa(game:GetService"Lighting")
end

function ab.Disable()
for ae,af in pairs(ad)do
af.Enabled=af.enabled
end
ac.Parent=nil
end

local function registerDefaults()
local function register(ae)
if ae:IsA"DepthOfFieldEffect"then
ad[ae]={enabled=ae.Enabled}
end
end

for ae,af in pairs(aa(game:GetService"Lighting"):GetChildren())do
register(af)
end

if aa(game:GetService"Workspace").CurrentCamera then
for ae,af in pairs(aa(game:GetService"Workspace").CurrentCamera:GetChildren())do
register(af)
end
end
end

registerDefaults()
ab.Enable()
end

return ab end function a.u()

local aa={}

local ab=a.load'd'
local ac=ab.New local ad=
ab.Tween


function aa.new(ae,af)
local ag={
Title=ae.Title or"Dialog",
Content=ae.Content,
Icon=ae.Icon,
IconThemed=ae.IconThemed,
Thumbnail=ae.Thumbnail,
Buttons=ae.Buttons,

IconSize=22,
}

local ah=a.load'o'
local ai=ah.Create(true,"Popup",ae.WindUI.Window,ae.WindUI,af)

local aj=200

local ak=430
if ag.Thumbnail and ag.Thumbnail.Image then
ak=430+(aj/2)
end

ai.UIElements.Main.AutomaticSize="Y"
ai.UIElements.Main.Size=UDim2.new(0,ak,0,0)



local al

if ag.Icon then
al=ab.Image(
ag.Icon,
ag.Title..":"..ag.Icon,
0,
ae.WindUI.Window,
"Popup",
true,
ae.IconThemed,
"PopupIcon"
)
al.Size=UDim2.new(0,ag.IconSize,0,ag.IconSize)
al.LayoutOrder=-1
end


local am=ac("TextLabel",{
AutomaticSize="Y",
BackgroundTransparency=1,
Text=ag.Title,
TextXAlignment="Left",
FontFace=Font.new(ab.Font,Enum.FontWeight.SemiBold),
ThemeTag={
TextColor3="PopupTitle",
},
TextSize=20,
TextWrapped=true,
Size=UDim2.new(1,al and-ag.IconSize-14 or 0,0,0)
})

local an=ac("Frame",{
BackgroundTransparency=1,
AutomaticSize="XY",
},{
ac("UIListLayout",{
Padding=UDim.new(0,14),
FillDirection="Horizontal",
VerticalAlignment="Center"
}),
al,am
})

local ao=ac("Frame",{
AutomaticSize="Y",
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,
},{





an,
})

local ap
if ag.Content and ag.Content~=""then
ap=ac("TextLabel",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
FontFace=Font.new(ab.Font,Enum.FontWeight.Medium),
TextXAlignment="Left",
Text=ag.Content,
TextSize=18,
TextTransparency=.2,
ThemeTag={
TextColor3="PopupContent",
},
BackgroundTransparency=1,
RichText=true,
TextWrapped=true,
})
end

local aq=ac("Frame",{
Size=UDim2.new(1,0,0,42),
BackgroundTransparency=1,
},{
ac("UIListLayout",{
Padding=UDim.new(0,9),
FillDirection="Horizontal",
HorizontalAlignment="Right"
})
})

local ar
if ag.Thumbnail and ag.Thumbnail.Image then
local as
if ag.Thumbnail.Title then
as=ac("TextLabel",{
Text=ag.Thumbnail.Title,
ThemeTag={
TextColor3="Text",
},
TextSize=18,
FontFace=Font.new(ab.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
AutomaticSize="XY",
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
})
end
ar=ac("ImageLabel",{
Image=ag.Thumbnail.Image,
BackgroundTransparency=1,
Size=UDim2.new(0,aj,1,0),
Parent=ai.UIElements.Main,
ScaleType="Crop"
},{
as,
ac("UICorner",{
CornerRadius=UDim.new(0,0),
})
})
end

ac("Frame",{

Size=UDim2.new(1,ar and-aj or 0,1,0),
Position=UDim2.new(0,ar and aj or 0,0,0),
BackgroundTransparency=1,
Parent=ai.UIElements.Main
},{
ac("Frame",{

Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
},{
ac("UIListLayout",{
Padding=UDim.new(0,18),
FillDirection="Vertical",
}),
ao,
ap,
aq,
ac("UIPadding",{
PaddingTop=UDim.new(0,16),
PaddingLeft=UDim.new(0,16),
PaddingRight=UDim.new(0,16),
PaddingBottom=UDim.new(0,16),
})
}),
})

local as=a.load'm'.New

for at,au in next,ag.Buttons do
as(au.Title,au.Icon,au.Callback,au.Variant,aq,ai)
end

ai:Open()


return ag
end

return aa end function a.v()
return function(aa,ab)
return{
Dark={
Name="Dark",

Accent=Color3.fromHex"#18181b",
Dialog=Color3.fromHex"#1a1a1a",
Outline=Color3.fromHex"#FFFFFF",
Text=Color3.fromHex"#FFFFFF",
Placeholder=Color3.fromHex"#a1a1a1",
Background=Color3.fromHex"#101010",
Button=Color3.fromHex"#52525b",
Icon=Color3.fromHex"#a1a1aa",
Toggle=Color3.fromHex"#33C759",
Slider=Color3.fromHex"#0091FF",
Checkbox=Color3.fromHex"#0091FF",

PanelBackground=Color3.fromHex"#FFFFFF",
PanelBackgroundTransparency=0.95,

SliderIcon=Color3.fromHex"#908F95",
Primary=Color3.fromHex"#0091FF",


LabelBackground=Color3.fromHex"#000000",
LabelBackgroundTransparency=0.83,

ElementBackground=Color3.fromHex"#2A2A2C",
ElementBackgroundTransparency=0,
},

Light={
Name="Light",

Accent=Color3.fromHex"#efefef",
Dialog=Color3.fromHex"#f4f4f5",
Outline=Color3.fromHex"#ffffff",
Text=Color3.fromHex"#000000",
Placeholder=Color3.fromHex"#555555",
Background=Color3.fromHex"#FFFFFF",
Button=Color3.fromHex"#18181b",
Icon=Color3.fromHex"#52525b",
Toggle=Color3.fromHex"#33C759",
Slider=Color3.fromHex"#0091FF",
Checkbox=Color3.fromHex"#0091FF",

DropdownTabBackground=Color3.fromHex"#bebebe",
DropdownBackground=Color3.fromHex"#ffffff",

TabBackground=Color3.fromHex"#ffffff",
TabBackgroundHover=Color3.fromHex"#f3f3f3",
TabBackgroundHoverTransparency=0,
TabBackgroundActive=Color3.fromHex"#efefef",
TabBackgroundActiveTransparency=0,

PanelBackground=Color3.fromHex"#efefef",
PanelBackgroundTransparency=0,

LabelBackground=Color3.fromHex"#efefef",
LabelBackgroundTransparency=0,

ElementBackground=Color3.fromHex"#ffffff",
ElementBackgroundTransparency=0,
},

Rose={
Name="Rose",

Accent=Color3.fromHex"#be185d",
Dialog=Color3.fromHex"#4c0519",

Text=Color3.fromHex"#fdf2f8",
Placeholder=Color3.fromHex"#d67aa6",
Background=Color3.fromHex"#1f0308",
Button=Color3.fromHex"#e95f74",
Icon=Color3.fromHex"#fb7185",

ElementBackground=Color3.fromHex"#381E23",
ElementBackgroundTransparency=0,
},

Plant={
Name="Plant",

Accent=Color3.fromHex"#166534",
Dialog=Color3.fromHex"#052e16",

Text=Color3.fromHex"#f0fdf4",
Placeholder=Color3.fromHex"#4fbf7a",
Background=Color3.fromHex"#0a1b0f",
Button=Color3.fromHex"#16a34a",
Icon=Color3.fromHex"#4ade80",

ElementBackground=Color3.fromHex"#28342A",
ElementBackgroundTransparency=0,
},

Red={
Name="Red",

Accent=Color3.fromHex"#991b1b",
Dialog=Color3.fromHex"#450a0a",

Text=Color3.fromHex"#fef2f2",
Placeholder=Color3.fromHex"#d95353",
Background=Color3.fromHex"#1c0606",
Button=Color3.fromHex"#dc2626",
Icon=Color3.fromHex"#ef4444",

ElementBackground=Color3.fromHex"#322221",
ElementBackgroundTransparency=0,
},

Indigo={
Name="Indigo",

Accent=Color3.fromHex"#3730a3",
Dialog=Color3.fromHex"#1e1b4b",

Text=Color3.fromHex"#f1f5f9",
Placeholder=Color3.fromHex"#7078d9",
Background=Color3.fromHex"#0f0a2e",
Button=Color3.fromHex"#4f46e5",
Icon=Color3.fromHex"#6366f1",

ElementBackground=Color3.fromHex"#282543",
ElementBackgroundTransparency=0,
},

Sky={
Name="Sky",

Accent=Color3.fromHex"#00d4ff",
Dialog=Color3.fromHex"#0a4d66",

Text=Color3.fromHex"#e6f7ff",
Placeholder=Color3.fromHex"#66b3cc",
Background=Color3.fromHex"#051a26",
Button=Color3.fromHex"#00a8cc",
Icon=Color3.fromHex"#2db8d9",

Toggle=Color3.fromHex"#00d9d9",
Slider=Color3.fromHex"#00d4ff",
Checkbox=Color3.fromHex"#00d4ff",

PanelBackground=Color3.fromHex"#0d3a47",
PanelBackgroundTransparency=0.8,

ElementBackground=Color3.fromHex"#172E3B",
ElementBackgroundTransparency=0,
},

Violet={
Name="Violet",

Accent=Color3.fromHex"#6d28d9",
Dialog=Color3.fromHex"#3c1361",

Text=Color3.fromHex"#faf5ff",
Placeholder=Color3.fromHex"#8f7ee0",
Background=Color3.fromHex"#1e0a3e",
Button=Color3.fromHex"#7c3aed",
Icon=Color3.fromHex"#8b5cf6",

ElementBackground=Color3.fromHex"#342650",
ElementBackgroundTransparency=0,
},

Amber={
Name="Amber",

Accent=aa:Gradient({
["0"]={Color=Color3.fromHex"#b45309",Transparency=0},
["100"]={Color=Color3.fromHex"#d97706",Transparency=0},
},{Rotation=45}),

Dialog=aa:Gradient({
["0"]={Color=Color3.fromHex"#451a03",Transparency=0},
["100"]={Color=Color3.fromHex"#6b2e05",Transparency=0},
},{Rotation=90}),






Text=aa:Gradient({
["0"]={Color=Color3.fromHex"#fffbeb",Transparency=0},
["100"]={Color=Color3.fromHex"#fff7ed",Transparency=0},
},{Rotation=45}),

Placeholder=aa:Gradient({
["0"]={Color=Color3.fromHex"#d1a326",Transparency=0},
["100"]={Color=Color3.fromHex"#fbbf24",Transparency=0},
},{Rotation=45}),

Background=aa:Gradient({
["0"]={Color=Color3.fromHex"#1c1003",Transparency=0},
["100"]={Color=Color3.fromHex"#3f210d",Transparency=0},
},{Rotation=90}),

Button=aa:Gradient({
["0"]={Color=Color3.fromHex"#d97706",Transparency=0},
["100"]={Color=Color3.fromHex"#f59e0b",Transparency=0},
},{Rotation=45}),

Icon=Color3.fromHex"#f59e0b",

Toggle=aa:Gradient({
["0"]={Color=Color3.fromHex"#d97706",Transparency=0},
["100"]={Color=Color3.fromHex"#f59e0b",Transparency=0},
},{Rotation=45}),

Slider=Color3.fromHex"#d97706",

Checkbox=aa:Gradient({
["0"]={Color=Color3.fromHex"#d97706",Transparency=0},
["100"]={Color=Color3.fromHex"#fbbf24",Transparency=0},
},{Rotation=45}),

PanelBackground=Color3.fromHex"#FFFFFF",
PanelBackgroundTransparency=0.95,

ElementBackground=Color3.fromHex"#3A2E22",
ElementBackgroundTransparency=0,
},

Emerald={
Name="Emerald",

Accent=Color3.fromHex"#047857",
Dialog=Color3.fromHex"#022c22",

Text=Color3.fromHex"#ecfdf5",
Placeholder=Color3.fromHex"#3fbf8f",
Background=Color3.fromHex"#011411",
Button=Color3.fromHex"#059669",
Icon=Color3.fromHex"#10b981",

ElementBackground=Color3.fromHex"#202E2A",
ElementBackgroundTransparency=0,
},

Midnight={
Name="Midnight",

Accent=Color3.fromHex"#1e3a8a",
Dialog=Color3.fromHex"#0c1e42",

Text=Color3.fromHex"#dbeafe",
Placeholder=Color3.fromHex"#2f74d1",
Background=Color3.fromHex"#0a0f1e",
Button=Color3.fromHex"#2563eb",
Primary=Color3.fromHex"#2563eb",
Icon=Color3.fromHex"#5591f4",

ElementBackground=Color3.fromHex"#242836",
ElementBackgroundTransparency=0,
},

Crimson={
Name="Crimson",

Accent=Color3.fromHex"#b91c1c",
Dialog=Color3.fromHex"#450a0a",

Text=Color3.fromHex"#fef2f2",
Placeholder=Color3.fromHex"#6f757b",
Background=Color3.fromHex"#0c0404",
Button=Color3.fromHex"#991b1b",
Icon=Color3.fromHex"#dc2626",

ElementBackground=Color3.fromHex"#251F1F",
ElementBackgroundTransparency=0,
},

MonokaiPro={
Name="Monokai Pro",

Accent=Color3.fromHex"#fc9867",
Dialog=Color3.fromHex"#1e1e1e",

Text=Color3.fromHex"#fcfcfa",
Placeholder=Color3.fromHex"#afafaf",
Background=Color3.fromHex"#191622",
Button=Color3.fromHex"#ab9df2",
Icon=Color3.fromHex"#a9dc76",

ElementBackground=Color3.fromHex"#323039",
ElementBackgroundTransparency=0,

Metadata={
PullRequest=23,
},
},

CottonCandy={
Name="Cotton Candy",

Accent=Color3.fromHex"#ec4899",
Dialog=Color3.fromHex"#2d1b3d",

Text=Color3.fromHex"#fdf2f8",
Placeholder=Color3.fromHex"#8a5fd3",
Background=Color3.fromHex"#1a0b2e",
Button=Color3.fromHex"#d946ef",
Slider=Color3.fromHex"#d946ef",
Icon=Color3.fromHex"#06b6d4",

ElementBackground=Color3.fromHex"#312643",
ElementBackgroundTransparency=0,
},

Mellowsi={
Name="Mellowsi",

Accent=Color3.fromHex"#342A1E",
Dialog=Color3.fromHex"#291C13",

Text=Color3.fromHex"#F5EBDD",
Placeholder=Color3.fromHex"#9C8A73",
Background=Color3.fromHex"#1C1002",
Button=Color3.fromHex"#342A1E",
Icon=Color3.fromHex"#C9B79C",

Toggle=Color3.fromHex"#a9873f",
Slider=Color3.fromHex"#C9A24D",
Checkbox=Color3.fromHex"#C9A24D",

ElementBackground=Color3.fromHex"#33291E",
ElementBackgroundTransparency=0,

Metadata={
PullRequest=52,
},
},

Rainbow={
Name="Rainbow",

Accent=aa:Gradient({
["0"]={Color=Color3.fromHex"#00ff41",Transparency=0},
["33"]={Color=Color3.fromHex"#00ffff",Transparency=0},
["66"]={Color=Color3.fromHex"#0080ff",Transparency=0},
["100"]={Color=Color3.fromHex"#8000ff",Transparency=0},
},{Rotation=45}),

Dialog=aa:Gradient({
["0"]={Color=Color3.fromHex"#ff0080",Transparency=0},
["25"]={Color=Color3.fromHex"#8000ff",Transparency=0},
["50"]={Color=Color3.fromHex"#0080ff",Transparency=0},
["75"]={Color=Color3.fromHex"#00ff80",Transparency=0},
["100"]={Color=Color3.fromHex"#ff8000",Transparency=0},
},{Rotation=135}),


Text=Color3.fromHex"#ffffff",
Placeholder=Color3.fromHex"#00ff80",

Background=aa:Gradient({
["0"]={Color=Color3.fromHex"#ff0040",Transparency=0},
["20"]={Color=Color3.fromHex"#ff4000",Transparency=0},
["40"]={Color=Color3.fromHex"#ffff00",Transparency=0},
["60"]={Color=Color3.fromHex"#00ff40",Transparency=0},
["80"]={Color=Color3.fromHex"#0040ff",Transparency=0},
["100"]={Color=Color3.fromHex"#4000ff",Transparency=0},
},{Rotation=90}),

Button=aa:Gradient({
["0"]={Color=Color3.fromHex"#ff0080",Transparency=0},
["25"]={Color=Color3.fromHex"#ff8000",Transparency=0},
["50"]={Color=Color3.fromHex"#ffff00",Transparency=0},
["75"]={Color=Color3.fromHex"#80ff00",Transparency=0},
["100"]={Color=Color3.fromHex"#00ffff",Transparency=0},
},{Rotation=60}),

Icon=Color3.fromHex"#ffffff",
},
}
end end function a.w()

local aa={}

local ab=a.load'd'
local ac=ab.New local ad=
ab.Tween

function aa.New(ae,af,ag,ah,ai,aj)
local ak=ai or 10
local al
if af and af~=""then
al=ac("ImageLabel",{
Image=ab.Icon(af)[1],
ImageRectSize=ab.Icon(af)[2].ImageRectSize,
ImageRectOffset=ab.Icon(af)[2].ImageRectPosition,
Size=UDim2.new(0,21,0,21),
BackgroundTransparency=1,
ThemeTag={
ImageColor3="Icon",
},
})
end

local am=ac("TextLabel",{
BackgroundTransparency=1,
TextSize=17,
FontFace=Font.new(ab.Font,Enum.FontWeight.Regular),
Size=UDim2.new(1,al and-29 or 0,1,0),
TextXAlignment="Left",
ThemeTag={
TextColor3=ah and"Placeholder"or"Text",
},
Text=ae,
})

local an=ac("TextButton",{
Size=UDim2.new(1,0,0,42),
Parent=ag,
BackgroundTransparency=1,
Text="",
},{
ac("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
},{
ab.NewRoundFrame(ak,"Squircle",{
ThemeTag={
ImageColor3="Placeholder",
},
Size=UDim2.new(1,0,1,0),
ImageTransparency=0.85,
}),
not aj and ab.NewRoundFrame(ak,"SquircleGlass",{
ThemeTag={
ImageColor3="Outline",
},
Size=UDim2.new(1,1,1,1),
ImageTransparency=0.9,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
})or nil,
ab.NewRoundFrame(ak,"Squircle",{
Size=UDim2.new(1,0,1,0),
Name="Frame",
ThemeTag={
ImageColor3="LabelBackground",
ImageTransparency="LabelBackgroundTransparency",
},


},{
ac("UIPadding",{
PaddingLeft=UDim.new(0,12),
PaddingRight=UDim.new(0,12),
}),
ac("UIListLayout",{
FillDirection="Horizontal",
Padding=UDim.new(0,8),
VerticalAlignment="Center",
HorizontalAlignment="Left",
}),
al,
am,
}),
}),
})

return an
end

return aa end function a.x()

local aa={}

local ab=cloneref or clonereference or function(ab)
return ab
end
local ac=ab(game:GetService"UserInputService")

local ad=a.load'd'
local ae=ad.New

function aa.New(af,ag,ah,ai,aj)
local ak=ae("Frame",{
Size=UDim2.new(0,ai,1,0),
BackgroundTransparency=1,
Position=UDim2.new(1,0,0,0),
AnchorPoint=Vector2.new(1,0),
Parent=ag,
ZIndex=999,
Active=true,
})

local al=ad.NewRoundFrame(ai/2,"Squircle",{
Size=UDim2.new(1,0,0,0),
ImageTransparency=0.85,
ThemeTag={ImageColor3="Text"},
Parent=ak,
})

local am=ae("Frame",{
Size=UDim2.new(1,12,1,12),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
Active=true,
ZIndex=999,
Parent=al,
})

local an=ad:GenerateUniqueID()
local ao=false
local ap,aq

local function UpdateVisuals()
local ar=af.AbsoluteCanvasSize.Y
local as=af.AbsoluteWindowSize.Y

if ar<=as then
al.Visible=false
return
end

al.Visible=true

local at=math.clamp(as/ar,0.05,1)
al.Size=UDim2.new(1,0,at,0)

local au=ar-as
local av=1-at

if au>0 then
local aw=af.CanvasPosition.Y/au
al.Position=UDim2.new(0,0,math.clamp(aw*av,0,av),0)
else
al.Position=UDim2.new(0,0,0,0)
end
end

local function StopDrag()
if aj.CurrentInput==an then
aj.CurrentInput=nil
end
ao=false
af.ScrollingEnabled=true
if ap then
ap:Disconnect()
end
if aq then
aq:Disconnect()
end
end

ad.AddSignal(am.InputBegan,function(ar)
if
ar.UserInputType~=Enum.UserInputType.MouseButton1
and ar.UserInputType~=Enum.UserInputType.Touch
then
return
end
if ao then
return
end
if aj.CurrentInput and aj.CurrentInput~=an then
return
end

aj.CurrentInput=an

ao=true
af.ScrollingEnabled=false

local as=ar.Position.Y
local at=af.CanvasPosition.Y

ap=ac.InputChanged:Connect(function(au)
if
au.UserInputType==Enum.UserInputType.MouseMovement
or au.UserInputType==Enum.UserInputType.Touch
then
local av=au.Position.Y-as

local aw=af.AbsoluteCanvasSize.Y
local ax=af.AbsoluteWindowSize.Y
local ay=math.max(aw-ax,0)

local az=ak.AbsoluteSize.Y
local aA=al.AbsoluteSize.Y
local aB=math.max(az-aA,1)

local b=av*(ay/aB)

af.CanvasPosition=
Vector2.new(af.CanvasPosition.X,math.clamp(at+b,0,ay))
end
end)

aq=ac.InputEnded:Connect(function(au)
if au.UserInputType==ar.UserInputType then
if aj.CurrentInput and aj.CurrentInput~=an then
return
end

aj.CurrentInput=nil

StopDrag()
end
end)
end)

ad.AddSignal(af:GetPropertyChangedSignal"AbsoluteWindowSize",UpdateVisuals)
ad.AddSignal(af:GetPropertyChangedSignal"AbsoluteCanvasSize",UpdateVisuals)
ad.AddSignal(af:GetPropertyChangedSignal"CanvasPosition",UpdateVisuals)

UpdateVisuals()

return ak
end

return aa end function a.y()

local aa={}

local ab=a.load'd'
local ac=ab.New
local ad=ab.Tween

function aa.New(ae,af,ag)
local ah={
Title=af.Title or"Tag",
Icon=af.Icon,
Color=af.Color or Color3.fromHex"#315dff",
Radius=af.Radius or 999,
Border=af.Border or false,

TagFrame=nil,
Height=26,
Padding=10,
TextSize=14,
IconSize=16,
}

local ai
if ah.Icon then
ai=ab.Image(ah.Icon,ah.Icon,0,af.Window,"Tag",false)

ai.Size=UDim2.new(0,ah.IconSize,0,ah.IconSize)
ai.ImageLabel.ImageColor3=typeof(ah.Color)=="Color3"
and ab.GetTextColorForHSB(ah.Color)
or typeof(ah.Color)=="string"
and(ab.GetTextColorForHSB(ab.GetThemeProperty(ah.Color,ab.Theme)))
end

local aj=ac("TextLabel",{
BackgroundTransparency=1,
AutomaticSize="XY",
TextSize=ah.TextSize,
FontFace=Font.new(ab.Font,Enum.FontWeight.SemiBold),
Text=ah.Title,
TextColor3=typeof(ah.Color)=="Color3"and ab.GetTextColorForHSB(ah.Color)or typeof(
ah.Color
)=="string"and(ab.GetTextColorForHSB(ab.GetThemeProperty(ah.Color,ab.Theme))),
})

local ak

if typeof(ah.Color)=="table"then
ak=ac"UIGradient"
for al,am in next,ah.Color do
ak[al]=am
end

aj.TextColor3=ab.GetTextColorForHSB(ab.GetAverageColor(ak))
if ai then
ai.ImageLabel.ImageColor3=ab.GetTextColorForHSB(ab.GetAverageColor(ak))
end
end

local al=ab.NewRoundFrame(ah.Radius,"Squircle",{
AutomaticSize="X",
Size=UDim2.new(0,0,0,ah.Height),
Parent=ag,
ImageColor3=typeof(ah.Color)=="Color3"and ah.Color
or typeof(ah.Color)=="table"and Color3.new(1,1,1)
or nil,
ThemeTag=typeof(ah.Color)=="string"and{
ImageColor3=ah.Color,
},
},{
ak,
ab.NewRoundFrame(ah.Radius+1,"SquircleGlass",{
Size=UDim2.new(1,1,1,1),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
ThemeTag={
ImageColor3="White",
},
ImageTransparency=0.75,
}),
ac("Frame",{
Size=UDim2.new(0,0,1,0),
AutomaticSize="X",
Name="Content",
BackgroundTransparency=1,
},{
ai,
aj,
ac("UIPadding",{
PaddingLeft=UDim.new(0,ah.Padding),
PaddingRight=UDim.new(0,ah.Padding),
}),
ac("UIListLayout",{
FillDirection="Horizontal",
VerticalAlignment="Center",
Padding=UDim.new(0,ah.Padding/1.5),
}),
}),
})

function ah.SetTitle(am,an)
ah.Title=an
aj.Text=an

return ah
end

function ah.SetColor(am,an)
ah.Color=an
if typeof(an)=="table"then
local ao=ab.GetAverageColor(an)
ad(aj,0.06,{TextColor3=ab.GetTextColorForHSB(ao)}):Play()
local ap=al:FindFirstChildOfClass"UIGradient"or ac("UIGradient",{Parent=al})
for aq,ar in next,an do
ap[aq]=ar
end
ad(al,0.06,{ImageColor3=Color3.new(1,1,1)}):Play()
else
if ak then
ak:Destroy()
end
ad(aj,0.06,{TextColor3=ab.GetTextColorForHSB(an)}):Play()
if ai then
ad(ai.ImageLabel,0.06,{ImageColor3=ab.GetTextColorForHSB(an)}):Play()
end
ad(al,0.06,{ImageColor3=an}):Play()
end

return ah
end

function ah.SetIcon(am,an)
ah.Icon=an

if an then
ai=ab.Image(an,an,0,af.Window,"Tag",false)

ai.Size=UDim2.new(0,ah.IconSize,0,ah.IconSize)
ai.Parent=al

if typeof(ah.Color)=="Color3"then
ai.ImageLabel.ImageColor3=ab.GetTextColorForHSB(ah.Color)
elseif typeof(ah.Color)=="table"then
ai.ImageLabel.ImageColor3=ab.GetTextColorForHSB(ab.GetAverageColor(ak))
end
else
if ai then
ai:Destroy()
ai=nil
end
end
return ah
end

function ah.Destroy(am)
al:Destroy()
return ah
end

ab:OnThemeChange(function(am,an)
aj.TextColor3=ab.GetTextColorForHSB(ab.GetThemeProperty(ah.Color,ab.Theme))
ai.ImageLabel.ImageColor3=
ab.GetTextColorForHSB(ab.GetThemeProperty(ah.Color,ab.Theme))
end)

return ah
end

return aa end function a.z()

local aa=(cloneref or clonereference or function(aa)return aa end)


local ab=aa(game:GetService"RunService")
local ac=aa(game:GetService"HttpService")

local ad

local ae
ae={
Folder=nil,
Path=nil,
Configs={},
Parser={
Colorpicker={
Save=function(af)
return{
__type=af.__type,
value=af.Default:ToHex(),
transparency=af.Transparency or nil,
}
end,
Load=function(af,ag)
if af and af.Update then
af:Update(Color3.fromHex(ag.value),ag.transparency or nil)
end
end
},
Dropdown={
Save=function(af)
return{
__type=af.__type,
value=af.Value,
}
end,
Load=function(af,ag)
if af and af.Select then
af:Select(ag.value)
end
end
},
Input={
Save=function(af)
return{
__type=af.__type,
value=af.Value,
}
end,
Load=function(af,ag)
if af and af.Set then
af:Set(ag.value)
end
end
},
Keybind={
Save=function(af)
return{
__type=af.__type,
value=af.Value,
}
end,
Load=function(af,ag)
if af and af.Set then
af:Set(ag.value)
end
end
},
Slider={
Save=function(af)
return{
__type=af.__type,
value=af.Value.Default,
}
end,
Load=function(af,ag)
if af and af.Set then
af:Set(tonumber(ag.value))
end
end
},
Toggle={
Save=function(af)
return{
__type=af.__type,
value=af.Value,
}
end,
Load=function(af,ag)
if af and af.Set then
af:Set(ag.value)
end
end
},
}
}

function ae.Init(af,ag)
if not ag.Folder then
warn"[ WindUI.ConfigManager ] Window.Folder is not specified."
return false
end
if ab:IsStudio()or not writefile then
warn"[ WindUI.ConfigManager ] The config system doesn't work in the studio."
return false
end

ad=ag
ae.Folder=ad.Folder
ae.Path="WindUI/"..tostring(ae.Folder).."/config/"

if not isfolder(ae.Path)then
makefolder(ae.Path)
end

local ah=ae:AllConfigs()

for ai,aj in next,ah do
if isfile and readfile and isfile(aj..".json")then
ae.Configs[aj]=readfile(aj..".json")
end
end

return ae
end

function ae.SetPath(af,ag)
if not ag then
warn"[ WindUI.ConfigManager ] Custom path is not specified."
return false
end

ae.Path=ag
if not ag:match"/$"then
ae.Path=ag.."/"
end

if not isfolder(ae.Path)then
makefolder(ae.Path)
end

return true
end

function ae.CreateConfig(af,ag,ah)
local ai={
Path=ae.Path..ag..".json",
Elements={},
CustomData={},
AutoLoad=ah or false,
Version=1.2,
}

if not ag then
return false,"No config file is selected"
end

function ai.SetAsCurrent(aj)
ad:SetCurrentConfig(ai)
end

function ai.Register(aj,ak,al)
ai.Elements[ak]=al
end

function ai.Set(aj,ak,al)
ai.CustomData[ak]=al
end

function ai.Get(aj,ak)
return ai.CustomData[ak]
end

function ai.SetAutoLoad(aj,ak)
ai.AutoLoad=ak
end

function ai.Save(aj)
if ad.PendingFlags then
for ak,al in next,ad.PendingFlags do
ai:Register(ak,al)
end
end

local ak={
__version=ai.Version,
__elements={},
__autoload=ai.AutoLoad,
__custom=ai.CustomData
}

for al,am in next,ai.Elements do
if ae.Parser[am.__type]then
ak.__elements[tostring(al)]=ae.Parser[am.__type].Save(am)
end
end

local al=ac:JSONEncode(ak)
if writefile then
writefile(ai.Path,al)
end

return ak
end

function ai.Load(aj)
if isfile and not isfile(ai.Path)then
return false,"Config file does not exist"
end

local ak,al=pcall(function()
local ak=readfile or function()
warn"[ WindUI.ConfigManager ] The config system doesn't work in the studio."
return nil
end
return ac:JSONDecode(ak(ai.Path))
end)

if not ak then
return false,"Failed to parse config file"
end

if not al.__version then
local am={
__version=ai.Version,
__elements=al,
__custom={}
}
al=am
end

if ad.PendingFlags then
for am,an in next,ad.PendingFlags do
ai:Register(am,an)
end
end

for am,an in next,(al.__elements or{})do
if ai.Elements[am]and ae.Parser[an.__type]then
task.spawn(function()
ae.Parser[an.__type].Load(ai.Elements[am],an)
end)
end
end

ai.CustomData=al.__custom or{}

return ai.CustomData
end

function ai.Delete(aj)
if not delfile then
return false,"delfile function is not available"
end

if not isfile(ai.Path)then
return false,"Config file does not exist"
end

local ak,al=pcall(function()
delfile(ai.Path)
end)

if not ak then
return false,"Failed to delete config file: "..tostring(al)
end

ae.Configs[ag]=nil

if ad.CurrentConfig==ai then
ad.CurrentConfig=nil
end

return true,"Config deleted successfully"
end

function ai.GetData(aj)
return{
elements=ai.Elements,
custom=ai.CustomData,
autoload=ai.AutoLoad
}
end


if isfile(ai.Path)then
local aj,ak=pcall(function()
return ac:JSONDecode(readfile(ai.Path))
end)

if aj and ak and ak.__autoload then
ai.AutoLoad=true

task.spawn(function()
task.wait(0.5)
local al,am=pcall(function()
return ai:Load()
end)
if al then
if ad.Debug then print("[ WindUI.ConfigManager ] AutoLoaded config: "..ag)end
else
warn("[ WindUI.ConfigManager ] Failed to AutoLoad config: "..ag.." - "..tostring(am))
end
end)
end
end


ai:SetAsCurrent()
ae.Configs[ag]=ai
return ai
end

function ae.Config(af,ag,ah)
return ae:CreateConfig(ag,ah)
end

function ae.GetAutoLoadConfigs(af)
local ag={}

for ah,ai in pairs(ae.Configs)do
if ai.AutoLoad then
table.insert(ag,ah)
end
end

return ag
end

function ae.DeleteConfig(af,ag)
if not delfile then
return false,"delfile function is not available"
end

local ah=ae.Path..ag..".json"

if not isfile(ah)then
return false,"Config file does not exist"
end

local ai,aj=pcall(function()
delfile(ah)
end)

if not ai then
return false,"Failed to delete config file: "..tostring(aj)
end

ae.Configs[ag]=nil

if ad.CurrentConfig and ad.CurrentConfig.Path==ah then
ad.CurrentConfig=nil
end

return true,"Config deleted successfully"
end

function ae.AllConfigs(af)
if not listfiles then return{}end

local ag={}
if not isfolder(ae.Path)then
makefolder(ae.Path)
return ag
end

for ah,ai in next,listfiles(ae.Path)do
local aj=ai:match"([^\\/]+)%.json$"
if aj then
table.insert(ag,aj)
end
end

return ag
end

function ae.GetConfig(af,ag)
return ae.Configs[ag]
end

return ae end function a.A()
local aa={}

local ab=a.load'd'
local ac=ab.New
local ad=ab.Tween


local ae=(cloneref or clonereference or function(ae)return ae end)


ae(game:GetService"UserInputService")


function aa.New(af)
local ag={
Button=nil
}

local ah













local ai=ac("TextLabel",{
Text=af.Title,
TextSize=17,
FontFace=Font.new(ab.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
AutomaticSize="XY",
})

local aj=ac("Frame",{
Size=UDim2.new(0,36,0,36),
BackgroundTransparency=1,
Name="Drag",
},{
ac("ImageLabel",{
Image=ab.Icon"move"[1],
ImageRectOffset=ab.Icon"move"[2].ImageRectPosition,
ImageRectSize=ab.Icon"move"[2].ImageRectSize,
Size=UDim2.new(0,18,0,18),
BackgroundTransparency=1,
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
ImageColor3="Icon",
},
ImageTransparency=.3,
})
})
local ak=ac("Frame",{
Size=UDim2.new(0,1,1,0),
Position=UDim2.new(0,36,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
BackgroundColor3=Color3.new(1,1,1),
BackgroundTransparency=.9,
})

local al=ac("Frame",{
Size=UDim2.new(0,0,0,0),
Position=UDim2.new(0.5,0,0,28),
AnchorPoint=Vector2.new(0.5,0.5),
Parent=af.Parent,
BackgroundTransparency=1,
Active=true,
Visible=false,
})


local am=ac("UIScale",{
Scale=1,
})

local an=ac("Frame",{
Size=UDim2.new(0,0,0,44),
AutomaticSize="X",
Parent=al,
Active=false,
BackgroundTransparency=.25,
ZIndex=99,
BackgroundColor3=Color3.new(0,0,0),
},{
am,
ac("UICorner",{
CornerRadius=UDim.new(1,0)
}),
ac("UIStroke",{
Thickness=1,
ApplyStrokeMode="Border",
Color=Color3.new(1,1,1),
Transparency=0,
},{
ac("UIGradient",{
Color=ColorSequence.new(Color3.fromHex"40c9ff",Color3.fromHex"e81cff")
})
}),
aj,
ak,

ac("UIListLayout",{
Padding=UDim.new(0,4),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),

ac("TextButton",{
AutomaticSize="XY",
Active=true,
BackgroundTransparency=1,
Size=UDim2.new(0,0,0,36),

BackgroundColor3=Color3.new(1,1,1),
},{
ac("UICorner",{
CornerRadius=UDim.new(1,-4)
}),
ah,
ac("UIListLayout",{
Padding=UDim.new(0,af.UIPadding),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
ai,
ac("UIPadding",{
PaddingLeft=UDim.new(0,11),
PaddingRight=UDim.new(0,11),
}),
}),
ac("UIPadding",{
PaddingLeft=UDim.new(0,4),
PaddingRight=UDim.new(0,4),
})
})

ag.Button=an



function ag.SetIcon(ao,ap)
if ah then
ah:Destroy()
end
if ap then
ah=ab.Image(
ap,
af.Title,
0,
af.Folder,
"OpenButton",
true,
af.IconThemed
)
ah.Size=UDim2.new(0,22,0,22)
ah.LayoutOrder=-1
ah.Parent=ag.Button.TextButton
end
end

if af.Icon then
ag:SetIcon(af.Icon)
end



ab.AddSignal(an:GetPropertyChangedSignal"AbsoluteSize",function()
al.Size=UDim2.new(
0,an.AbsoluteSize.X,
0,an.AbsoluteSize.Y
)
end)

ab.AddSignal(an.TextButton.MouseEnter,function()
ad(an.TextButton,.1,{BackgroundTransparency=.93}):Play()
end)
ab.AddSignal(an.TextButton.MouseLeave,function()
ad(an.TextButton,.1,{BackgroundTransparency=1}):Play()
end)

local ao=ab.Drag(al)


function ag.Visible(ap,aq)
al.Visible=aq
end

function ag.SetScale(ap,aq)
am.Scale=aq
end

function ag.Edit(ap,aq)
local ar={
Title=aq.Title,
Icon=aq.Icon,
Enabled=aq.Enabled,
Position=aq.Position,
OnlyIcon=aq.OnlyIcon or false,
Draggable=aq.Draggable or nil,
OnlyMobile=aq.OnlyMobile,
CornerRadius=aq.CornerRadius or UDim.new(1,0),
StrokeThickness=aq.StrokeThickness or 2,
Scale=aq.Scale or 1,
Color=aq.Color
or ColorSequence.new(Color3.fromHex"40c9ff",Color3.fromHex"e81cff"),
}



if ar.Enabled==false then
af.IsOpenButtonEnabled=false
end

if ar.OnlyMobile~=false then
ar.OnlyMobile=true
else
af.IsPC=false
end


if ar.Draggable==false and aj and ak then
aj.Visible=ar.Draggable
ak.Visible=ar.Draggable

if ao then
ao:Set(ar.Draggable)
end
end

if ar.Position and al then
al.Position=ar.Position
end

if ar.OnlyIcon==true and ai then
ai.Visible=false
an.TextButton.UIPadding.PaddingLeft=UDim.new(0,7)
an.TextButton.UIPadding.PaddingRight=UDim.new(0,7)
elseif ar.OnlyIcon==false then
ai.Visible=true
an.TextButton.UIPadding.PaddingLeft=UDim.new(0,11)
an.TextButton.UIPadding.PaddingRight=UDim.new(0,11)
end





if ai then
if ar.Title then
ai.Text=ar.Title
ab:ChangeTranslationKey(ai,ar.Title)
elseif ar.Title==nil then

end
end

if ar.Icon then
ag:SetIcon(ar.Icon)
end

an.UIStroke.UIGradient.Color=ar.Color
if Glow then
Glow.UIGradient.Color=ar.Color
end

an.UICorner.CornerRadius=ar.CornerRadius
an.TextButton.UICorner.CornerRadius=UDim.new(ar.CornerRadius.Scale,ar.CornerRadius.Offset-4)
an.UIStroke.Thickness=ar.StrokeThickness

ag:SetScale(ar.Scale)
end

return ag
end



return aa end function a.B()
local aa={}

local ab=a.load'd'
local ac=ab.New
local ad=ab.Tween


function aa.New(ae,af,ag,ah,ai,aj)
local ak={
Container=nil,
TooltipSize=16,

TooltipArrowSizeX=ai=="Small"and 16 or 24,
TooltipArrowSizeY=ai=="Small"and 6 or 9,

PaddingX=ai=="Small"and 12 or 14,
PaddingY=ai=="Small"and 7 or 9,

Radius=999,

TitleFrame=nil,
}

ah=ah or""
aj=aj~=false

local al=ac("TextLabel",{
AutomaticSize="XY",
TextWrapped=aj,
BackgroundTransparency=1,
FontFace=Font.new(ab.Font,Enum.FontWeight.Medium),
Text=ae,
TextSize=ai=="Small"and 15 or 17,
TextTransparency=1,
ThemeTag={
TextColor3="Tooltip"..ah.."Text",
}
})

ak.TitleFrame=al

local am=ac("UIScale",{
Scale=.9
})

local an=ac("Frame",{
AnchorPoint=Vector2.new(0.5,0),
AutomaticSize="XY",
BackgroundTransparency=1,
Parent=af,

Visible=false
},{
ac("UISizeConstraint",{
MaxSize=Vector2.new(400,math.huge)
}),
ac("Frame",{
AutomaticSize="XY",
BackgroundTransparency=1,
LayoutOrder=99,
Visible=ag,
Name="Arrow",
},{
ac("ImageLabel",{
Size=UDim2.new(0,ak.TooltipArrowSizeX,0,ak.TooltipArrowSizeY),
BackgroundTransparency=1,

Image="rbxassetid://105854070513330",
ThemeTag={
ImageColor3="Tooltip"..ah,
},
},{










}),
}),
ab.NewRoundFrame(ak.Radius,"Squircle",{
AutomaticSize="XY",
ThemeTag={
ImageColor3="Tooltip"..ah,
},
ImageTransparency=1,
Name="Background",
},{



ac("Frame",{



AutomaticSize="XY",
BackgroundTransparency=1,
},{
ac("UICorner",{
CornerRadius=UDim.new(0,16),
}),
ac("UIListLayout",{
Padding=UDim.new(0,12),
FillDirection="Horizontal",
VerticalAlignment="Center"
}),

al,
ac("UIPadding",{
PaddingTop=UDim.new(0,ak.PaddingY),
PaddingLeft=UDim.new(0,ak.PaddingX),
PaddingRight=UDim.new(0,ak.PaddingX),
PaddingBottom=UDim.new(0,ak.PaddingY),
}),
})
}),
am,
ac("UIListLayout",{
Padding=UDim.new(0,0),
FillDirection="Vertical",
VerticalAlignment="Center",
HorizontalAlignment="Center",
}),
})
ak.Container=an

function ak.Open(ao)
an.Visible=true


ad(an.Background,.2,{ImageTransparency=0},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
ad(an.Arrow.ImageLabel,.2,{ImageTransparency=0},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
ad(al,.2,{TextTransparency=0},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
ad(am,.22,{Scale=1},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end

function ak.Close(ao,ap)

ad(an.Background,.3,{ImageTransparency=1},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
ad(an.Arrow.ImageLabel,.2,{ImageTransparency=1},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
ad(al,.3,{TextTransparency=1},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
ad(am,.35,{Scale=.9},Enum.EasingStyle.Quint,Enum.EasingDirection.In):Play()

ap=ap~=false
if ap then
task.wait(.35)

an.Visible=false
an:Destroy()
end
end

return ak
end



return aa end function a.C()
game:GetService"ReplicatedStorage"
local aa=a.load'd'
local ab=aa.New
local ac=aa.NewRoundFrame
local ad=aa.Tween

local ae=(cloneref or clonereference or function(ae)
return ae
end)

ae(game:GetService"UserInputService")

local af=a.load'y'

local function Color3ToHSB(ag)
local ah,ai,aj=ag.R,ag.G,ag.B
local ak=math.max(ah,ai,aj)
local al=math.min(ah,ai,aj)
local am=ak-al

local an=0
if am~=0 then
if ak==ah then
an=(ai-aj)/am%6
elseif ak==ai then
an=(aj-ah)/am+2
else
an=(ah-ai)/am+4
end
an=an*60
else
an=0
end

local ao=(ak==0)and 0 or(am/ak)
local ap=ak

return{
h=math.floor(an+0.5),
s=ao,
b=ap,
}
end

local function GetPerceivedBrightness(ag)
local ah=ag.R
local ai=ag.G
local aj=ag.B
return 0.299*ah+0.587*ai+0.114*aj
end

local function GetTextColorForHSB(ag)
local ah=Color3ToHSB(ag)local
ai, aj, ak=ah.h, ah.s, ah.b
if GetPerceivedBrightness(ag)>0.5 then
return Color3.fromHSV(ai/360,0,0.05)
else
return Color3.fromHSV(ai/360,0,0.98)
end
end

return function(ag)
local ah={
Title=ag.Title,
Desc=ag.Desc or nil,
Hover=ag.Hover,
Thumbnail=ag.Thumbnail,
ThumbnailSize=ag.ThumbnailSize or 80,
Image=ag.Image,
IconThemed=ag.IconThemed or false,
ImageSize=ag.ImageSize or 30,
Color=ag.Color,
Scalable=ag.Scalable,
Parent=ag.Parent,
Justify=ag.Justify or"Between",
UIPadding=ag.Window.ElementConfig.UIPadding,
UICorner=ag.Window.ElementConfig.UICorner,
Size=ag.Size or"Default",
Tags=ag.Tags or{},
UIElements={},

Index=ag.Index,
}

local ai=ah.Size=="Small"and-4 or ah.Size=="Large"and 4 or 0
local aj=ah.Size=="Small"and-4 or ah.Size=="Large"and 4 or 0

local ak=ah.ImageSize
local al=ah.ThumbnailSize
local am=true


local an=0

local ao
local ap
if ah.Thumbnail then
ao=aa.Image(
ah.Thumbnail,
ah.Title,
ag.Window.NewElements and ah.UICorner-11 or(ah.UICorner-4),
ag.Window.Folder,
"Thumbnail",
false,
ah.IconThemed
)
ao.Size=UDim2.new(1,0,0,al)
end
if ah.Image then
ap=aa.Image(
ah.Image,
ah.Title,
ag.Window.NewElements and ah.UICorner-11 or(ah.UICorner-4),
ag.Window.Folder,
"Image",
ah.IconThemed,
not ah.Color and true or false,
"ElementIcon"
)

if typeof(ah.Color)=="string"and not string.find(ah.Image,"rbxthumb")then
ap.ImageLabel.ImageColor3=GetTextColorForHSB(Color3.fromHex(aa.Colors[ah.Color]))
elseif typeof(ah.Color)=="Color3"and not string.find(ah.Image,"rbxthumb")then
ap.ImageLabel.ImageColor3=GetTextColorForHSB(ah.Color)
end

ap.Size=UDim2.new(0,ak,0,ak)

an=ak
end

local function CreateText(aq,ar)
local as=typeof(ah.Color)=="string"
and GetTextColorForHSB(Color3.fromHex(aa.Colors[ah.Color]))
or typeof(ah.Color)=="Color3"and GetTextColorForHSB(ah.Color)

return ab("TextLabel",{
BackgroundTransparency=1,
Text=aq or"",
TextSize=ar=="Desc"and 15 or 17,
TextXAlignment="Left",
ThemeTag={
TextColor3=not ah.Color and("Element"..ar)or nil,
},
TextColor3=ah.Color and as or nil,
TextTransparency=ar=="Desc"and 0.3 or 0,
TextWrapped=true,
Size=UDim2.new(ah.Justify=="Between"and 1 or 0,0,0,0),
AutomaticSize=ah.Justify=="Between"and"Y"or"XY",
FontFace=Font.new(aa.Font,ar=="Desc"and Enum.FontWeight.Medium or Enum.FontWeight.SemiBold),
})
end

local aq=CreateText(ah.Title,"Title")
local ar=CreateText(ah.Desc,"Desc")
if not ah.Title or ah.Title==""then
ar.Visible=false
end
if not ah.Desc or ah.Desc==""then
ar.Visible=false
end

ah.UIElements.Title=aq
ah.UIElements.Desc=ar

ah.UIElements.Container=ab("Frame",{
Size=UDim2.new(1,0,1,0),
AutomaticSize="Y",
BackgroundTransparency=1,
},{
ab("UIListLayout",{
Padding=UDim.new(0,ah.UIPadding),
FillDirection="Vertical",
VerticalAlignment="Center",
HorizontalAlignment=ah.Justify=="Between"and"Left"or"Center",
}),
ao,
ab("Frame",{
Size=UDim2.new(
ah.Justify=="Between"and 1 or 0,
ah.Justify=="Between"and-ag.TextOffset or 0,
0,
0
),
AutomaticSize=ah.Justify=="Between"and"Y"or"XY",
BackgroundTransparency=1,
Name="TitleFrame",
},{
ab("UIListLayout",{
Padding=UDim.new(0,ah.UIPadding),
FillDirection="Horizontal",
VerticalAlignment=ag.Window.NewElements and(ah.Justify=="Between"and"Top"or"Center")
or"Center",
HorizontalAlignment=ah.Justify~="Between"and ah.Justify or"Center",
}),
ap,
ab("Frame",{
BackgroundTransparency=1,
AutomaticSize=ah.Justify=="Between"and"Y"or"XY",
Size=UDim2.new(
ah.Justify=="Between"and 1 or 0,
ah.Justify=="Between"and(ap and-an-ah.UIPadding or-an)
or 0,
1,
0
),
Name="TitleFrame",
},{
ab("UIPadding",{
PaddingTop=UDim.new(0,(ag.Window.NewElements and ah.UIPadding/2 or 0)+aj),
PaddingLeft=UDim.new(0,(ag.Window.NewElements and ah.UIPadding/2 or 0)+ai),
PaddingRight=UDim.new(
0,
(ag.Window.NewElements and ah.UIPadding/2 or 0)+ai
),
PaddingBottom=UDim.new(
0,
(ag.Window.NewElements and ah.UIPadding/2 or 0)+aj
),
}),
ab("UIListLayout",{
Padding=UDim.new(0,6),
FillDirection="Vertical",
VerticalAlignment="Center",
HorizontalAlignment="Left",
}),
ab("ScrollingFrame",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
LayoutOrder=-99,
BackgroundTransparency=1,
ScrollingDirection="X",
CanvasSize=UDim2.new(0,0,0,0),
ScrollBarThickness=0,
Visible=false,
},{
ab("UIListLayout",{
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment="Left",
Padding=UDim.new(0,ag.Window.UIPadding/2),
}),
}),
ab("Frame",{
Name="Space",
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,
Visible=false,
}),
aq,
ar,
}),
}),
})

for as,at in next,ag.Tags or{}do
if not ah.UIElements.Container.TitleFrame.TitleFrame.ScrollingFrame.Visible then
ah.UIElements.Container.TitleFrame.TitleFrame.ScrollingFrame.Visible=true
ah.UIElements.Container.TitleFrame.TitleFrame.Space.Visible=true
end
af:New(at,ah.UIElements.Container.TitleFrame.TitleFrame.ScrollingFrame)
end

aa.AddSignal(
ah.UIElements.Container.TitleFrame.TitleFrame.ScrollingFrame.UIListLayout:GetPropertyChangedSignal
"AbsoluteContentSize"
,
function()
ah.UIElements.Container.TitleFrame.TitleFrame.ScrollingFrame.Size=UDim2.new(
1,
0,
0,
ah.UIElements.Container.TitleFrame.TitleFrame.ScrollingFrame.UIListLayout.AbsoluteContentSize.Y
/ag.ParentConfig.UIScale
)
end
)





local as=aa.Image("lock","lock",0,ag.Window.Folder,"Lock",false)
as.Size=UDim2.new(0,20,0,20)
as.ImageLabel.ImageColor3=Color3.new(1,1,1)
as.ImageLabel.ImageTransparency=0.4

local at=ab("TextLabel",{
Text="Locked",
TextSize=18,
FontFace=Font.new(aa.Font,Enum.FontWeight.Medium),
AutomaticSize="XY",
BackgroundTransparency=1,
TextColor3=Color3.new(1,1,1),
TextTransparency=0.05,
})

local au=ab("Frame",{
Size=UDim2.new(1,ah.UIPadding*2,1,ah.UIPadding*2),
BackgroundTransparency=1,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
ZIndex=9999999,
})

local av,aw=ac(ah.UICorner,"Squircle",{
Size=UDim2.new(1,0,1,0),
ImageTransparency=0.25,
ImageColor3=Color3.new(0,0,0),
Visible=false,
Active=false,
Parent=au,
},{
ab("UIListLayout",{
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment="Center",
Padding=UDim.new(0,8),
}),
as,
at,
},nil,true)local

ax=ac(ah.UICorner,"Squircle-Outline",{
Size=UDim2.new(1,0,1,0),
ImageTransparency=1,
Active=false,
ThemeTag={
ImageColor3="Text",
},
Parent=au,
},{
ab("UIListLayout",{
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment="Center",
Padding=UDim.new(0,8),
}),
},nil,true)

local ay,az=ac(ah.UICorner,"Squircle",{
Size=UDim2.new(1,0,1,0),
ImageTransparency=1,
Active=false,
ThemeTag={
ImageColor3="Text",
},
Parent=au,
},{
ab("UIListLayout",{
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment="Center",
Padding=UDim.new(0,8),
}),
},nil,true)local

aA=ac(ah.UICorner,"Squircle-Outline",{
Size=UDim2.new(1,0,1,0),
ImageTransparency=1,
Visible=false,
Active=false,
ThemeTag={
ImageColor3="Text",
},
Parent=au,
},{
ab("UIListLayout",{
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment="Center",
Padding=UDim.new(0,8),
}),
ab("UIGradient",{
Name="HoverGradient",
Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.new(1,1,1)),
ColorSequenceKeypoint.new(0.5,Color3.new(1,1,1)),
ColorSequenceKeypoint.new(1,Color3.new(1,1,1)),
},
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(0.25,0.9),
NumberSequenceKeypoint.new(0.5,0.3),
NumberSequenceKeypoint.new(0.75,0.9),
NumberSequenceKeypoint.new(1,1),
},
}),
},nil,true)

local aB,b=ac(ah.UICorner,"Squircle",{
Size=UDim2.new(1,0,1,0),
ImageTransparency=1,
Active=false,
ThemeTag={
ImageColor3="Text",
},
Parent=au,
},{
ab("UIGradient",{
Name="HoverGradient",
Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.new(1,1,1)),
ColorSequenceKeypoint.new(0.5,Color3.new(1,1,1)),
ColorSequenceKeypoint.new(1,Color3.new(1,1,1)),
},
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(0.25,0.9),
NumberSequenceKeypoint.new(0.5,0.3),
NumberSequenceKeypoint.new(0.75,0.9),
NumberSequenceKeypoint.new(1,1),
},
}),
ab("UIListLayout",{
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment="Center",
Padding=UDim.new(0,8),
}),
},nil,true)

local d,f=ac(ah.UICorner,"Squircle",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
ImageTransparency=ah.Color and 0.05 or(not ag.Window.NewElements and 0.93 or nil),



Parent=ag.Parent,
ThemeTag={
ImageColor3=not ah.Color and(ag.Window.NewElements and"ElementBackground"or"Text")or nil,
ImageTransparency=not ah.Color
and(ag.Window.NewElements and"ElementBackgroundTransparency"or nil)
or nil,
},
ImageColor3=ah.Color and(typeof(ah.Color)=="string"and Color3.fromHex(
aa.Colors[ah.Color]
)or typeof(ah.Color)=="Color3"and ah.Color)or nil,
},{
ah.UIElements.Container,
au,
ab("UIPadding",{
PaddingTop=UDim.new(0,ah.UIPadding),
PaddingLeft=UDim.new(0,ah.UIPadding),
PaddingRight=UDim.new(0,ah.UIPadding),
PaddingBottom=UDim.new(0,ah.UIPadding),
}),
},true,true)

ah.UIElements.Main=d
ah.UIElements.Locked=av

if ah.Hover then
aa.AddSignal(d.MouseEnter,function()
if am then

ad(aB,0.12,{ImageTransparency=0.9}):Play()
ad(aA,0.12,{ImageTransparency=0.8}):Play()
aa.AddSignal(d.MouseMoved,function(g,h)
aB.HoverGradient.Offset=
Vector2.new(((g-d.AbsolutePosition.X)/d.AbsoluteSize.X)-0.5,0)
aA.HoverGradient.Offset=
Vector2.new(((g-d.AbsolutePosition.X)/d.AbsoluteSize.X)-0.5,0)
end)
end
end)
aa.AddSignal(d.InputEnded,function()
if am then

ad(aB,0.12,{ImageTransparency=1}):Play()
ad(aA,0.12,{ImageTransparency=1}):Play()
end
end)
end

function ah.SetTitle(g,h)
ah.Title=h
aq.Text=h
end

function ah.SetDesc(g,h)
ah.Desc=h
ar.Text=h or""
if not h then
ar.Visible=false
elseif not ar.Visible then
ar.Visible=true
end
end

function ah.Colorize(g,h,i)
if ah.Color then
h[i]=typeof(ah.Color)=="string"
and GetTextColorForHSB(Color3.fromHex(aa.Colors[ah.Color]))
or typeof(ah.Color)=="Color3"and GetTextColorForHSB(ah.Color)
or nil
end
end

if ag.ElementTable then
aa.AddSignal(aq:GetPropertyChangedSignal"Text",function()
if ah.Title~=aq.Text then
ah:SetTitle(aq.Text)
ag.ElementTable.Title=aq.Text
end
end)
aa.AddSignal(ar:GetPropertyChangedSignal"Text",function()
if ah.Desc~=ar.Text then
ah:SetDesc(ar.Text)
ag.ElementTable.Desc=ar.Text
end
end)
end





function ah.SetThumbnail(g,h,i)
ah.Thumbnail=h
if i then
ah.ThumbnailSize=i
al=i
end

if ao then
if h then
ao:Destroy()
ao=aa.Image(
h,
ah.Title,
ah.UICorner-3,
ag.Window.Folder,
"Thumbnail",
false,
ah.IconThemed
)
if ao then
ao.Size=UDim2.new(1,0,0,al)
ao.Parent=ah.UIElements.Container
local l=ah.UIElements.Container:FindFirstChild"UIListLayout"
if l then
ao.LayoutOrder=-1
end
end
else
ao.Visible=false
end
else
if h then
ao=aa.Image(
h,
ah.Title,
ah.UICorner-3,
ag.Window.Folder,
"Thumbnail",
false,
ah.IconThemed
)
if ao then
ao.Size=UDim2.new(1,0,0,al)
ao.Parent=ah.UIElements.Container
local l=ah.UIElements.Container:FindFirstChild"UIListLayout"
if l then
ao.LayoutOrder=-1
end
end
end
end
end

function ah.SetImage(g,h,i)
ah.Image=h
if i then
ah.ImageSize=i
ak=i
end

if h then
local l=ap and ap.Parent or ah.UIElements.Container.TitleFrame
if ap then
ap:Destroy()
end

ap=aa.Image(
h,
h,
ah.UICorner-3,
ag.Window.Folder,
"Image",
not ah.Color and true or false
)
if ap then
if typeof(ah.Color)=="string"and not string.find(ah.Image,"rbxthumb")then
ap.ImageLabel.ImageColor3=
GetTextColorForHSB(Color3.fromHex(aa.Colors[ah.Color]))
elseif typeof(ah.Color)=="Color3"and not string.find(ah.Image,"rbxthumb")then
ap.ImageLabel.ImageColor3=GetTextColorForHSB(ah.Color)
end

ap.Visible=true
ap.Parent=l
ap.LayoutOrder=-99

ap.Size=UDim2.new(0,ak,0,ak)
an=ah.ImageSize+ah.UIPadding
end
else
if ap then
ap.Visible=true
end
an=0
end

ah.UIElements.Container.TitleFrame.TitleFrame.Size=UDim2.new(1,-an,1,0)
end

function ah.Destroy(g)
d:Destroy()
end

function ah.Lock(g,h)
am=false
av.Active=true
av.Visible=true
at.Text=h or"Locked"
end

function ah.Unlock(g)
am=true
av.Active=false
av.Visible=false
end

function ah.Highlight(g)
local h=ab("UIGradient",{
Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.new(1,1,1)),
ColorSequenceKeypoint.new(0.5,Color3.new(1,1,1)),
ColorSequenceKeypoint.new(1,Color3.new(1,1,1)),
},
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(0.1,0.9),
NumberSequenceKeypoint.new(0.5,0.3),
NumberSequenceKeypoint.new(0.9,0.9),
NumberSequenceKeypoint.new(1,1),
},
Rotation=0,
Offset=Vector2.new(-1,0),
Parent=ax,
})

local i=ab("UIGradient",{
Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.new(1,1,1)),
ColorSequenceKeypoint.new(0.5,Color3.new(1,1,1)),
ColorSequenceKeypoint.new(1,Color3.new(1,1,1)),
},
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(0.15,0.8),
NumberSequenceKeypoint.new(0.5,0.1),
NumberSequenceKeypoint.new(0.85,0.8),
NumberSequenceKeypoint.new(1,1),
},
Rotation=0,
Offset=Vector2.new(-1,0),
Parent=ay,
})

ax.ImageTransparency=0.65
ay.ImageTransparency=0.88

ad(h,0.75,{
Offset=Vector2.new(1,0),
}):Play()

ad(i,0.75,{
Offset=Vector2.new(1,0),
}):Play()

task.spawn(function()
task.wait(0.75)
ax.ImageTransparency=1
ay.ImageTransparency=1
h:Destroy()
i:Destroy()
end)
end

function ah.UpdateShape(g)
if ag.Window.NewElements then
local h=aa:GetElementPosition(
g.Elements,
ah.Index,
ag.ParentConfig.ParentTable.__type=="HStack"or ag.ParentConfig.ParentTable.__type=="Group"
)

if h and d then
f:SetType(h)
aw:SetType(h)
az:SetType(h)

b:SetType(h)

end
end
end





return ah
end end function a.D()

local aa=a.load'd'
local ab=aa.New

local ac={}

local ad=a.load'm'.New

function ac.New(ae,af)
af.Hover=false
af.TextOffset=0
af.ParentConfig=af
af.IsButtons=af.Buttons and#af.Buttons>0 and true or false

local ag={
__type="Paragraph",
Title=af.Title or"Paragraph",
Desc=af.Desc or nil,

Locked=af.Locked or false,
}
local ah=a.load'C'(af)

ag.ParagraphFrame=ah
if af.Buttons and#af.Buttons>0 then
local ai=ab("Frame",{
Size=UDim2.new(1,0,0,38),
BackgroundTransparency=1,
AutomaticSize="Y",
Parent=ah.UIElements.Container,
},{
ab("UIListLayout",{
Padding=UDim.new(0,10),
FillDirection="Vertical",
}),
})

for aj,ak in next,af.Buttons do
local al=ad(
ak.Title,
ak.Icon,
ak.Callback,
ak.Variant or"White",
ai,
nil,
nil,
af.Window.NewElements and 999 or 10
)
al.Size=UDim2.new(1,0,0,38)

end
end

return ag.__type,ag
end

return ac end function a.E()

local aa=a.load'd'local ab=
aa.New

local ac={}

function ac.New(ad,ae)
local af={
__type="Button",
Title=ae.Title or"Button",
Desc=ae.Desc or nil,
Icon=ae.Icon or"mouse-pointer-click",
IconThemed=ae.IconThemed or false,
IconColor=ae.IconColor or nil,
Color=ae.Color,
Justify=ae.Justify or"Between",
IconAlign=ae.IconAlign or"Right",
Locked=ae.Locked or false,
LockedTitle=ae.LockedTitle,
Callback=ae.Callback or function()end,
UIElements={},
}

local ag=true

af.ButtonFrame=a.load'C'{
Title=af.Title,
Desc=af.Desc,
Parent=ae.Parent,




Window=ae.Window,
Color=af.Color,
Justify=af.Justify,
TextOffset=20,
Hover=true,
Scalable=true,
Tab=ae.Tab,
Index=ae.Index,
ElementTable=af,
ParentConfig=ae,
Size=ae.Size,
Tags=ae.Tags,
}














af.UIElements.ButtonIcon=aa.Image(
af.Icon,
af.Icon,
0,
ae.Window.Folder,
"Button",
not(af.Color or af.IconColor)and true or nil,
af.IconThemed
)

if af.IconColor then
af.UIElements.ButtonIcon.ImageLabel.ImageColor3=af.IconColor
end

af.UIElements.ButtonIcon.Size=UDim2.new(0,20,0,20)
af.UIElements.ButtonIcon.Parent=af.Justify=="Between"and af.ButtonFrame.UIElements.Main
or af.ButtonFrame.UIElements.Container.TitleFrame
af.UIElements.ButtonIcon.LayoutOrder=af.IconAlign=="Left"and-99999 or 99999
af.UIElements.ButtonIcon.AnchorPoint=Vector2.new(1,0.5)
af.UIElements.ButtonIcon.Position=UDim2.new(1,0,0.5,0)

af.ButtonFrame:Colorize(af.UIElements.ButtonIcon.ImageLabel,"ImageColor3")

function af.Lock(ah)
af.Locked=true
ag=false
return af.ButtonFrame:Lock(af.LockedTitle)
end
function af.Unlock(ah)
af.Locked=false
ag=true
return af.ButtonFrame:Unlock()
end

if af.Locked then
af:Lock()
end

aa.AddSignal(af.ButtonFrame.UIElements.Main.MouseButton1Click,function()
if ag then
task.spawn(function()
aa.SafeCallback(af.Callback)
end)
end
end)
return af.__type,af
end

return ac end function a.F()

local aa={}

local ab=a.load'd'
local ac=ab.New
local ad=ab.Tween

local ae=game:GetService"UserInputService"

function aa.New(af,ag,ah,ai,aj,ak,al)
local am={
GlassSpritesheet={
Id="rbxassetid://77297718671545",
MirroredId="rbxassetid://92258969882244",
Size=Vector2.new(102,128),
Total=80,
Cols=10,
},
}

function am.GetGlassFrame(an,ao:number):(string,Vector2,Vector2)
local ap=am.GlassSpritesheet
local aq:number

if ao<=0.4 then
aq=math.floor((ao/0.4)*(ap.Total-1))
elseif ao<0.6 then
aq=ap.Total-1
else
aq=math.floor(((ao-0.6)/0.4)*(ap.Total-1))
end

aq=math.clamp(aq,0,ap.Total-1)

local ar=ao>=0.6
if ar then
aq=(ap.Total-1)-aq
end

local as=ar and ap.MirroredId or ap.Id

return as,ap.Size,Vector2.new((aq%ap.Cols)*ap.Size.X,math.floor(aq/ap.Cols)*ap.Size.Y)
end

local an=12
local ao
if ag and ag~=""then
ao=ac("ImageLabel",{
Size=UDim2.new(0,13,0,13),
BackgroundTransparency=1,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Image=ab.Icon(ag)[1],
ImageRectOffset=ab.Icon(ag)[2].ImageRectPosition,
ImageRectSize=ab.Icon(ag)[2].ImageRectSize,
ImageTransparency=1,
ImageColor3=Color3.new(0,0,0),
})
end

local ap=ac("Frame",{
Size=UDim2.new(0,2,0,26),
BackgroundTransparency=1,
Parent=ai,
})

local aq=ab.NewRoundFrame(an,"Squircle",{
ImageTransparency=0.85,
ThemeTag={
ImageColor3="Text",
},
Parent=ap,
Size=UDim2.new(0,ak and(52)or(40.8),0,24),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(0,0,0.5,0),
Name="ToggleFrame",
},{
ab.NewRoundFrame(an,"Squircle",{
Size=UDim2.new(1,0,1,0),
Name="Layer",
ThemeTag={
ImageColor3="Toggle",
},
ImageTransparency=1,
}),
ab.NewRoundFrame(an,"SquircleOutline",{
Size=UDim2.new(1,0,1,0),
Name="Stroke",
ImageColor3=Color3.new(1,1,1),
ImageTransparency=1,
},{
ac("UIGradient",{
Rotation=90,
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,0),
NumberSequenceKeypoint.new(1,1),
},
}),
}),


ab.NewRoundFrame(an,"Squircle",{
Size=UDim2.new(0,ak and 30 or 20,0,20),
Position=UDim2.new(0,2,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
ImageTransparency=1,
Name="Frame",
},{
ab.NewRoundFrame(an,"Squircle",{
Size=UDim2.new(1,0,1,0),
ImageTransparency=0,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Name="Bar",
},{
ab.New("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundColor3=Color3.new(1,1,1),
Name="Highlight",
BackgroundTransparency=1,
},{
ab.NewRoundFrame(9999,"SquircleGlass",{
Size=UDim2.new(1,1,1,1),
ImageColor3=Color3.new(1,1,1),
Name="SquircleGlass",
ImageTransparency=0.5,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
}),
ab.NewRoundFrame(an,"Squircle",{
Size=UDim2.new(1,0,1,0),
Name="GlassBackground",
ImageTransparency=0,
ThemeTag={
ImageColor3="ElementBackground",
},
ZIndex=-1,
}),
ac("ImageLabel",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Name="Glass",
ImageTransparency=0,
},{
ac("UICorner",{
CornerRadius=UDim.new(1,0),
}),
}),






ab.NewRoundFrame(an,"Squircle",{
Size=UDim2.new(1,0,1,0),
Name="BarOverlay",
ThemeTag={
ImageColor3="ToggleBar",
},
ZIndex=999,
}),
}),
ao,
ac("UIScale",{
Scale=1,
}),
}),
}),
ac("TextButton",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
Name="Hitbox",
Text="",
}),
})

local ar
local as

local at=ak and 30 or 20
local au=aq.Size.X.Offset

function am.Set(av,aw,ax,ay)
if not ay then
if aw then
ad(aq.Frame,0.35,{
Position=UDim2.new(0,au-at-2,0.5,0),
},Enum.EasingStyle.Back,Enum.EasingDirection.Out):Play()
ab.SetThemeTag(aq.Frame.Bar.Highlight.Glass,{ImageColor3="Toggle"},0.15)

ad(
aq.Frame.Bar.Highlight.Glass,
0.15,
{ImageTransparency=0},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
else
ad(aq.Frame,0.35,{
Position=UDim2.new(0,2,0.5,0),
},Enum.EasingStyle.Back,Enum.EasingDirection.Out):Play()
ab.SetThemeTag(aq.Frame.Bar.Highlight.Glass,{ImageColor3="Text"},0.15)
ad(
aq.Frame.Bar.Highlight.Glass,
0.15,
{ImageTransparency=0.85},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
end
else
if aw then
aq.Frame.Position=UDim2.new(0,au-at-2,0.5,0)
else
aq.Frame.Position=UDim2.new(0,2,0.5,0)
end
end

if aw then
ad(aq.Layer,0.1,{
ImageTransparency=0,
}):Play()
ab.SetThemeTag(aq.Frame.Bar.Highlight.Glass,{ImageColor3="Toggle"},0.1)
ad(
aq.Frame.Bar.Highlight.Glass,
0.1,
{ImageTransparency=0},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()

if ao then
ad(ao,0.1,{
ImageTransparency=0,
}):Play()
end

local az,aA,aB=am:GetGlassFrame(1)

aq.Frame.Bar.Highlight.Glass.Image=az
aq.Frame.Bar.Highlight.Glass.ImageRectSize=aA
aq.Frame.Bar.Highlight.Glass.ImageRectOffset=aB
else
ad(aq.Layer,0.1,{
ImageTransparency=1,
}):Play()
ab.SetThemeTag(aq.Frame.Bar.Highlight.Glass,{ImageColor3="Text"},0.1)
ad(
aq.Frame.Bar.Highlight.Glass,
0.1,
{ImageTransparency=0.85},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()

if ao then
ad(ao,0.1,{
ImageTransparency=1,
}):Play()
end

local az,aA,aB=am:GetGlassFrame(0)

aq.Frame.Bar.Highlight.Glass.Image=az
aq.Frame.Bar.Highlight.Glass.ImageRectSize=aA
aq.Frame.Bar.Highlight.Glass.ImageRectOffset=aB
end

ax=ax~=false

task.spawn(function()
if aj and ax then
ab.SafeCallback(aj,aw)
end
end)
end

function am.Animate(av,aw,ax)
if not al.Window.IsToggleDragging then
al.Window.IsToggleDragging=true

local ay=aw.Position.X
local az=aw.Position.Y
local aA=aq.Frame.Position.X.Offset
local aB=false
local b=false

ad(
aq.Frame.Bar.UIScale,
0.28,
{Scale=1.5},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
ad(
aq.Frame.Bar.Highlight.BarOverlay,
0.28,
{ImageTransparency=0.86},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()

if ar then
ar:Disconnect()
end

ar=ae.InputChanged:Connect(function(d)
if not al.Window.IsToggleDragging then
return
end
if
d.UserInputType~=Enum.UserInputType.MouseMovement
and d.UserInputType~=Enum.UserInputType.Touch
then
return
end
if aB then
return
end

local f=math.abs(d.Position.X-ay)
math.abs(d.Position.Y-az)

if not b and f>8 then
b=true
end

local g=d.Position.X-ay
local h=math.max(2,math.min(aA+g,au-at-2))

local i=math.clamp((h-2)/(au-at-4),0,1)

local l,m,p=am:GetGlassFrame(i)
aq.Frame.Bar.Highlight.Glass.Image=l
aq.Frame.Bar.Highlight.Glass.ImageRectSize=m
aq.Frame.Bar.Highlight.Glass.ImageRectOffset=p

ad(aq.Frame,0.12,{
Position=UDim2.new(0,h,0.5,0),
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end)

if as then
as:Disconnect()
end

as=ae.InputEnded:Connect(function(d)
if not al.Window.IsToggleDragging then
return
end
if
d.UserInputType~=Enum.UserInputType.MouseButton1
and d.UserInputType~=Enum.UserInputType.Touch
then
return
end

al.Window.IsToggleDragging=false

if ar then
ar:Disconnect()
ar=nil
end
if as then
as:Disconnect()
as=nil
end

al.WindUI.CurrentInput=nil

if aB then
return
end

if not b then
ax:Set(not ax.Value,true,false)
else
local f=aq.Frame.Position.X.Offset
local g=f+at/2
local h=g>au/2
ax:Set(h,true,false)
end

ad(
aq.Frame.Bar.UIScale,
0.23,
{Scale=1},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
ad(
aq.Frame.Bar.Highlight.BarOverlay,
0.23,
{ImageTransparency=0},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
end)
end
end

return ap,am
end

return aa end function a.G()

local aa={}

local ab=a.load'd'local ac=
ab.New
local ad=ab.Tween


function aa.New(ae,af,ag,ah,ai,aj)
local ak={}

af=af or"sfsymbols:checkmark"

local al=9

local am=ab.Image(
af,
af,
0,
(aj and aj.Window.Folder or"Temp"),
"Checkbox",
true,
false,
"CheckboxIcon"
)
am.Size=UDim2.new(1,-26+ag,1,-26+ag)
am.AnchorPoint=Vector2.new(0.5,0.5)
am.Position=UDim2.new(0.5,0,0.5,0)


local an=ab.NewRoundFrame(al,"Squircle",{
ImageTransparency=.85,
ThemeTag={
ImageColor3="Text"
},
Parent=ah,
Size=UDim2.new(0,26,0,26),
},{
ab.NewRoundFrame(al,"Squircle",{
Size=UDim2.new(1,0,1,0),
Name="Layer",
ThemeTag={
ImageColor3="Checkbox",
},
ImageTransparency=1,
}),
ab.NewRoundFrame(al,"Glass-1.4",{
Size=UDim2.new(1,0,1,0),
Name="Stroke",
ThemeTag={
ImageColor3="CheckboxBorder",
ImageTransparency="CheckboxBorderTransparency",
},
},{







}),

am,
},true)

function ak.Set(ao,ap)
if ap then
ad(an.Layer,0.06,{
ImageTransparency=0,
}):Play()



ad(am.ImageLabel,0.06,{
ImageTransparency=0,
}):Play()
else
ad(an.Layer,0.05,{
ImageTransparency=1,
}):Play()



ad(am.ImageLabel,0.06,{
ImageTransparency=1,
}):Play()
end

task.spawn(function()
if ai then
ab.SafeCallback(ai,ap)
end
end)
end

return an,ak
end


return aa end function a.H()
local aa=a.load'd'local ab=
aa.New local ac=
aa.Tween

local ad=a.load'F'.New
local ae=a.load'G'.New

local af={}

function af.New(ag,ah)
local ai={
__type="Toggle",
Title=ah.Title or"Toggle",
Desc=ah.Desc or nil,
Locked=ah.Locked or false,
LockedTitle=ah.LockedTitle,
Value=ah.Value,
Icon=ah.Icon or nil,
IconSize=ah.IconSize or 23,
Type=ah.Type or"Toggle",
Callback=ah.Callback or function()end,
UIElements={},
}
ai.ToggleFrame=a.load'C'{
Title=ai.Title,
Desc=ai.Desc,




Window=ah.Window,
Parent=ah.Parent,
TextOffset=(52),
Hover=false,
Tab=ah.Tab,
Index=ah.Index,
ElementTable=ai,
ParentConfig=ah,
Tags=ah.Tags,
}

local aj=true

if ai.Value==nil then
ai.Value=false
end

function ai.Lock(ak)
ai.Locked=true
aj=false
return ai.ToggleFrame:Lock(ai.LockedTitle)
end
function ai.Unlock(ak)
ai.Locked=false
aj=true
return ai.ToggleFrame:Unlock()
end

if ai.Locked then
ai:Lock()
end

local ak=ai.Value

local al,am
if ai.Type=="Toggle"then
al,am=ad(
ak,
ai.Icon,
ai.IconSize,
ai.ToggleFrame.UIElements.Main,
ai.Callback,
ah.Window.NewElements,
ah
)
elseif ai.Type=="Checkbox"then
al,am=ae(
ak,
ai.Icon,
ai.IconSize,
ai.ToggleFrame.UIElements.Main,
ai.Callback,
ah
)
else
error("Unknown Toggle Type: "..tostring(ai.Type))
end

al.AnchorPoint=Vector2.new(1,ah.Window.NewElements and 0 or 0.5)
al.Position=UDim2.new(1,0,ah.Window.NewElements and 0 or 0.5,0)

function ai.Set(an,ao,ap,aq)
if aj then
am:Set(ao,ap,aq or false)
ak=ao
ai.Value=ao
end
end

ai:Set(ak,false,ah.Window.NewElements)

local an=ah.WindUI.GenerateGUID()

if ah.Window.NewElements and am.Animate then
if ai.Type=="Toggle"then
aa.AddSignal(al.ToggleFrame.Hitbox.InputBegan,function(ao)
if
not ah.Window.IsToggleDragging
and(
ao.UserInputType==Enum.UserInputType.MouseButton1
or ao.UserInputType==Enum.UserInputType.Touch
)
then
if ah.WindUI.CurrentInput and ah.WindUI.CurrentInput~=an then
return
end

ah.WindUI.CurrentInput=an
am:Animate(ao,ai)
end
end)
end





else
if ai.Type=="Toggle"then
aa.AddSignal(al.ToggleFrame.Hitbox.MouseButton1Click,function()
ai:Set(not ai.Value,nil,ah.Window.NewElements)
end)
elseif ai.Type=="Checkbox"then
aa.AddSignal(al.MouseButton1Click,function()
ai:Set(not ai.Value,nil,ah.Window.NewElements)
end)
end
end

return ai.__type,ai
end

return af end function a.I()

local aa=(cloneref or clonereference or function(aa)
return aa
end)

local ac=aa(game:GetService"UserInputService")
local ad=aa(game:GetService"RunService")

local ae=a.load'd'
local af=ae.New
local ag=ae.Tween

local ah={}

local ai=false

function ah.New(aj,ak)
local al={
__type="Slider",
Title=ak.Title or nil,
Desc=ak.Desc or nil,
Locked=ak.Locked or nil,
LockedTitle=ak.LockedTitle,
Value=ak.Value or{},
Icons=ak.Icons or nil,
IsTooltip=ak.IsTooltip or false,
IsTextbox=ak.IsTextbox,
Step=ak.Step or 1,
Callback=ak.Callback or function()end,
UIElements={},
IsFocusing=false,

Width=ak.Width or 130,
TextBoxWidth=ak.Window.NewElements and 40 or 30,
ThumbSize=13,
IconSize=26,
}
if al.Icons=={}then
al.Icons={
From="sfsymbols:sunMinFill",
To="sfsymbols:sunMaxFill",
}
end
if al.IsTextbox==nil and al.Title==nil then
al.IsTextbox=false
else
al.IsTextbox=al.IsTextbox~=false
end

local am
local an
local ao
local ap=al.Value.Default or al.Value.Min or 0

local aq=ap
local ar=(ap-(al.Value.Min or 0))/((al.Value.Max or 100)-(al.Value.Min or 0))

local as=true
local at=al.Step%1~=0

local function FormatValue(au)
if at then
return tonumber(string.format("%.2f",au))
end
return math.floor(au+0.5)
end

local function CalculateValue(au)
if at then
return math.floor(au/al.Step+0.5)*al.Step
else
return math.floor(au/al.Step+0.5)*al.Step
end
end

local au,av
local aw=32
if al.Icons then
if al.Icons.From then
au=ae.Image(
al.Icons.From,
al.Icons.From,
0,
ak.Window.Folder,
"SliderIconFrom",
true,
true,
"SliderIconFrom"
)
au.Size=UDim2.new(0,al.IconSize,0,al.IconSize)
aw=aw+al.IconSize-2
end
if al.Icons.To then
av=ae.Image(
al.Icons.To,
al.Icons.To,
0,
ak.Window.Folder,
"SliderIconTo",
true,
true,
"SliderIconTo"
)
av.Size=UDim2.new(0,al.IconSize,0,al.IconSize)
aw=aw+al.IconSize-2
end
end
al.SliderFrame=a.load'C'{
Title=al.Title,
Desc=al.Desc,
Parent=ak.Parent,
TextOffset=al.Width,
Hover=false,
Tab=ak.Tab,
Index=ak.Index,
Window=ak.Window,
ElementTable=al,
ParentConfig=ak,
Tags=ak.Tags,
}

al.UIElements.SliderIcon=ae.NewRoundFrame(99,"Squircle",{
ImageTransparency=0.95,
Size=UDim2.new(1,not al.IsTextbox and-aw or(-al.TextBoxWidth-8),0,4),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Name="Frame",
ThemeTag={
ImageColor3="Text",
},
},{
ae.NewRoundFrame(99,"Squircle",{
Name="Frame",
Size=UDim2.new(ar,0,1,0),
ImageTransparency=0.1,
ThemeTag={
ImageColor3="Slider",
},
},{
ae.NewRoundFrame(99,"Squircle",{
Size=UDim2.new(
0,
ak.Window.NewElements and(al.ThumbSize*2)or(al.ThumbSize+2),
0,
ak.Window.NewElements and(al.ThumbSize+4)or(al.ThumbSize+2)
),
Position=UDim2.new(1,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
ImageColor3="SliderThumb",
},
Name="Thumb",
},{
ae.NewRoundFrame(999,"SquircleGlass",{
Size=UDim2.new(1,0,1,0),
ImageColor3=Color3.new(1,1,1),
Name="Highlight",
ImageTransparency=0.5,
}),
}),
}),
})

al.UIElements.SliderContainer=af("Frame",{
Size=UDim2.new(al.Title==nil and 1 or 0,al.Title==nil and 0 or al.Width,0,0),
AutomaticSize="Y",
Position=UDim2.new(1,al.IsTextbox and(ak.Window.NewElements and-16 or 0)or 0,0.5,0),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
Parent=al.SliderFrame.UIElements.Main,
},{
af("UIListLayout",{
Padding=UDim.new(0,al.Title~=nil and 8 or 12),
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment=al.Icons
and(al.Icons.From and(al.Icons.To and"Center"or"Left")or al.Icons.To and"Right")
or"Center",
}),
au,
al.UIElements.SliderIcon,
av,
af("TextBox",{
Size=UDim2.new(0,al.TextBoxWidth,0,0),
TextXAlignment="Left",
Text=FormatValue(ap),
ThemeTag={
TextColor3="Text",
},
TextTransparency=0.4,
AutomaticSize="Y",
TextSize=15,
FontFace=Font.new(ae.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
LayoutOrder=-1,
Visible=al.IsTextbox,
}),
})

local ax
if al.IsTooltip then
ax=a.load'B'.New(
ap,
al.UIElements.SliderIcon.Frame.Thumb,
true,
"Secondary",
"Small",
false
)
ax.Container.AnchorPoint=Vector2.new(0.5,1)
ax.Container.Position=UDim2.new(0.5,0,0,-8)
end

function al.Lock(ay)
al.Locked=true
as=false
return al.SliderFrame:Lock(al.LockedTitle)
end
function al.Unlock(ay)
al.Locked=false
as=true
return al.SliderFrame:Unlock()
end

if al.Locked then
al:Lock()
end


local ay=ak.Tab.UIElements.ContainerFrame

function al.Set(az,aA,aB)
if as then
if
not al.IsFocusing
and not ai
and(
not aB
or(
aB.UserInputType==Enum.UserInputType.MouseButton1
or aB.UserInputType==Enum.UserInputType.Touch
)
)
then
if aB then
am=(aB.UserInputType==Enum.UserInputType.Touch)
ay.ScrollingEnabled=false
ai=true

local b=am and aB.Position.X or ac:GetMouseLocation().X
local d=math.clamp(
(b-al.UIElements.SliderIcon.AbsolutePosition.X)
/al.UIElements.SliderIcon.AbsoluteSize.X,
0,
1
)
aA=CalculateValue(al.Value.Min+d*(al.Value.Max-al.Value.Min))
aA=math.clamp(aA,al.Value.Min or 0,al.Value.Max or 100)

if aA~=aq then
ag(al.UIElements.SliderIcon.Frame,0.05,{Size=UDim2.new(d,0,1,0)}):Play()
al.UIElements.SliderContainer.TextBox.Text=FormatValue(aA)
if ax then
ax.TitleFrame.Text=FormatValue(aA)
end
al.Value.Default=FormatValue(aA)
aq=aA
ae.SafeCallback(al.Callback,FormatValue(aA))
end

an=ad.RenderStepped:Connect(function()
local f=am and aB.Position.X or ac:GetMouseLocation().X
local g=math.clamp(
(f-al.UIElements.SliderIcon.AbsolutePosition.X)
/al.UIElements.SliderIcon.AbsoluteSize.X,
0,
1
)
aA=CalculateValue(al.Value.Min+g*(al.Value.Max-al.Value.Min))

if aA~=aq then
ag(al.UIElements.SliderIcon.Frame,0.05,{Size=UDim2.new(g,0,1,0)}):Play()
al.UIElements.SliderContainer.TextBox.Text=FormatValue(aA)
if ax then
ax.TitleFrame.Text=FormatValue(aA)
end
al.Value.Default=FormatValue(aA)
aq=aA
ae.SafeCallback(al.Callback,FormatValue(aA))
end
end)


ao=ac.InputEnded:Connect(function(f)
if
(
f.UserInputType==Enum.UserInputType.MouseButton1
or f.UserInputType==Enum.UserInputType.Touch
)and aB==f
then
an:Disconnect()
ao:Disconnect()
ai=false
ay.ScrollingEnabled=true

ak.WindUI.CurrentInput=nil

if ak.Window.NewElements then
ag(al.UIElements.SliderIcon.Frame.Thumb,0.2,{
ImageTransparency=0,
Size=UDim2.new(
0,
ak.Window.NewElements and(al.ThumbSize*2)or(al.ThumbSize+2),
0,
ak.Window.NewElements and(al.ThumbSize+4)or(al.ThumbSize+2)
),
},Enum.EasingStyle.Quint,Enum.EasingDirection.InOut):Play()
end
if ax then
ax:Close(false)
end
end
end)
else
aA=math.clamp(aA,al.Value.Min or 0,al.Value.Max or 100)

local b=math.clamp(
(aA-(al.Value.Min or 0))/((al.Value.Max or 100)-(al.Value.Min or 0)),
0,
1
)
aA=CalculateValue(al.Value.Min+b*(al.Value.Max-al.Value.Min))

if aA~=aq then
ag(al.UIElements.SliderIcon.Frame,0.05,{Size=UDim2.new(b,0,1,0)}):Play()
al.UIElements.SliderContainer.TextBox.Text=FormatValue(aA)
if ax then
ax.TitleFrame.Text=FormatValue(aA)
end
al.Value.Default=FormatValue(aA)
aq=aA
ae.SafeCallback(al.Callback,FormatValue(aA))
end
end
end
end
end

function al.SetMax(az,aA)
al.Value.Max=aA

local aB=tonumber(al.Value.Default)or aq
if aB>aA then
al:Set(aA)
else
local b=
math.clamp((aB-(al.Value.Min or 0))/(aA-(al.Value.Min or 0)),0,1)
ag(al.UIElements.SliderIcon.Frame,0.1,{Size=UDim2.new(b,0,1,0)}):Play()
end
end

function al.SetMin(az,aA)
al.Value.Min=aA

local aB=tonumber(al.Value.Default)or aq
if aB<aA then
al:Set(aA)
else
local b=math.clamp((aB-aA)/((al.Value.Max or 100)-aA),0,1)
ag(al.UIElements.SliderIcon.Frame,0.1,{Size=UDim2.new(b,0,1,0)}):Play()
end
end

ae.AddSignal(al.UIElements.SliderContainer.TextBox.FocusLost,function(az)
local aA=tonumber(al.UIElements.SliderContainer.TextBox.Text)
if aA then
al:Set(aA)
else
al.UIElements.SliderContainer.TextBox.Text=FormatValue(aq)
if ax then
ax.TitleFrame.Text=FormatValue(aq)
end
end
end)

local az=ak.WindUI.GenerateGUID()

ae.AddSignal(al.UIElements.SliderContainer.InputBegan,function(aA)
if al.Locked or ai then
return
end
if
aA.UserInputType==Enum.UserInputType.MouseButton1
or aA.UserInputType==Enum.UserInputType.Touch
then
if ak.WindUI.CurrentInput and ak.WindUI.CurrentInput~=az then
return
end
ak.WindUI.CurrentInput=az

al:Set(ap,aA)


if ak.Window.NewElements then
ag(al.UIElements.SliderIcon.Frame.Thumb,0.24,{
ImageTransparency=0.85,
Size=UDim2.new(
0,
(ak.Window.NewElements and(al.ThumbSize*2)or al.ThumbSize)+8,
0,
al.ThumbSize+8
),
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end
if ax then
ax:Open()
end

end
end)

return al.__type,al
end

return ah end function a.J()

local aa=a.load'd'
local ac=aa.New
local ad=aa.Tween

local ae={}

local function ToFiniteNumber(af)
local ag=tonumber(af)
if ag==nil or ag~=ag or math.abs(ag)==math.huge then
return nil
end

return ag
end

local function FormatNumber(af)
if af%1==0 then
return tostring(af)
end

return tostring(tonumber(string.format("%.2f",af)))
end

function ae.New(af,ag)
local ah=typeof(ag.Value)=="table"and ag.Value or{}
local ai=ToFiniteNumber(ah.Min)or ToFiniteNumber(ag.Min)or 0
local aj=ToFiniteNumber(ah.Max)or ToFiniteNumber(ag.Max)or 100

if ai>aj then
ai,aj=aj,ai
end

local ak=typeof(ag.Value)=="number"and ag.Value
or ToFiniteNumber(ah.Default)
or ToFiniteNumber(ag.Default)
or ai
ak=ToFiniteNumber(ak)or ai

local al=ag.Indeterminate==true

local am=ag.ShowValue
if am==nil then
am=not al
end

local an=math.max(ToFiniteNumber(ag.ValueWidth)or 44,0)

local ao={
__type="ProgressBar",
Title=ag.Title or"Progress",
Desc=ag.Desc or nil,
Value={
Min=ai,
Max=aj,
Default=math.clamp(ak,ai,aj),
},
ShowValue=am,
DisplayMode=ag.DisplayMode or"Percent",
Format=ag.Format,
Animate=ag.Animate~=false,
AnimationDuration=math.max(ToFiniteNumber(ag.AnimationDuration)or 0.15,0),
Indeterminate=al,
IndeterminateText=ag.IndeterminateText or"",
Speed=math.max(ToFiniteNumber(ag.Speed)or 1,0.01),
ControlGap=math.max(ToFiniteNumber(ag.ControlGap)or 16,0),
UIElements={},

Width=math.max(ToFiniteNumber(ag.Width)or 160,0),
ValueWidth=an,
}

local function GetRatio(ap)
if ao.Value.Max==ao.Value.Min then
return ap>=ao.Value.Max and 1 or 0
end

return math.clamp((ap-ao.Value.Min)/(ao.Value.Max-ao.Value.Min),0,1)
end

local function GetValueText(ap,aq)
if ao.Indeterminate then
return tostring(ao.IndeterminateText)
end

local ar=aq*100

if typeof(ao.Format)=="function"then
local as,at=
pcall(ao.Format,ap,ar,ao.Value.Min,ao.Value.Max)

if as and at~=nil then
return tostring(at)
end
end

if ao.DisplayMode=="Value"then
return FormatNumber(ap)
elseif ao.DisplayMode=="Fraction"then
return FormatNumber(ap).."/"..FormatNumber(ao.Value.Max)
end

return tostring(math.floor(ar+0.5)).."%"
end

ao.ProgressBarFrame=a.load'C'{
Title=ao.Title,
Desc=ao.Desc,
Parent=ag.Parent,
TextOffset=ao.Width+ao.ControlGap,
Hover=false,
Tab=ag.Tab,
Index=ag.Index,
Window=ag.Window,
ElementTable=ao,
ParentConfig=ag,
Tags=ag.Tags,
}

ao.UIElements.Fill=aa.NewRoundFrame(99,"Squircle",{
Name="Fill",
Size=ao.Indeterminate and UDim2.new(0.3,0,1,0)
or UDim2.new(GetRatio(ao.Value.Default),0,1,0),
Position=ao.Indeterminate and UDim2.new(-0.3,0,0,0)or UDim2.new(0,0,0,0),
ThemeTag={
ImageColor3="ProgressBar",
},
})

ao.UIElements.Bar=aa.NewRoundFrame(99,"Squircle",{
Name="Bar",
Size=UDim2.new(1,ao.ShowValue and-(ao.ValueWidth+8)or 0,0,6),
ClipsDescendants=true,
ImageTransparency=0.9,
ThemeTag={
ImageColor3="ProgressBarTrack",
ImageTransparency="ProgressBarTrackTransparency",
},
},{
ao.UIElements.Fill,
})

ao.UIElements.Value=ac("TextLabel",{
Name="Value",
Size=UDim2.new(0,ao.ValueWidth,0,20),
BackgroundTransparency=1,
FontFace=Font.new(aa.Font,Enum.FontWeight.Medium),
Text=GetValueText(ao.Value.Default,GetRatio(ao.Value.Default)),
TextSize=14,
TextTransparency=0.25,
TextTruncate="AtEnd",
TextXAlignment="Right",
Visible=ao.ShowValue,
ThemeTag={
TextColor3="ProgressBarText",
},
})

ao.UIElements.Container=ac("Frame",{
Name="ProgressBarContainer",
Size=UDim2.new(0,ao.Width,0,36),
Position=UDim2.new(1,0,ag.Window.NewElements and 0 or 0.5,0),
AnchorPoint=Vector2.new(1,ag.Window.NewElements and 0 or 0.5),
BackgroundTransparency=1,
Parent=ao.ProgressBarFrame.UIElements.Main,
},{
ac("UIListLayout",{
Padding=UDim.new(0,8),
FillDirection="Horizontal",
HorizontalAlignment="Right",
VerticalAlignment="Center",
}),
ao.UIElements.Bar,
ao.UIElements.Value,
})

if ao.Indeterminate then
local ap=ad(
ao.UIElements.Fill,
1/ao.Speed,
{Position=UDim2.new(1,0,0,0)},
Enum.EasingStyle.Linear,
Enum.EasingDirection.InOut,-1

)
aa.AddSignal(ao.UIElements.Bar.Destroying,function()
ap:Cancel()
end)
ap:Play()
end

local function Update(ap,aq)
local ar=ToFiniteNumber(ap)
if ar==nil then
return ao.Value.Default
end

ar=math.clamp(ar,ao.Value.Min,ao.Value.Max)
ao.Value.Default=ar

local as=GetRatio(ar)
local at=UDim2.new(as,0,1,0)

if ao.UIElements.Fill and not ao.Indeterminate then
if aq or not ao.Animate or ao.AnimationDuration<=0 then
ao.UIElements.Fill.Size=at
else
ad(
ao.UIElements.Fill,
ao.AnimationDuration,
{Size=at},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
end
end

ao.UIElements.Value.Text=GetValueText(ar,as)

return ar
end

function ao.Set(ap,aq)
return Update(aq,false)
end

function ao.Get(ap)
return ao.Value.Default
end

function ao.GetPercentage(ap)
return GetRatio(ao.Value.Default)*100
end

function ao.SetRange(ap,aq,ar)
aq=ToFiniteNumber(aq)
ar=ToFiniteNumber(ar)

if aq==nil or ar==nil then
return ao.Value.Min,ao.Value.Max
end

if aq>ar then
aq,ar=ar,aq
end

ao.Value.Min=aq
ao.Value.Max=ar
Update(ao.Value.Default,false)

return aq,ar
end

function ao.SetMin(ap,aq)
aq=ToFiniteNumber(aq)
if aq==nil then
return ao.Value.Min
end

ao:SetRange(aq,math.max(aq,ao.Value.Max))
return ao.Value.Min
end

function ao.SetMax(ap,aq)
aq=ToFiniteNumber(aq)
if aq==nil then
return ao.Value.Max
end

ao:SetRange(math.min(ao.Value.Min,aq),aq)
return ao.Value.Max
end

Update(ao.Value.Default,true)

return ao.__type,ao
end

return ae end function a.K()

local aa=(cloneref or clonereference or function(aa)
return aa
end)

local ac=aa(game:GetService"UserInputService")

local ad=a.load'd'
local ae=ad.New local af=
ad.Tween

local ag={
UICorner=6,
UIPadding=8,
}

local ah=a.load'w'.New

function ag.New(ai,aj)
local function NormalizeKeyCode(ak)
if typeof(ak)=="EnumItem"then
return ak.Name
elseif type(ak)=="string"then
return ak
else
return"F"
end
end

local ak={
__type="Keybind",
Title=aj.Title or"Keybind",
Desc=aj.Desc or nil,
Locked=aj.Locked or false,
LockedTitle=aj.LockedTitle,
Value=NormalizeKeyCode(aj.Value)or"F",
Callback=aj.Callback or function()end,
CanChange=aj.CanChange~=false,
Blacklist=aj.Blacklist or{},
Picking=false,
UIElements={},
}

local al={}

for am,an in next,ak.Blacklist do
table.insert(al,Enum.KeyCode[NormalizeKeyCode(an)])
end
table.insert(al,Enum.KeyCode[NormalizeKeyCode"Escape"])

local am=true

ak.KeybindFrame=a.load'C'{
Title=ak.Title,
Desc=ak.Desc,
Parent=aj.Parent,
TextOffset=85,
Hover=ak.CanChange,
Tab=aj.Tab,
Index=aj.Index,
Window=aj.Window,
ElementTable=ak,
ParentConfig=aj,
Tags=aj.Tags,
}

ak.UIElements.Keybind=ah(
ak.Value,
nil,
ak.KeybindFrame.UIElements.Main,
nil,
aj.Window.NewElements and 12 or 10
)

ak.UIElements.Keybind.Size=
UDim2.new(0,24+ak.UIElements.Keybind.Frame.Frame.TextLabel.TextBounds.X,0,42)
ak.UIElements.Keybind.AnchorPoint=Vector2.new(1,0.5)
ak.UIElements.Keybind.Position=UDim2.new(1,0,0.5,0)
ak.UIElements.Keybind.Interactable=false

ae("UIScale",{
Parent=ak.UIElements.Keybind,
Scale=0.85,
})

ad.AddSignal(
ak.UIElements.Keybind.Frame.Frame.TextLabel:GetPropertyChangedSignal"TextBounds",
function()
ak.UIElements.Keybind.Size=
UDim2.new(0,24+ak.UIElements.Keybind.Frame.Frame.TextLabel.TextBounds.X,0,42)
end
)

function ak.Lock(an)
ak.Locked=true
am=false
return ak.KeybindFrame:Lock(ak.LockedTitle)
end
function ak.Unlock(an)
ak.Locked=false
am=true
return ak.KeybindFrame:Unlock()
end

function ak.Set(an,ao)
local ap=NormalizeKeyCode(ao)
ak.Value=ap
ak.UIElements.Keybind.Frame.Frame.TextLabel.Text=ap
end

if ak.Locked then
ak:Lock()
end

local an

ad.AddSignal(ak.KeybindFrame.UIElements.Main.MouseButton1Click,function()
if am then
if ak.CanChange then
ak.Picking=true
ak.UIElements.Keybind.Frame.Frame.TextLabel.Text="..."



local ao
ao=ac.InputBegan:Connect(function(ap)
local aq

if ap.UserInputType==Enum.UserInputType.Keyboard then
if table.find(al,ap.KeyCode)then
aq=nil
return
else
aq=ap.KeyCode.Name
end
elseif
ap.UserInputType==Enum.UserInputType.MouseButton1
and not table.find(al,"MouseLeftButton")
then
aq="MouseLeftButton"
elseif
ap.UserInputType==Enum.UserInputType.MouseButton2
and not table.find(al,"MouseRightButton")
then
aq="MouseRightButton"
end

if an then
an:Disconnect()
end

an=ac.InputEnded:Connect(function(ar)
if
aq
and(
ar.KeyCode.Name==aq
or aq=="MouseLeft"and ar.UserInputType==Enum.UserInputType.MouseButton1
or aq=="MouseRight"and ar.UserInputType==Enum.UserInputType.MouseButton2
)
then
ak.Picking=false

ak.UIElements.Keybind.Frame.Frame.TextLabel.Text=aq
ak.Value=aq

ao:Disconnect()
an:Disconnect()
end
end)
end)
end
end
end)

ad.AddSignal(ac.InputBegan,function(ao,ap)
if ac:GetFocusedTextBox()then
return
end
if not am then
return
end
if ak.Picking then
return
end

if ao.UserInputType==Enum.UserInputType.Keyboard then
if ao.KeyCode.Name==ak.Value then
ad.SafeCallback(ak.Callback,ao.KeyCode.Name)
end
elseif ao.UserInputType==Enum.UserInputType.MouseButton1 and ak.Value=="MouseLeft"then
ad.SafeCallback(ak.Callback,"MouseLeft")
elseif ao.UserInputType==Enum.UserInputType.MouseButton2 and ak.Value=="MouseRight"then
ad.SafeCallback(ak.Callback,"MouseRight")
end
end)

return ak.__type,ak
end

return ag end function a.L()

local aa=a.load'd'local ac=
aa.New local ad=
aa.Tween

local ae={
UICorner=8,
UIPadding=8,
}local af=a.load'm'

.New
local ag=a.load'n'.New

function ae.New(ah,ai)
local aj={
__type="Input",
Title=ai.Title or"Input",
Desc=ai.Desc or nil,
Type=ai.Type or"Input",
Locked=ai.Locked or false,
LockedTitle=ai.LockedTitle,
InputIcon=ai.InputIcon or false,
Placeholder=ai.Placeholder or"Enter Text...",
Value=ai.Value or"",
Callback=ai.Callback or function()end,
ClearTextOnFocus=ai.ClearTextOnFocus or false,
UIElements={},

Width=150,
}

local ak=true

aj.InputFrame=a.load'C'{
Title=aj.Title,
Desc=aj.Desc,
Parent=ai.Parent,
TextOffset=aj.Width,
Hover=false,
Tab=ai.Tab,
Index=ai.Index,
Window=ai.Window,
ElementTable=aj,
ParentConfig=ai,
Tags=ai.Tags,
}

local al=ag(
aj.Placeholder,
aj.InputIcon,
aj.Type=="Textarea"and aj.InputFrame.UIElements.Container or aj.InputFrame.UIElements.Main,
aj.Type,
function(al)
aj:Set(al,true)
end,
nil,
ai.Window.NewElements and 12 or 10,
aj.ClearTextOnFocus
)

if aj.Type~="Textarea"then
al.Size=UDim2.new(0,aj.Width,0,36)
al.Position=UDim2.new(1,0,ai.Window.NewElements and 0 or 0.5,0)
al.AnchorPoint=Vector2.new(1,ai.Window.NewElements and 0 or 0.5)
else
al.Size=UDim2.new(1,0,0,148)
end






function aj.Lock(am)
aj.Locked=true
ak=false
return aj.InputFrame:Lock(aj.LockedTitle)
end
function aj.Unlock(am)
aj.Locked=false
ak=true
return aj.InputFrame:Unlock()
end

function aj.Set(am,an,ao)
if ak then
aj.Value=an
aa.SafeCallback(aj.Callback,an)

if not ao then
al.Frame.Frame.TextBox.Text=an
end
end
end

function aj.SetPlaceholder(am,an)
al.Frame.Frame.TextBox.PlaceholderText=an
aj.Placeholder=an
end

aj:Set(aj.Value)

if aj.Locked then
aj:Lock()
end

return aj.__type,aj
end

return ae end function a.M()

local aa=a.load'd'
local ae=aa.New

local af={}

function af.New(ag,ah)
local ai=ae("Frame",{
Size=ah.ParentType~="Group"and UDim2.new(1,0,0,1)or UDim2.new(0,1,1,0),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=.9,
ThemeTag={
BackgroundColor3="Text"
}
})
local aj=ae("Frame",{
Parent=ah.Parent,
Size=ah.ParentType~="Group"and UDim2.new(1,-7,0,7)or UDim2.new(0,7,1,-7),
BackgroundTransparency=1,
},{
ai
})

return"Divider",{__type="Divider",ElementFrame=aj}
end

return af end function a.N()
local aa={}

local ae=(cloneref or clonereference or function(ae)
return ae
end)

local af=ae(game:GetService"UserInputService")
local ag=ae(game:GetService"Players").LocalPlayer:GetMouse()
local ah=ae(game:GetService"Workspace").CurrentCamera local ai=

workspace.CurrentCamera

local aj=a.load'n'.New

local ak=a.load'd'
local al=ak.New
local am=ak.Tween

local an=0.67

function aa.New(ao,ap,aq,ar)
local as={}

if not ap.Callback then
ar="Menu"
end

ap.UIElements.UIListLayout=al("UIListLayout",{
Padding=UDim.new(0,aq.MenuPadding/1.5),
FillDirection="Vertical",
HorizontalAlignment="Center",
})

ap.UIElements.Menu=ak.NewRoundFrame(aq.MenuCorner,"Squircle",{
ThemeTag={
ImageColor3="DropdownBackground",
},
ImageTransparency=1,
Size=UDim2.new(1,0,1,0),
AnchorPoint=Vector2.new(1,0),
Position=UDim2.new(1,0,0,0),
},{
al("UIPadding",{
PaddingTop=UDim.new(0,aq.MenuPadding),
PaddingLeft=UDim.new(0,aq.MenuPadding),
PaddingRight=UDim.new(0,aq.MenuPadding),
PaddingBottom=UDim.new(0,aq.MenuPadding),
}),
al("UIListLayout",{
FillDirection="Vertical",
Padding=UDim.new(0,aq.MenuPadding),
}),
al("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,ap.SearchBarEnabled and-aq.MenuPadding-aq.SearchBarHeight),

ClipsDescendants=true,
LayoutOrder=999,
Name="Frame",
},{
al("UICorner",{
CornerRadius=UDim.new(0,aq.MenuCorner-aq.MenuPadding),
}),
al("ScrollingFrame",{
Size=UDim2.new(1,0,1,0),
ScrollBarThickness=0,
ScrollingDirection="Y",
AutomaticCanvasSize="Y",
CanvasSize=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
ScrollBarImageTransparency=1,
},{
ap.UIElements.UIListLayout,
}),
}),
})

ap.UIElements.MenuCanvas=al("Frame",{
Size=UDim2.new(0,ap.MenuWidth,0,300),
BackgroundTransparency=1,
Position=UDim2.new(-10,0,-10,0),
Visible=false,
Active=false,

Parent=ao.WindUI.DropdownGui,
AnchorPoint=Vector2.new(1,0),
},{
ap.UIElements.Menu,
al("UISizeConstraint",{
MinSize=Vector2.new(170,0),
MaxSize=Vector2.new(300,400),
}),
})

local function RecalculateCanvasSize()
ap.UIElements.Menu.Frame.ScrollingFrame.CanvasSize=
UDim2.fromOffset(0,ap.UIElements.UIListLayout.AbsoluteContentSize.Y)
end

local function RecalculateListSize()
local at=ao.WindUI.DropdownGui.AbsoluteSize.Y

local au=ap.UIElements.UIListLayout.AbsoluteContentSize.Y/ao.UIScale
local av=ap.SearchBarEnabled and(aq.SearchBarHeight+(aq.MenuPadding*3))
or(aq.MenuPadding*2)
local aw=au+av

if aw>at then
ap.UIElements.MenuCanvas.Size=
UDim2.fromOffset(ap.UIElements.MenuCanvas.AbsoluteSize.X,at)
else
ap.UIElements.MenuCanvas.Size=
UDim2.fromOffset(ap.UIElements.MenuCanvas.AbsoluteSize.X,aw)
end
end

function UpdatePosition()
local at=ap.UIElements.Dropdown or ap.DropdownFrame.UIElements.Main
local au=ap.UIElements.MenuCanvas

local av=ah.ViewportSize.Y
-(at.AbsolutePosition.Y+at.AbsoluteSize.Y)
-aq.MenuPadding
-54
local aw=au.AbsoluteSize.Y+aq.MenuPadding

local ax=-54
if av<aw then
ax=aw-av-54
end

au.Position=UDim2.new(
0,
at.AbsolutePosition.X+at.AbsoluteSize.X,
0,
at.AbsolutePosition.Y+at.AbsoluteSize.Y-ax+(aq.MenuPadding*2)
)
end

local at

function as.Display(au)
local av=ap.Values
local aw=""

if ap.Multi then
local ax={}
if typeof(ap.Value)=="table"then
for ay,az in ipairs(ap.Value)do
local aA=typeof(az)=="table"and az.Title or az
ax[aA]=true
end
end

for ay,az in ipairs(av)do
local aA=typeof(az)=="table"and az.Title or az
if ax[aA]then
aw=aw..aA..", "
end
end

if#aw>0 then
aw=aw:sub(1,#aw-2)
end
else
aw=typeof(ap.Value)=="table"and(ap.Value.Title or ap.Value[1])
or ap.Value
or""
end

if ap.UIElements.Dropdown then
ap.UIElements.Dropdown.Frame.Frame.TextLabel.Text=(aw==""and"--"or aw)
end
end

local function Callback(au)
as:Display()
if ap.Locked then
return
end

if ap.Callback then
task.spawn(function()
if ap.Locked then
return
end
ak.SafeCallback(ap.Callback,ap.Value)
end)
else
task.spawn(function()
if ap.Locked then
return
end
ak.SafeCallback(au)
end)
end
end

function as.LockValues(au,av)
if not av then
return
end

for aw,ax in next,ap.Tabs do
if ax and ax.UIElements and ax.UIElements.TabItem then
local ay=ax.Name
local az=false

for aA,aB in next,av do
if ay==aB then
az=true
break
end
end

if az then
am(ax.UIElements.TabItem,0.1,{ImageTransparency=1}):Play()

am(ax.UIElements.TabItem.Frame.Title.TextLabel,0.1,{TextTransparency=0.6}):Play()
if ax.UIElements.TabIcon then
am(ax.UIElements.TabIcon.ImageLabel,0.1,{ImageTransparency=0.6}):Play()
end

ax.UIElements.TabItem.Active=false
ax.Locked=true
else
if ax.Selected then
am(ax.UIElements.TabItem,0.1,{ImageTransparency=an}):Play()

am(ax.UIElements.TabItem.Frame.Title.TextLabel,0.1,{TextTransparency=0}):Play()
if ax.UIElements.TabIcon then
am(ax.UIElements.TabIcon.ImageLabel,0.1,{ImageTransparency=0}):Play()
end
else
am(ax.UIElements.TabItem,0.1,{ImageTransparency=1}):Play()

am(
ax.UIElements.TabItem.Frame.Title.TextLabel,
0.1,
{TextTransparency=ar=="Dropdown"and 0.4 or 0.05}
):Play()
if ax.UIElements.TabIcon then
am(
ax.UIElements.TabIcon.ImageLabel,
0.1,
{ImageTransparency=ar=="Dropdown"and 0.2 or 0}
):Play()
end
end

ax.UIElements.TabItem.Active=true
ax.Locked=false
end
end
end
end

function as.Refresh(au,av)
if ao.Window.Destroyed then
return
end

for aw,ax in next,ap.UIElements.Menu.Frame.ScrollingFrame:GetChildren()do
if not ax:IsA"UIListLayout"then
ax:Destroy()
end
end

ap.Tabs={}

if ap.SearchBarEnabled then
if not at then
at=aj("Search...","search",ap.UIElements.Menu,nil,function(aw)
for ax,ay in next,ap.Tabs do
if string.find(string.lower(ay.Name),string.lower(aw),1,true)then
ay.UIElements.TabItem.Visible=true
else
ay.UIElements.TabItem.Visible=false
end
RecalculateListSize()
RecalculateCanvasSize()
end
end,true)
at.Size=UDim2.new(1,0,0,aq.SearchBarHeight)
at.Position=UDim2.new(0,0,0,0)
at.Name="SearchBar"
end
end

for aw,ax in next,av do
if ax.Type~="Divider"then
local ay={
Name=typeof(ax)=="table"and ax.Title or ax,
Desc=typeof(ax)=="table"and ax.Desc or nil,
Icon=typeof(ax)=="table"and ax.Icon or nil,
IconSize=typeof(ax)=="table"and ax.IconSize or nil,
Original=ax,
Selected=false,
Locked=typeof(ax)=="table"and ax.Locked or false,
UIElements={},
}
local az
if ay.Icon then
az=ak.Image(ay.Icon,ay.Icon,0,ao.Window.Folder,"Dropdown",true)
az.Size=
UDim2.new(0,ay.IconSize or aq.TabIcon,0,ay.IconSize or aq.TabIcon)
az.ImageLabel.ImageTransparency=ar=="Dropdown"and 0.2 or 0
ay.UIElements.TabIcon=az
end
ay.UIElements.TabItem=ak.NewRoundFrame(
aq.MenuCorner-aq.MenuPadding,
"Squircle",
{
Size=UDim2.new(1,0,0,36),
AutomaticSize=ay.Desc and"Y",
ImageTransparency=1,
Parent=ap.UIElements.Menu.Frame.ScrollingFrame,

ThemeTag={
ImageColor3="DropdownTabBackground",
},
Active=not ay.Locked,
},
{
ak.NewRoundFrame(aq.MenuCorner-aq.MenuPadding,"Glass-1.4",{
Size=UDim2.new(1,0,1,0),
ThemeTag={
ImageColor3="DropdownTabBorder",
},
ImageTransparency=1,
Name="Highlight",
},{













}),
al("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
},{
al("UIListLayout",{
Padding=UDim.new(0,aq.TabPadding),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
al("UIPadding",{
PaddingTop=UDim.new(0,aq.TabPadding),
PaddingLeft=UDim.new(0,aq.TabPadding),
PaddingRight=UDim.new(0,aq.TabPadding),
PaddingBottom=UDim.new(0,aq.TabPadding),
}),
al("UICorner",{
CornerRadius=UDim.new(0,aq.MenuCorner-aq.MenuPadding),
}),
az,
al("Frame",{
Size=UDim2.new(1,az and-aq.TabPadding-aq.TabIcon or 0,0,0),
BackgroundTransparency=1,
AutomaticSize="Y",
Name="Title",
},{
al("TextLabel",{
Text=ay.Name,
TextXAlignment="Left",
FontFace=Font.new(ak.Font,Enum.FontWeight.Medium),
ThemeTag={
TextColor3="Text",
BackgroundColor3="Text",
},
TextSize=15,
BackgroundTransparency=1,
TextTransparency=ar=="Dropdown"and 0.4 or 0.05,
LayoutOrder=999,
AutomaticSize="Y",
Size=UDim2.new(1,0,0,0),
}),
al("TextLabel",{
Text=ay.Desc or"",
TextXAlignment="Left",
FontFace=Font.new(ak.Font,Enum.FontWeight.Regular),
ThemeTag={
TextColor3="Text",
BackgroundColor3="Text",
},
TextSize=15,
BackgroundTransparency=1,
TextTransparency=ar=="Dropdown"and 0.6 or 0.35,
LayoutOrder=999,
AutomaticSize="Y",
TextWrapped=true,
Size=UDim2.new(1,0,0,0),
Visible=ay.Desc and true or false,
Name="Desc",
}),
al("UIListLayout",{
Padding=UDim.new(0,aq.TabPadding/3),
FillDirection="Vertical",
}),
}),
}),
},
true
)

if ay.Locked then
ay.UIElements.TabItem.Frame.Title.TextLabel.TextTransparency=0.6
if ay.UIElements.TabIcon then
ay.UIElements.TabIcon.ImageLabel.ImageTransparency=0.6
end
end

if ap.Multi and typeof(ap.Value)=="string"then
for aA,aB in next,ap.Values do
if typeof(aB)=="table"then
if aB.Title==ap.Value then
ap.Value={aB}
end
else
if aB==ap.Value then
ap.Value={ap.Value}
end
end
end
end

if ap.Multi then
local aA=false
if typeof(ap.Value)=="table"then
for aB,b in ipairs(ap.Value)do
local d=typeof(b)=="table"and b.Title or b
if d==ay.Name then
aA=true
break
end
end
end
ay.Selected=aA
else
local aA=typeof(ap.Value)=="table"and ap.Value.Title or ap.Value
ay.Selected=aA==ay.Name
end

if ay.Selected and not ay.Locked then
ay.UIElements.TabItem.ImageTransparency=an

ay.UIElements.TabItem.Frame.Title.TextLabel.TextTransparency=0
if ay.UIElements.TabIcon then
ay.UIElements.TabIcon.ImageLabel.ImageTransparency=0
end
end

ap.Tabs[aw]=ay

as:Display()

if ar=="Dropdown"then
ak.AddSignal(ay.UIElements.TabItem.MouseButton1Click,function()
if ap.Locked or ay.Locked then
return
end

if ap.Multi then
if not ay.Selected then
ay.Selected=true
am(
ay.UIElements.TabItem,
0.1,
{ImageTransparency=an}
):Play()

am(ay.UIElements.TabItem.Frame.Title.TextLabel,0.1,{TextTransparency=0}):Play()
if ay.UIElements.TabIcon then
am(ay.UIElements.TabIcon.ImageLabel,0.1,{ImageTransparency=0}):Play()
end
table.insert(ap.Value,ay.Original)
else
if not ap.AllowNone and#ap.Value==1 then
return
end
ay.Selected=false
am(ay.UIElements.TabItem,0.1,{ImageTransparency=1}):Play()

am(ay.UIElements.TabItem.Frame.Title.TextLabel,0.1,{TextTransparency=0.4}):Play()
if ay.UIElements.TabIcon then
am(ay.UIElements.TabIcon.ImageLabel,0.1,{ImageTransparency=0.2}):Play()
end

for aA,aB in next,ap.Value do
if typeof(aB)=="table"and(aB.Title==ay.Name)or(aB==ay.Name)then
table.remove(ap.Value,aA)
break
end
end
end
else
for aA,aB in next,ap.Tabs do
am(aB.UIElements.TabItem,0.1,{ImageTransparency=1}):Play()

am(
aB.UIElements.TabItem.Frame.Title.TextLabel,
0.1,
{TextTransparency=0.4}
):Play()
if aB.UIElements.TabIcon then
am(aB.UIElements.TabIcon.ImageLabel,0.1,{ImageTransparency=0.2}):Play()
end
aB.Selected=false
end
ay.Selected=true
am(ay.UIElements.TabItem,0.1,{ImageTransparency=an}):Play()

am(ay.UIElements.TabItem.Frame.Title.TextLabel,0.1,{TextTransparency=0}):Play()
if ay.UIElements.TabIcon then
am(ay.UIElements.TabIcon.ImageLabel,0.1,{ImageTransparency=0}):Play()
end
ap.Value=ay.Original
end
Callback()
end)
elseif ar=="Menu"then
if not ay.Locked then
ak.AddSignal(ay.UIElements.TabItem.MouseEnter,function()
am(ay.UIElements.TabItem,0.08,{ImageTransparency=an}):Play()
end)
ak.AddSignal(ay.UIElements.TabItem.InputEnded,function()
am(ay.UIElements.TabItem,0.08,{ImageTransparency=1}):Play()
end)
end
ak.AddSignal(ay.UIElements.TabItem.MouseButton1Click,function()
if ap.Locked or ay.Locked then
return
end
Callback(ax.Callback or function()end)
end)
end

RecalculateCanvasSize()
RecalculateListSize()
else a.load'M'
:New{Parent=ap.UIElements.Menu.Frame.ScrollingFrame}
end
end










ap.UIElements.MenuCanvas.Size=UDim2.new(
0,
ap.MenuWidth+6+6+5+5+18+6+6,
ap.UIElements.MenuCanvas.Size.Y.Scale,
ap.UIElements.MenuCanvas.Size.Y.Offset
)
Callback()

ap.Values=av
end

as:Refresh(ap.Values)

function as.Select(au,av)
if av then
ap.Value=av
else
if ap.Multi then
ap.Value={}
else
ap.Value=nil
end
end
as:Refresh(ap.Values)
end

RecalculateListSize()
RecalculateCanvasSize()

function as.Open(au)
if not ap.Locked then
ap.UIElements.Menu.Visible=true
ap.UIElements.MenuCanvas.Visible=true
ap.UIElements.MenuCanvas.Active=true
ap.UIElements.Menu.Size=UDim2.new(1,0,0,0)
am(ap.UIElements.Menu,0.1,{
Size=UDim2.new(1,0,1,0),
ImageTransparency=0,
},Enum.EasingStyle.Quart,Enum.EasingDirection.Out):Play()

task.spawn(function()
task.wait(0.1)
if ap.Locked then
return
end
ap.Opened=true
end)

UpdatePosition()
end
end

function as.Close(au)
ap.Opened=false

am(ap.UIElements.Menu,0.25,{
Size=UDim2.new(1,0,0,0),
ImageTransparency=1,
},Enum.EasingStyle.Quart,Enum.EasingDirection.Out):Play()

task.spawn(function()
task.wait(0.1)
ap.UIElements.Menu.Visible=false
end)

task.spawn(function()
task.wait(0.25)
ap.UIElements.MenuCanvas.Visible=false
ap.UIElements.MenuCanvas.Active=false
end)
end

ak.AddSignal(
(
ap.UIElements.Dropdown and ap.UIElements.Dropdown.MouseButton1Click
or ap.DropdownFrame.UIElements.Main.MouseButton1Click
),
function()
as:Open()
end
)

ak.AddSignal(af.InputBegan,function(au)
if
au.UserInputType==Enum.UserInputType.MouseButton1
or au.UserInputType==Enum.UserInputType.Touch
then
local av=ap.UIElements.MenuCanvas
local aw,ax=av.AbsolutePosition,av.AbsoluteSize

local ay=ap.UIElements.Dropdown or ap.DropdownFrame.UIElements.Main
local az=ay.AbsolutePosition
local aA=ay.AbsoluteSize

local aB=ag.X>=az.X
and ag.X<=az.X+aA.X
and ag.Y>=az.Y
and ag.Y<=az.Y+aA.Y

local b=ag.X>=aw.X
and ag.X<=aw.X+ax.X
and ag.Y>=aw.Y
and ag.Y<=aw.Y+ax.Y

if ao.Window.CanDropdown and ap.Opened and not aB and not b then
as:Close()
end
end
end)

ak.AddSignal(
ap.UIElements.Dropdown and ap.UIElements.Dropdown:GetPropertyChangedSignal"AbsolutePosition"
or ap.DropdownFrame.UIElements.Main:GetPropertyChangedSignal"AbsolutePosition",
UpdatePosition
)

return as
end

return aa end function a.O()

local aa=(cloneref or clonereference or function(aa)
return aa
end)

aa(game:GetService"UserInputService")
aa(game:GetService"Players").LocalPlayer:GetMouse()local ae=
aa(game:GetService"Workspace").CurrentCamera

local af=a.load'd'
local ag=af.New local ah=
af.Tween

local ai=a.load'w'.New local aj=a.load'n'
.New
local ak=a.load'N'.New local al=

workspace.CurrentCamera

local am={
UICorner=10,
UIPadding=12,
MenuCorner=15,
MenuPadding=5,
TabPadding=10,
SearchBarHeight=39,
TabIcon=18,
}

function am.New(an,ao)
local ap={
__type="Dropdown",
Title=ao.Title or"Dropdown",
Desc=ao.Desc or nil,
Locked=ao.Locked or false,
LockedTitle=ao.LockedTitle,
Values=ao.Values or{},
MenuWidth=ao.MenuWidth or 180,
Value=ao.Value,
AllowNone=ao.AllowNone,
SearchBarEnabled=ao.SearchBarEnabled or false,
Multi=ao.Multi,
Callback=ao.Callback or nil,

UIElements={},

Opened=false,
Tabs={},

Width=150,
}

if ap.Multi and not ap.Value then
ap.Value={}
end
if ap.Values and typeof(ap.Value)=="number"then
ap.Value=ap.Values[ap.Value]
end

ap.DropdownFrame=a.load'C'{
Title=ap.Title,
Desc=ap.Desc,
Parent=ao.Parent,
TextOffset=ap.Callback and ap.Width or 20,
Hover=not ap.Callback and true or false,
Tab=ao.Tab,
Index=ao.Index,
Window=ao.Window,
ElementTable=ap,
ParentConfig=ao,
Tags=ao.Tags,
}

if ap.Callback then
ap.UIElements.Dropdown=
ai("",nil,ap.DropdownFrame.UIElements.Main,nil,ao.Window.NewElements and 12 or 10)

ap.UIElements.Dropdown.Frame.Frame.TextLabel.TextTruncate="AtEnd"
ap.UIElements.Dropdown.Frame.Frame.TextLabel.Size=
UDim2.new(1,ap.UIElements.Dropdown.Frame.Frame.TextLabel.Size.X.Offset-18-12-12,0,0)

ap.UIElements.Dropdown.Size=UDim2.new(0,ap.Width,0,36)
ap.UIElements.Dropdown.Position=UDim2.new(1,0,ao.Window.NewElements and 0 or 0.5,0)
ap.UIElements.Dropdown.AnchorPoint=Vector2.new(1,ao.Window.NewElements and 0 or 0.5)





end

ap.DropdownMenu=ak(ao,ap,am,"Dropdown")

ap.Display=ap.DropdownMenu.Display
ap.Refresh=ap.DropdownMenu.Refresh
ap.Select=ap.DropdownMenu.Select
ap.Open=ap.DropdownMenu.Open
ap.Close=ap.DropdownMenu.Close

ag("ImageLabel",{
Image=af.Icon"chevrons-up-down"[1],
ImageRectOffset=af.Icon"chevrons-up-down"[2].ImageRectPosition,
ImageRectSize=af.Icon"chevrons-up-down"[2].ImageRectSize,
Size=UDim2.new(0,18,0,18),
Position=UDim2.new(1,ap.UIElements.Dropdown and-12 or 0,0.5,0),
ThemeTag={
ImageColor3="Icon",
},
AnchorPoint=Vector2.new(1,0.5),
Parent=ap.UIElements.Dropdown and ap.UIElements.Dropdown.Frame
or ap.DropdownFrame.UIElements.Main,
})

function ap.Lock(aq)
ap.Locked=true
if ap.Opened or ap.UIElements.MenuCanvas.Visible then
ap:Close()
end
return ap.DropdownFrame:Lock(ap.LockedTitle)
end
function ap.Unlock(aq)
ap.Locked=false
return ap.DropdownFrame:Unlock()
end

if ap.Locked then
ap:Lock()
end

return ap.__type,ap
end

return am end function a.P()




local aa={}
local af={
lua={
"and",
"break",
"or",
"else",
"elseif",
"if",
"then",
"until",
"repeat",
"while",
"do",
"for",
"in",
"end",
"local",
"return",
"function",
"export",
},
rbx={
"game",
"workspace",
"script",
"math",
"string",
"table",
"task",
"wait",
"select",
"next",
"Enum",
"tick",
"assert",
"shared",
"loadstring",
"tonumber",
"tostring",
"type",
"typeof",
"unpack",
"Instance",
"CFrame",
"Vector3",
"Vector2",
"Color3",
"UDim",
"UDim2",
"Ray",
"BrickColor",
"OverlapParams",
"RaycastParams",
"Axes",
"Random",
"Region3",
"Rect",
"TweenInfo",
"collectgarbage",
"not",
"utf8",
"pcall",
"xpcall",
"_G",
"setmetatable",
"getmetatable",
"os",
"pairs",
"ipairs",
},
operators={
"#",
"+",
"-",
"*",
"%",
"/",
"^",
"=",
"~",
"=",
"<",
">",
},
}

local ag={
numbers=Color3.fromHex"#FAB387",
boolean=Color3.fromHex"#FAB387",
operator=Color3.fromHex"#94E2D5",
lua=Color3.fromHex"#CBA6F7",
rbx=Color3.fromHex"#F38BA8",
str=Color3.fromHex"#A6E3A1",
comment=Color3.fromHex"#9399B2",
null=Color3.fromHex"#F38BA8",
call=Color3.fromHex"#89B4FA",
self_call=Color3.fromHex"#89B4FA",
local_property=Color3.fromHex"#CBA6F7",
}

local function createKeywordSet(ai)
local ak={}
for al,am in ipairs(ai)do
ak[am]=true
end
return ak
end

local ai=createKeywordSet(af.lua)
local ak=createKeywordSet(af.rbx)
local al=createKeywordSet(af.operators)

local function getHighlight(am,an)
local ao=am[an]

if ag[ao.."_color"]then
return ag[ao.."_color"]
end

if tonumber(ao)then
return ag.numbers
elseif ao=="nil"then
return ag.null
elseif ao:sub(1,2)=="--"then
return ag.comment
elseif al[ao]then
return ag.operator
elseif ai[ao]then
return ag.lua
elseif ak[ao]then
return ag.rbx
elseif ao:sub(1,1)=='"'or ao:sub(1,1)=="'"then
return ag.str
elseif ao=="true"or ao=="false"then
return ag.boolean
end

if am[an+1]=="("then
if am[an-1]==":"then
return ag.self_call
end

return ag.call
end

if am[an-1]=="."then
if am[an-2]=="Enum"then
return ag.rbx
end

return ag.local_property
end
end

function aa.run(am,an)
if an~=nil then
for ao,ap in next,an do
ag[ao]=ap
end
end

local ao={}
local ap=""

local aq=false
local ar=false
local as=false

for at=1,#am do
local au=am:sub(at,at)

if ar then
if au=="\n"and not as then
table.insert(ao,ap)
table.insert(ao,au)
ap=""

ar=false
elseif am:sub(at-1,at)=="]]"and as then
ap=ap.."]"

table.insert(ao,ap)
ap=""

ar=false
as=false
else
ap=ap..au
end
elseif aq then
if au==aq and am:sub(at-1,at-1)~="\\"or au=="\n"then
ap=ap..au
aq=false
else
ap=ap..au
end
else
if am:sub(at,at+1)=="--"then
table.insert(ao,ap)
ap="-"
ar=true
as=am:sub(at+2,at+3)=="[["
elseif au=='"'or au=="'"then
table.insert(ao,ap)
ap=au
aq=au
elseif al[au]then
table.insert(ao,ap)
table.insert(ao,au)
ap=""
elseif au:match"[%w_]"then
ap=ap..au
else
table.insert(ao,ap)
table.insert(ao,au)
ap=""
end
end
end

table.insert(ao,ap)

local at={}

for au,av in ipairs(ao)do
local aw=getHighlight(ao,au)

if aw then
local ax=string.format(
'<font color = "#%s">%s</font>',
aw:ToHex(),
av:gsub("<","&lt;"):gsub(">","&gt;")
)

table.insert(at,ax)
else
table.insert(at,av)
end
end

return table.concat(at)
end

return aa end function a.Q()

local aa={}

local af=a.load'd'
local ag=af.New
local ai=af.Tween

local ak=a.load'P'

function aa.New(al,am,an,ao,ap)
local aq={
Radius=am.ElementConfig.UICorner,
Padding=am.NewElements and am.ElementConfig.UIPadding+4 or am.ElementConfig.UIPadding,

CodeFrame=nil,
}

local ar=ag("TextLabel",{
Text="",
TextColor3=Color3.fromHex"#CDD6F4",
TextTransparency=0,
TextSize=al.CodeSize,
TextWrapped=false,
LineHeight=1.15,
RichText=true,
TextXAlignment="Left",
Size=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
AutomaticSize="XY",
},{
ag("UIPadding",{
PaddingTop=UDim.new(0,aq.Padding+3),
PaddingLeft=UDim.new(0,aq.Padding+3),
PaddingRight=UDim.new(0,aq.Padding+3),
PaddingBottom=UDim.new(0,aq.Padding+3),
}),
})
ar.Font="Code"

local as=ag("ScrollingFrame",{
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,
AutomaticCanvasSize=al.Height~=nil and"XY"or"X",
ScrollingDirection=al.Height~=nil and"XY"or"X",
ElasticBehavior="Never",
CanvasSize=UDim2.new(0,0,0,0),
ScrollBarThickness=0,
},{
ar,
})

local at=al.CanCopied
and ag("TextButton",{
BackgroundTransparency=1,
Size=UDim2.new(0,35,0,35),
Position=UDim2.new(1,-aq.Padding/2,0,aq.Padding/2),
AnchorPoint=Vector2.new(1,0),
Visible=ao and true or false,
},{
af.NewRoundFrame(aq.Radius-4,"Squircle",{



ImageColor3=Color3.fromHex"#ffffff",
ImageTransparency=1,
Size=UDim2.new(1,0,1,0),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Name="Button",
},{
ag("UIScale",{
Scale=1,
}),
ag("ImageLabel",{
Image=af.Icon"copy"[1],
ImageRectSize=af.Icon"copy"[2].ImageRectSize,
ImageRectOffset=af.Icon"copy"[2].ImageRectPosition,
BackgroundTransparency=1,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Size=UDim2.new(0,12,0,12),



ImageColor3=Color3.fromHex"#ffffff",
ImageTransparency=0.1,
}),
}),
})
or nil

local au,av=af.NewRoundFrame(aq.Radius,"SquircleOutline",{
Size=UDim2.new(1,0,1,0),



ImageColor3=Color3.fromHex"#ffffff",
ImageTransparency=0.955,
Visible=false,
})

local aw,ax=af.NewRoundFrame(aq.Radius,"Squircle-TL-TR",{



ImageColor3=Color3.fromHex"#ffffff",
ImageTransparency=0.96,
Size=UDim2.new(1,0,0,20+(aq.Padding*2)),
Visible=al.Title and true or false,
},{










ag("TextLabel",{
Text=al.Title,



TextColor3=Color3.fromHex"#ffffff",
TextTransparency=0.2,
TextSize=18,
AutomaticSize="Y",
FontFace=Font.new(af.Font,Enum.FontWeight.Medium),
TextXAlignment="Left",
BackgroundTransparency=1,
TextTruncate="AtEnd",
Size=UDim2.new(1,at and-20-(aq.Padding*2),0,0),
}),
ag("UIPadding",{

PaddingLeft=UDim.new(0,aq.Padding+3),
PaddingRight=UDim.new(0,aq.Padding+3),

}),
ag("UIListLayout",{
Padding=UDim.new(0,aq.Padding),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
})

local ay,az=af.NewRoundFrame(aq.Radius,"Squircle",{



ImageColor3=Color3.fromHex"#212121",
ImageTransparency=0.035,
Size=al.Height~=nil
and UDim2.new(1,0,al.Height.Scale,al.Height.Offset==0 and-40 or al.Height.Offset)
or UDim2.new(1,0,0,20+(aq.Padding*2)),
AutomaticSize=al.Height~=nil and"None"or"Y",
Parent=an,
},{
au,
ag("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,al.Height~=nil and 1 or 0,0),
AutomaticSize=al.Height~=nil and"None"or"Y",
},{
aw,
as,
ag("UIListLayout",{
Padding=UDim.new(0,0),
FillDirection="Vertical",
}),
}),
at,
},nil,true)

aq.CodeFrame=ay
aq.CodeFrameModule=az
aq.OutlineFrame=au
aq.OutlineFrameModule=av
aq.TopbarFrame=aw
aq.TopbarFrameModule=ax

af.AddSignal(ar:GetPropertyChangedSignal"TextBounds",function()
if al.Height~=nil then
as.Size=UDim2.new(1,0,1,al.Title~=nil and-(20+(aq.Padding*2))or nil)
else
as.Size=
UDim2.new(1,0,0,(ar.TextBounds.Y/(ap or 1))+((aq.Padding+3)*2))
end
end)

function aq.Set(aA)
ar.Text=ak.run(aA,al.CodeTheme)
end

function aq.Destroy()
ay:Destroy()
aq=nil
end

aq.Set(al.Code)

if at then
af.AddSignal(at.InputBegan,function(aA:InputObject)
if
aA.UserInputType==Enum.UserInputType.MouseButton1
or aA.UserInputType==Enum.UserInputType.Touch
then
ai(at.Button,0.05,{ImageTransparency=0.95}):Play()
ai(at.Button.UIScale,0.05,{Scale=0.9}):Play()
end
end)
af.AddSignal(at.InputEnded,function()
ai(at.Button,0.08,{ImageTransparency=1}):Play()
ai(at.Button.UIScale,0.08,{Scale=1}):Play()
end)
af.AddSignal(at.MouseButton1Click,function()
if ao then
ao()
local aA=af.Icon"check"
at.Button.ImageLabel.Image=aA[1]
at.Button.ImageLabel.ImageRectSize=aA[2].ImageRectSize
at.Button.ImageLabel.ImageRectOffset=aA[2].ImageRectPosition

task.delay(1,function()
local aB=af.Icon"copy"
at.Button.ImageLabel.Image=aB[1]
at.Button.ImageLabel.ImageRectSize=aB[2].ImageRectSize
at.Button.ImageLabel.ImageRectOffset=aB[2].ImageRectPosition
end)
end
end)
end

return aq
end

return aa end function a.R()

local aa=a.load'd'local af=
aa.New


local ag=a.load'Q'

local ai={}

function ai.New(ak,al)
local am={
__type="Code",
Title=al.Title,
Code=al.Code,
CodeSize=al.CodeSize or 18,
Height=al.Height,
CodeTheme=al.CodeTheme,
Locked=false,
CanCopied=al.CanCopied~=false,
OnCopy=al.OnCopy,

Index=al.Index,
}

local an=not am.Locked











local ao=ag.New(am,al.Window,al.Parent,function()
if an then
local ao=am.Title or"code"
local ap,aq=pcall(function()
if toclipboard then
toclipboard(am.Code)
end
if setclipboard then
setclipboard(am.Code)
end

if am.OnCopy then
am.OnCopy()
end
end)
if not ap then
al.WindUI:Notify{
Title="Error",
Content="The "..ao.." is not copied. Error: "..aq,
Icon="x",
Duration=5,
}
end
end
end,al.WindUI.UIScale)

function am.SetCode(ap,aq)
ao.Set(aq)
am.Code=aq
end

function am.Set(ap,aq)
return am.SetCode(aq)
end

function am.Destroy(ap)
ao.Destroy()
am=nil
end

function am.UpdateShape(ap)
if al.Window.NewElements then
local aq=aa:GetElementPosition(
ap.Elements,
am.Index,
al.ParentType=="HStack"or al.ParentType=="Group"
)

if aq and ao.CodeFrameModule then
ao.CodeFrameModule:SetType(aq)

print(aq)
ao.TopbarFrameModule:SetType(
table.find({"Squircle-BL-BR","SquircleH-BL-BR"},aq)~=nil and"Square"or aq
)
end
end
end

am.UIElements={Main=ao.CodeFrame}
am.ElementFrame=ao.CodeFrame

return am.__type,am
end

return ai end function a.S()

local aa=a.load'd'
local af=aa.New local ag=
aa.Tween

local ai=(cloneref or clonereference or function(ai)
return ai
end)

local ak=ai(game:GetService"UserInputService")
ai(game:GetService"TouchInputService")
local al=ai(game:GetService"RunService")
local am=ai(game:GetService"Players")local an=

al.RenderStepped
local ao=am.LocalPlayer
local ap=ao:GetMouse()

local aq=a.load'm'.New
local ar=a.load'n'.New

local as={
UICorner=9,

}

local at

function as.Colorpicker(au,av,aw,ax,ay)
local az={
__type="Colorpicker",
Title=av.Title,
Desc=av.Desc,
Default=av.Value or av.Default,
Callback=av.Callback,
Transparency=av.Transparency,
UIElements=av.UIElements,

TextPadding=10,
}

local aA={}
local aB=az.Transparency~=nil

function az.SetHSVFromRGB(b,d)
local f,g,h=Color3.toHSV(d)
az.Hue=f
az.Sat=g
az.Vib=h
end

az:SetHSVFromRGB(az.Default)

local b=a.load'o'
local d=b.Create(nil,"Dialog",aw,ax,aw.UIElements.Main.Main)

az.ColorpickerFrame=d

d.UIElements.Main.Size=UDim2.new(1,0,0,0)



local f,g,h=az.Hue,az.Sat,az.Vib

az.UIElements.Title=af("TextLabel",{
Text=az.Title,
TextSize=20,
FontFace=Font.new(aa.Font,Enum.FontWeight.SemiBold),
TextXAlignment="Left",
Size=UDim2.new(0,0,0,0),
AutomaticSize="Y",
ThemeTag={
TextColor3="Text",
},
BackgroundTransparency=1,
Parent=d.UIElements.Main,
},{
af("UIPadding",{
PaddingTop=UDim.new(0,az.TextPadding/2),
PaddingLeft=UDim.new(0,az.TextPadding/2),
PaddingRight=UDim.new(0,az.TextPadding/2),
PaddingBottom=UDim.new(0,az.TextPadding/2),
}),
})





local i=af("Frame",{
Size=UDim2.new(1,0,1,0),
Position=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
})

local l=af("Frame",{
Size=UDim2.new(0,14,0,14),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0,0),
Parent=i,
BackgroundColor3=az.Default,
},{
af("UIStroke",{
Thickness=2,
Transparency=0.1,
ThemeTag={
Color="Text",
},
}),
af("UICorner",{
CornerRadius=UDim.new(1,0),
}),
})

az.UIElements.SatVibMap=af("ImageLabel",{
Size=UDim2.fromOffset(160,158),
Position=UDim2.fromOffset(0,40+az.TextPadding),
Image="rbxassetid://4155801252",
BackgroundColor3=Color3.fromHSV(f,1,1),
BackgroundTransparency=0,
Parent=d.UIElements.Main,
},{
af("UICorner",{
CornerRadius=UDim.new(0,8),
}),
aa.NewRoundFrame(8,"SquircleOutline",{
ThemeTag={
ImageColor3="Outline",
},
Size=UDim2.new(1,0,1,0),
ImageTransparency=0.85,
ZIndex=99999,
},{
af("UIGradient",{
Rotation=45,
Color=ColorSequence.new{
ColorSequenceKeypoint.new(0.0,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(1.0,Color3.fromRGB(255,255,255)),
},
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0.0,0.1),
NumberSequenceKeypoint.new(0.5,1),
NumberSequenceKeypoint.new(1.0,0.1),
},
}),
}),

l,
})

az.UIElements.Inputs=af("Frame",{
AutomaticSize="XY",
Size=UDim2.new(0,0,0,0),
Position=UDim2.fromOffset(
aB and 240 or 210,
40+az.TextPadding
),
BackgroundTransparency=1,
Parent=d.UIElements.Main,
},{
af("UIListLayout",{
Padding=UDim.new(0,4),
FillDirection="Vertical",
}),
})





local m=af("Frame",{
BackgroundColor3=az.Default,
Size=UDim2.fromScale(1,1),
BackgroundTransparency=az.Transparency,
},{
af("UICorner",{
CornerRadius=UDim.new(0,8),
}),
})

af("ImageLabel",{
Image="http://www.roblox.com/asset/?id=14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40),
BackgroundTransparency=1,
Position=UDim2.fromOffset(85,208+az.TextPadding),
Size=UDim2.fromOffset(75,24),
Parent=d.UIElements.Main,
},{
af("UICorner",{
CornerRadius=UDim.new(0,8),
}),
aa.NewRoundFrame(8,"SquircleOutline",{
ThemeTag={
ImageColor3="Outline",
},
Size=UDim2.new(1,0,1,0),
ImageTransparency=0.85,
ZIndex=99999,
},{
af("UIGradient",{
Rotation=60,
Color=ColorSequence.new{
ColorSequenceKeypoint.new(0.0,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(1.0,Color3.fromRGB(255,255,255)),
},
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0.0,0.1),
NumberSequenceKeypoint.new(0.5,1),
NumberSequenceKeypoint.new(1.0,0.1),
},
}),
}),







m,
})

local p=af("Frame",{
BackgroundColor3=az.Default,
Size=UDim2.fromScale(1,1),
BackgroundTransparency=0,
ZIndex=9,
},{
af("UICorner",{
CornerRadius=UDim.new(0,8),
}),
})

af("ImageLabel",{
Image="http://www.roblox.com/asset/?id=14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40),
BackgroundTransparency=1,
Position=UDim2.fromOffset(0,208+az.TextPadding),
Size=UDim2.fromOffset(75,24),
Parent=d.UIElements.Main,
},{
af("UICorner",{
CornerRadius=UDim.new(0,8),
}),







aa.NewRoundFrame(8,"SquircleOutline",{
ThemeTag={
ImageColor3="Outline",
},
Size=UDim2.new(1,0,1,0),
ImageTransparency=0.85,
ZIndex=99999,
},{
af("UIGradient",{
Rotation=60,
Color=ColorSequence.new{
ColorSequenceKeypoint.new(0.0,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(1.0,Color3.fromRGB(255,255,255)),
},
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0.0,0.1),
NumberSequenceKeypoint.new(0.5,1),
NumberSequenceKeypoint.new(1.0,0.1),
},
}),
}),
p,
})

local r={}

for u=0,1,0.1 do
table.insert(r,ColorSequenceKeypoint.new(u,Color3.fromHSV(u,1,1)))
end

local u=af("UIGradient",{
Color=ColorSequence.new(r),
Rotation=90,
})

local v=af("Frame",{
Size=UDim2.new(0,14,0,14),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0,0),
Parent=i,


BackgroundColor3=az.Default,
},{
af("UIStroke",{
Thickness=2,
Transparency=0.1,
ThemeTag={
Color="Text",
},
}),
af("UICorner",{
CornerRadius=UDim.new(1,0),
}),
})

local x=af("Frame",{
Size=UDim2.fromOffset(6,192),
Position=UDim2.fromOffset(180,40+az.TextPadding),
Parent=d.UIElements.Main,
},{
af("UICorner",{
CornerRadius=UDim.new(1,0),
}),
u,
i,
})

local function CreateNewInput(z,A)
local B=ar(z,nil,az.UIElements.Inputs,nil,nil,nil,nil,nil,true)

af("TextLabel",{
BackgroundTransparency=1,
TextTransparency=0.4,
TextSize=17,
FontFace=Font.new(aa.Font,Enum.FontWeight.Regular),
AutomaticSize="XY",
ThemeTag={
TextColor3="Placeholder",
},
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,-12,0.5,0),
Parent=B.Frame,
Text=z,
})

af("UIScale",{
Parent=B,
Scale=0.85,
})

B.Frame.Frame.TextBox.Text=A
B.Size=UDim2.new(0,150,0,42)

return B
end

local function ToRGB(z)
return{
R=math.floor(z.R*255),
G=math.floor(z.G*255),
B=math.floor(z.B*255),
}
end

local z=CreateNewInput("Hex","#"..az.Default:ToHex())

local A=CreateNewInput("Red",ToRGB(az.Default).R)
local B=CreateNewInput("Green",ToRGB(az.Default).G)
local C=CreateNewInput("Blue",ToRGB(az.Default).B)
local F
if aB then
F=CreateNewInput("Alpha",((1-az.Transparency)*100).."%")
end

local G=af("Frame",{
Size=UDim2.new(0,0,0,40),
AutomaticSize="Y",
Position=UDim2.new(0,0,0,254+az.TextPadding),
BackgroundTransparency=1,
Parent=d.UIElements.Main,
LayoutOrder=4,
},{
af("UIListLayout",{
Padding=UDim.new(0,6),
FillDirection="Horizontal",
HorizontalAlignment="Right",
}),






})

aa.AddSignal(d.UIElements.Main:GetPropertyChangedSignal"AbsoluteSize",function()
az.UIElements.Title.Size=UDim2.new(
0,
d.UIElements.Main.AbsoluteSize.X/av.UIScale-(d.UIPadding*2),
0,
0
)
G.Size=UDim2.new(
0,
d.UIElements.Main.AbsoluteSize.X/av.UIScale-d.UIPadding*2,
0,
40
)
end)

local H={
{
Title="Cancel",
Variant="Secondary",
Callback=function()
av.IsShowed=false
for H,J in next,aA do
J:Disconnect()
end
aA={}
end,
},
{
Title="Apply",

Variant="Primary",
Callback=function()
av.IsShowed=false
for H,J in next,aA do
J:Disconnect()
end
aA={}

ay(Color3.fromHSV(az.Hue,az.Sat,az.Vib),az.Transparency)
end,
},
}

for J,L in next,H do
local M=aq(
L.Title,
L.Icon,
L.Callback,
L.Variant,
G,
d,
true
)
M.Size=UDim2.new(0.5,-3,0,40)
M.AutomaticSize="None"
end

local J,L,M
if aB then
local N=af("Frame",{
Size=UDim2.new(1,0,1,0),
Position=UDim2.fromOffset(0,0),
BackgroundTransparency=1,
})

L=af("ImageLabel",{
Size=UDim2.new(0,14,0,14),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0,0),
ThemeTag={
BackgroundColor3="Text",
},
Parent=N,
},{
af("UIStroke",{
Thickness=2,
Transparency=0.1,
ThemeTag={
Color="Text",
},
}),
af("UICorner",{
CornerRadius=UDim.new(1,0),
}),
})

M=af("Frame",{
Size=UDim2.fromScale(1,1),
},{
af("UIGradient",{
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,0),
NumberSequenceKeypoint.new(1,1),
},
Rotation=270,
}),
af("UICorner",{
CornerRadius=UDim.new(0,6),
}),
})

J=af("Frame",{
Size=UDim2.fromOffset(6,192),
Position=UDim2.fromOffset(210,40+az.TextPadding),
Parent=d.UIElements.Main,
BackgroundTransparency=1,
},{
af("UICorner",{
CornerRadius=UDim.new(1,0),
}),
af("ImageLabel",{
Image="rbxassetid://14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40),
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
},{
af("UICorner",{
CornerRadius=UDim.new(1,0),
}),
}),
M,
N,
})
end

function az.Round(N,O,P)
if P==0 then
return math.floor(O)
end
O=tostring(O)
return O:find"%."and tonumber(O:sub(1,O:find"%."+P))or O
end

function az.Update(N,O,P)
if O then
f,g,h=Color3.toHSV(O)
else
f,g,h=az.Hue,az.Sat,az.Vib
end

az.UIElements.SatVibMap.BackgroundColor3=Color3.fromHSV(f,1,1)
l.Position=UDim2.new(g,0,1-h,0)
l.BackgroundColor3=Color3.fromHSV(f,g,h)
p.BackgroundColor3=Color3.fromHSV(f,g,h)
v.BackgroundColor3=Color3.fromHSV(f,1,1)
v.Position=UDim2.new(0.5,0,f,0)

z.Frame.Frame.TextBox.Text="#"..Color3.fromHSV(f,g,h):ToHex()
A.Frame.Frame.TextBox.Text=ToRGB(Color3.fromHSV(f,g,h)).R
B.Frame.Frame.TextBox.Text=ToRGB(Color3.fromHSV(f,g,h)).G
C.Frame.Frame.TextBox.Text=ToRGB(Color3.fromHSV(f,g,h)).B

if P or aB then
p.BackgroundTransparency=az.Transparency or P
M.BackgroundColor3=Color3.fromHSV(f,g,h)
L.BackgroundColor3=Color3.fromHSV(f,g,h)
L.BackgroundTransparency=az.Transparency or P
L.Position=UDim2.new(0.5,0,1-az.Transparency or P,0)
F.Frame.Frame.TextBox.Text=az:Round(
(1-az.Transparency or P)*100,
0
).."%"
end
end

az:Update(az.Default,az.Transparency)

local function GetRGB()
local N=Color3.fromHSV(az.Hue,az.Sat,az.Vib)
return{R=math.floor(N.r*255),G=math.floor(N.g*255),B=math.floor(N.b*255)}
end



local function clamp(N,O,P)
return math.clamp(tonumber(N)or 0,O,P)
end

table.insert(
aA,
aa.AddSignal(z.Frame.Frame.TextBox.FocusLost,function(N)
if N then
local O=z.Frame.Frame.TextBox.Text:gsub("#","")
local P,Q=pcall(Color3.fromHex,O)
if P and typeof(Q)=="Color3"then
az.Hue,az.Sat,az.Vib=Color3.toHSV(Q)
az:Update()
az.Default=Q
end
end
end)
)

local function updateColorFromInput(N,O)
aa.AddSignal(N.Frame.Frame.TextBox.FocusLost,function(P)
if P then
local Q=N.Frame.Frame.TextBox
local R=GetRGB()
local S=clamp(Q.Text,0,255)
Q.Text=tostring(S)

R[O]=S
local T=Color3.fromRGB(R.R,R.G,R.B)
az.Hue,az.Sat,az.Vib=Color3.toHSV(T)
az:Update()
end
end)
end

updateColorFromInput(A,"R")
updateColorFromInput(B,"G")
updateColorFromInput(C,"B")

if aB then
aa.AddSignal(F.Frame.Frame.TextBox.FocusLost,function(N)
if N then
local O=F.Frame.Frame.TextBox
local P=clamp(O.Text,0,100)
O.Text=tostring(P)

az.Transparency=1-P*0.01
az:Update(nil,az.Transparency)
end
end)
end



local function UpdateSatVib(N,O)
local P=N.AbsolutePosition.X
local Q=P+N.AbsoluteSize.X
local R=N.AbsolutePosition.Y
local S=R+N.AbsoluteSize.Y

local T=math.clamp(ap.X,P,Q)
local U=math.clamp(ap.Y,R,S)

O.Sat=(T-P)/(Q-P)
O.Vib=1-((U-R)/(S-R))

O:Update()
end

local function UpdateHue(N,O)
local P=N.AbsolutePosition.Y
local Q=P+N.AbsoluteSize.Y

local R=math.clamp(ap.Y,P,Q)

O.Hue=(R-P)/(Q-P)

O:Update()
end

local function UpdateTransparency(N,O)
local P=N.AbsolutePosition.Y
local Q=P+N.AbsoluteSize.Y

local R=math.clamp(ap.Y,P,Q)

O.Transparency=1-((R-P)/(Q-P))

O:Update()
end

local N=ax.GenerateGUID()

table.insert(
aA,
ak.InputChanged:Connect(function(O)
if
O.UserInputType~=Enum.UserInputType.MouseMovement
and O.UserInputType~=Enum.UserInputType.Touch
then
return
end

if at=="SatVib"then
UpdateSatVib(az.UIElements.SatVibMap,az)
elseif at=="Hue"then
UpdateHue(x,az)
elseif at=="Transparency"then
UpdateTransparency(J,az)
end
end)
)

table.insert(
aA,
az.UIElements.SatVibMap.InputBegan:Connect(function(O)
if
O.UserInputType~=Enum.UserInputType.MouseButton1
and O.UserInputType~=Enum.UserInputType.Touch
then
return
end

if ax.CurrentInput and ax.CurrentInput~=N then
return
end
ax.CurrentInput=N

if at and at~="SatVib"then
return
end

at="SatVib"

UpdateSatVib(az.UIElements.SatVibMap,az)
end)
)

table.insert(
aA,
x.InputBegan:Connect(function(O)
if
O.UserInputType~=Enum.UserInputType.MouseButton1
and O.UserInputType~=Enum.UserInputType.Touch
then
return
end

if ax.CurrentInput and ax.CurrentInput~=N then
return
end
ax.CurrentInput=N

if at and at~="Hue"then
return
end

at="Hue"

UpdateHue(x,az)
end)
)

if J then
table.insert(
aA,
J.InputBegan:Connect(function(O)
if
O.UserInputType~=Enum.UserInputType.MouseButton1
and O.UserInputType~=Enum.UserInputType.Touch
then
return
end

if ax.CurrentInput and ax.CurrentInput~=N then
return
end
ax.CurrentInput=N

if at and at~="Transparency"then
return
end

at="Transparency"

UpdateTransparency(J,az)
end)
)
end

table.insert(
aA,
ak.InputEnded:Connect(function(O)
at=nil

if ax.CurrentInput and ax.CurrentInput~=N then
return
end
ax.CurrentInput=nil
end)
)

return az
end

function as.New(au,av)
local aw={
__type="Colorpicker",
Title=av.Title or"Colorpicker",
Desc=av.Desc or nil,
Locked=av.Locked or false,
LockedTitle=av.LockedTitle,
Default=av.Default or Color3.new(1,1,1),
Callback=av.Callback or function()end,

UIScale=av.UIScale,
Transparency=av.Transparency,
UIElements={},

IsShowed=false,
}

local ax=true



aw.ColorpickerFrame=a.load'C'{
Title=aw.Title,
Desc=aw.Desc,
Parent=av.Parent,
TextOffset=40,
Hover=false,
Tab=av.Tab,
Index=av.Index,
Window=av.Window,
ElementTable=aw,
ParentConfig=av,
Tags=av.Tags,
}

aw.UIElements.Colorpicker=aa.NewRoundFrame(as.UICorner,"Squircle",{
ImageTransparency=0,
Active=true,
ImageColor3=aw.Default,
Parent=aw.ColorpickerFrame.UIElements.Main,
Size=UDim2.new(0,26,0,26),
AnchorPoint=Vector2.new(1,0),
Position=UDim2.new(1,0,0,0),
ZIndex=2,
},{
aa.NewRoundFrame(as.UICorner,"SquircleGlass",{
Size=UDim2.new(1,0,1,0),
ThemeTag={
ImageColor3="Outline",
},
ImageTransparency=0.55,
}),
},true)

function aw.Lock(ay)
aw.Locked=true
ax=false
return aw.ColorpickerFrame:Lock(aw.LockedTitle)
end
function aw.Unlock(ay)
aw.Locked=false
ax=true
return aw.ColorpickerFrame:Unlock()
end

if aw.Locked then
aw:Lock()
end

function aw.Update(ay,az,aA)
aw.UIElements.Colorpicker.ImageTransparency=aA or 0
aw.UIElements.Colorpicker.ImageColor3=az
aw.Default=az
if aA then
aw.Transparency=aA
end
end

function aw.Set(ay,az,aA)
return aw:Update(az,aA)
end

aa.AddSignal(aw.UIElements.Colorpicker.MouseButton1Click,function()
if ax and not aw.IsShowed then
aw.IsShowed=true

as:Colorpicker(aw,av.Window,av.WindUI,function(ay,az)
aw:Update(ay,az)
aw.Default=ay
aw.Transparency=az
aa.SafeCallback(aw.Callback,ay,az)
end).ColorpickerFrame
:Open()
end
end)

return aw.__type,aw
end

return as end function a.T()

local aa=a.load'd'
local af=aa.New
local ai=aa.Tween

local ak={}

function ak.New(al,am)
local an={
__type="Section",
Title=am.Title or"Section",
Desc=am.Desc,
Icon=am.Icon,
IconThemed=am.IconThemed,
TextXAlignment=am.TextXAlignment or"Left",
TextSize=am.TextSize or 19,
DescTextSize=am.DescTextSize or 16,
Box=am.Box or false,
BoxBorder=am.BoxBorder or false,
FontWeight=am.FontWeight or Enum.FontWeight.SemiBold,
DescFontWeight=am.DescFontWeight or Enum.FontWeight.Medium,
TextTransparency=am.TextTransparency or 0.05,
DescTextTransparency=am.DescTextTransparency or 0.4,
Opened=am.Opened or false,
UIElements={},

HeaderSize=48,
IconSize=20,
Padding=10,

Elements={},

Expandable=false,
}

local ao

function an.SetIcon(ap,aq)
an.Icon=aq or nil
if ao then
ao:Destroy()
end
if aq then
ao=aa.Image(
aq,
aq..":"..an.Title,
0,
am.Window.Folder,
an.__type,
true,
an.IconThemed,
"SectionIcon"
)
ao.Size=UDim2.new(0,an.IconSize,0,an.IconSize)
end
end

local ap=af("Frame",{
Size=UDim2.new(0,an.IconSize,0,an.IconSize),
BackgroundTransparency=1,
Visible=false,
},{
af("ImageLabel",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Image=aa.Icon"chevron-down"[1],
ImageRectSize=aa.Icon"chevron-down"[2].ImageRectSize,
ImageRectOffset=aa.Icon"chevron-down"[2].ImageRectPosition,
ThemeTag={
ImageTransparency="SectionExpandIconTransparency",
ImageColor3="SectionExpandIcon",
},
}),
})

if an.Icon then
an:SetIcon(an.Icon)
end

local aq=af("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
},{
af("UIListLayout",{
FillDirection="Vertical",
HorizontalAlignment=an.TextXAlignment,
VerticalAlignment="Center",
Padding=UDim.new(0,4),
}),
})

local ar,as

local function createTitle(at,au)
return af("TextLabel",{
BackgroundTransparency=1,
TextXAlignment=an.TextXAlignment,
AutomaticSize="Y",
TextSize=au=="Title"and an.TextSize or an.DescTextSize,
TextTransparency=au=="Title"and an.TextTransparency or an.DescTextTransparency,
ThemeTag={
TextColor3="Text",
},
FontFace=Font.new(aa.Font,au=="Title"and an.FontWeight or an.DescFontWeight),


Text=at,
Size=UDim2.new(1,0,0,0),
TextWrapped=true,
Parent=aq,
})
end

ar=createTitle(an.Title,"Title")
if an.Desc then
as=createTitle(an.Desc,"Desc")
end

local function UpdateTitleSize()
local at=0
if ao then
at=at-(an.IconSize+8)
end
if ap.Visible then
at=at-(an.IconSize+8)
end
aq.Size=UDim2.new(1,at,0,0)
end

local at=aa.NewRoundFrame(am.Window.ElementConfig.UICorner,"Squircle",{
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,
Parent=am.Parent,

AutomaticSize="Y",
ThemeTag={
ImageTransparency=an.Box and"SectionBoxBackgroundTransparency"or nil,
ImageColor3="SectionBoxBackground",
},
ImageTransparency=not an.Box and 1 or nil,
},{
aa.NewRoundFrame(am.Window.ElementConfig.UICorner-1,"SquircleOutline",{
Size=UDim2.new(1,0,1,0),



ThemeTag={

ImageColor3="SectionBoxBorder",
},
ImageTransparency=an.Box and an.BoxBorder and 0.92 or 1,
Name="Outline",
ClipsDescendants=true,
},{
af("TextButton",{
Size=UDim2.new(1,0,0,an.Expandable and 0 or(not as and an.HeaderSize or 0)),
BackgroundTransparency=1,
AutomaticSize=(not an.Expandable or as)and"Y"or nil,
Text="",
Name="Top",
},{
an.Box and af("UIPadding",{
PaddingTop=UDim.new(
0,
am.Window.ElementConfig.UIPadding+(am.Window.NewElements and 4 or 0)
),
PaddingLeft=UDim.new(
0,
am.Window.ElementConfig.UIPadding+(am.Window.NewElements and 4 or 0)
),
PaddingRight=UDim.new(
0,
am.Window.ElementConfig.UIPadding+(am.Window.NewElements and 4 or 0)
),
PaddingBottom=UDim.new(
0,
am.Window.ElementConfig.UIPadding+(am.Window.NewElements and 4 or 0)
),
})or nil,
ao,
aq,
af("UIListLayout",{
Padding=UDim.new(0,8),
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment="Left",
}),
ap,
}),
af("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
Name="Content",
Visible=false,
Position=UDim2.new(0,0,0,an.HeaderSize+10),
},{
an.Box and af("UIPadding",{
PaddingLeft=UDim.new(0,am.Window.ElementConfig.UIPadding/1.5),
PaddingRight=UDim.new(0,am.Window.ElementConfig.UIPadding/1.5),
PaddingBottom=UDim.new(0,am.Window.ElementConfig.UIPadding/1.5),
})or nil,
af("UIListLayout",{
FillDirection="Vertical",
Padding=UDim.new(0,am.Tab.Gap),
VerticalAlignment="Top",
}),
}),
}),
})





an.ElementFrame=at

at.Outline.Top:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
at.Outline.Content.Position=UDim2.new(0,0,0,(at.Outline.Top.AbsoluteSize.Y/am.UIScale)+10)

if an.Opened then
an:Open(true)
else
an.Close(true)
end
end)

local au=am.ElementsModule

au.Load(an,at.Outline.Content,au.Elements,am.Window,am.WindUI,function()
if not an.Expandable then
an.Expandable=true
ap.Visible=true
UpdateTitleSize()
end
end,au,am.UIScale,am.Tab)

UpdateTitleSize()

function an.SetTitle(av,aw)
an.Title=aw
ar.Text=aw
end

function an.SetDesc(av,aw)
an.Desc=aw
if not as then
as=createTitle(aw,"Desc")
end
as.Text=aw
end

function an.Destroy(av)
for aw,ax in next,an.Elements do
ax:Destroy()
end








at:Destroy()
end

function an.Open(av,aw)
if an.Expandable then
an.Opened=true
if aw then
at.Size=UDim2.new(
at.Size.X.Scale,
at.Size.X.Offset,
0,
at.Outline.Top.AbsoluteSize.Y/am.UIScale
+(at.Outline.Content.AbsoluteSize.Y/am.UIScale)
+10
)
ap.ImageLabel.Rotation=180
else
ai(at,0.33,{
Size=UDim2.new(
at.Size.X.Scale,
at.Size.X.Offset,
0,
at.Outline.Top.AbsoluteSize.Y/am.UIScale
+(at.Outline.Content.AbsoluteSize.Y/am.UIScale)
+10
),
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()

ai(
ap.ImageLabel,
0.2,
{Rotation=180},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
end
end
end
function an.Close(av,aw)
if an.Expandable then
an.Opened=false
if aw then
at.Size=UDim2.new(
at.Size.X.Scale,
at.Size.X.Offset,
0,
(at.Outline.Top.AbsoluteSize.Y/am.UIScale)
)
ap.ImageLabel.Rotation=0
else
ai(at,0.26,{
Size=UDim2.new(
at.Size.X.Scale,
at.Size.X.Offset,
0,
(at.Outline.Top.AbsoluteSize.Y/am.UIScale)
),
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
ai(
ap.ImageLabel,
0.2,
{Rotation=0},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
end
end
end

aa.AddSignal(at.Outline.Top.MouseButton1Click,function()
if an.Expandable then
if an.Opened then
an:Close()
else
an:Open()
end
end
end)

aa.AddSignal(at.Outline.Content.UIListLayout:GetPropertyChangedSignal"AbsoluteContentSize",function()
if an.Opened then
an:Open(true)
else
an:Close(true)
end
end)

task.defer(function()
if an.Expandable then








at.Size=
UDim2.new(at.Size.X.Scale,at.Size.X.Offset,0,at.Outline.Top.AbsoluteSize.Y/am.UIScale)
at.AutomaticSize="None"
at.Outline.Top.Size=UDim2.new(1,0,0,(not as and an.HeaderSize or 0))
at.Outline.Top.AutomaticSize=(not an.Expandable or as)and"Y"or"None"
at.Outline.Content.Visible=true
end
if an.Opened then
an:Open()
else
an:Close(true)
end
end)

return an.__type,an
end

return ak end function a.U()

local aa=a.load'd'
local af=aa.New

local ai={}

function ai.New(ak,al)
local am=af("Frame",{
Parent=al.Parent,
Size=not table.find({"Group","HStack"},al.ParentType)and UDim2.new(1,-7,0,7*(al.Columns or 1))or UDim2.new(0,7*(al.Columns or 1),0,0),
BackgroundTransparency=1,
})

return"Space",{__type="Space",ElementFrame=am}
end

return ai end function a.V()
local aa=a.load'd'
local af=aa.New

local ai={}

local function ParseAspectRatio(ak)
if type(ak)=="string"then
local al,am=ak:match"(%d+):(%d+)"
if al and am then
return tonumber(al)/tonumber(am)
end
elseif type(ak)=="number"then
return ak
end
return nil
end

function ai.New(ak,al)
local am={
__type="Image",
Image=al.Image or"",
AspectRatio=al.AspectRatio or"16:9",
Radius=al.Radius or al.Window.ElementConfig.UICorner,
}
local an=aa.Image(
am.Image,
am.Image,
am.Radius,
al.Window.Folder,
"Image",
false
)
if an and an.Parent then
an.Parent=al.Parent
an.Size=UDim2.new(1,0,0,0)
an.BackgroundTransparency=1












local ao=ParseAspectRatio(am.AspectRatio)
local ap

if ao then
ap=af("UIAspectRatioConstraint",{
Parent=an,
AspectRatio=ao,
AspectType="ScaleWithParentSize",
DominantAxis="Width"
})
end

function am.Destroy(aq)
an:Destroy()
end
end

return am.__type,am
end

return ai end function a.W()
local aa=a.load'd'
local af=aa.New

local ai={}

function ai.New(ak,al)
local am={
__type="Group",
Elements={},
ElementFrame=nil,
}

local an=af("Frame",{
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,
AutomaticSize="Y",
Parent=al.Parent,
},{
af("UIListLayout",{
FillDirection="Horizontal",
HorizontalAlignment="Center",

Padding=UDim.new(0,al.Tab and al.Tab.Gap or(al.Window.NewElements and 1 or 6))
}),
})

am.ElementFrame=an

local ao=al.ElementsModule
ao.Load(
am,
an,
ao.Elements,
al.Window,
al.WindUI,
function(ap,aq)
local ar=al.Tab and al.Tab.Gap or(al.Window.NewElements and 1 or 6)

local as={}
local at=0

for au,av in next,aq do
if av.__type=="Space"then
at=at+(av.ElementFrame.Size.X.Offset or 6)
elseif av.__type=="Divider"then
at=at+(av.ElementFrame.Size.X.Offset or 1)
else
table.insert(as,av)
end
end

local au=#as
if au==0 then return end

local av=1/au

local aw=ar*(au-1)

local ax=-(aw+at)

local ay=math.floor(ax/au)
local az=ax-(ay*au)

for aA,aB in next,as do
local b=ay
if aA<=math.abs(az)then
b=b-1
end

if aB.ElementFrame then
aB.ElementFrame.Size=UDim2.new(av,b,1,0)
end
end
end,
ao,
al.UIScale,
al.Tab
)



return am.__type,am
end

return ai end function a.X()
local aa=a.load'd'
local af=aa.New

local ai={}

function ai.New(ak,al)
local am={
__type="HStack",
AutoSpace=al.AutoSpace or false,
Elements={},
ElementFrame=nil,
}

local an=af("Frame",{
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,
AutomaticSize="Y",
Parent=al.Parent,
},{
af("UIListLayout",{
FillDirection="Horizontal",
HorizontalAlignment="Center",

Padding=UDim.new(0,al.Tab and al.Tab.Gap or(al.Window.NewElements and 1 or 6)),
}),
})

am.ElementFrame=an

local ao=al.ElementsModule
ao.Load(
am,
an,
ao.Elements,
al.Window,
al.WindUI,
function(ap,aq)
local ar=al.Tab and al.Tab.Gap or(al.Window.NewElements and 1 or 6)

local as={}
local at=0

for au,av in next,aq do
if av.__type=="Space"then
at=at+(av.ElementFrame.Size.X.Offset or 6)
elseif av.__type=="Divider"then
at=at+(av.ElementFrame.Size.X.Offset or 1)
else
table.insert(as,av)
end
end

local au=#as
if au==0 then
return
end

local av=1/au

local aw=ar*(au-1)

local ax=-(aw+at)

local ay=math.floor(ax/au)
local az=ax-(ay*au)

for aA,aB in next,as do
local b=ay
if aA<=math.abs(az)then
b=b-1
end

if aB.ElementFrame then
aB.ElementFrame.Size=UDim2.new(av,b,1,0)
end
end
end,
ao,
al.UIScale,
al.Tab
)

if am.AutoSpace then
for ap in next,ao.Elements do
if ap~="Space"and ap~="Divider"then
local aq=am[ap]
am[ap]=function(ar,as)
if#am.Elements>0 then
am:Space()
end
return aq(ar,as)
end
end
end
end

return am.__type,am
end

return ai end function a.Y()

local aa=a.load'd'
local af=aa.New

local ai={}

function ai.New(ak,al)
local am={
__type="VStack",
Elements={},
ElementFrame=nil,
}

local an=af("Frame",{
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,
AutomaticSize="Y",
Parent=al.Parent,
},{
af("UIListLayout",{
FillDirection="Vertical",
HorizontalAlignment="Center",

Padding=UDim.new(0,al.Tab and al.Tab.Gap or(al.Window.NewElements and 1 or 6))
}),
})

am.ElementFrame=an

local ao=al.ElementsModule
ao.Load(
am,
an,
ao.Elements,
al.Window,
al.WindUI,







































nil,
ao,
al.UIScale,
al.Tab
)



return am.__type,am
end

return ai end function a.Z()
local aa=(cloneref or clonereference or function(aa)
return aa
end)

local af=aa(game:GetService"UserInputService")

local ai=a.load'd'
local ak=ai.New

local al={}














function al.New(am,an:ConfigType__DARKLUA_TYPE_a)
local ao={
__type="Viewport",
Object=an.Object,
Camera=an.Camera or Instance.new"Camera",
Interactive=an.Interactive or false,
Height=an.Height or 200,
Focused=an.Focused~=false,
}

local ap=false
local aq=false
local ar,as=0

local at=ai.NewRoundFrame(an.Window.ElementConfig.UICorner,"Squircle",{
Size=UDim2.new(1,0,0,ao.Height),
Parent=an.Parent,
ThemeTag={
ImageColor3="ViewportBackground",
ImageTransparency="ViewportBackgroundTransparency",
},
},{
ak("CanvasGroup",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
},{
ak("UICorner",{
CornerRadius=UDim.new(0,an.Window.ElementConfig.UICorner),
}),
ak("ViewportFrame",{
Name="Viewport",
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
CurrentCamera=ao.Camera,
Active=ao.Interactive,
},{
ao.Object,
}),
}),
})

local function IsTouchInsideViewport(au)
local av=at.CanvasGroup.Viewport.AbsolutePosition
local aw=at.CanvasGroup.Viewport.AbsoluteSize

return au.X>=av.X
and au.X<=av.X+aw.X
and au.Y>=av.Y
and au.Y<=av.Y+aw.Y
end

local au=an.WindUI.GenerateGUID()

ai.AddSignal(at.CanvasGroup.Viewport.MouseEnter,function()
if ao.Interactive then
an.Tab.UIElements.ContainerFrame.ScrollingEnabled=false
end
end)

ai.AddSignal(at.CanvasGroup.Viewport.InputEnded,function(av)
if
av.UserInputType==Enum.UserInputType.MouseMovement
or av.UserInputType==Enum.UserInputType.Touch
then
an.Tab.UIElements.ContainerFrame.ScrollingEnabled=true
end
end)

ai.AddSignal(at.CanvasGroup.Viewport.InputBegan,function(av)
if ao.Interactive then
if
(av.UserInputType==Enum.UserInputType.MouseButton1)
or(av.UserInputType==Enum.UserInputType.Touch and not aq)
then
if an.WindUI.CurrentInput and an.WindUI.CurrentInput~=au then
return
end

an.WindUI.CurrentInput=au

ap=true
as=av.Position
end
end
end)

ai.AddSignal(af.InputEnded,function(av)
if ao.Interactive then
if
av.UserInputType==Enum.UserInputType.MouseButton1
or av.UserInputType==Enum.UserInputType.Touch
then
if an.WindUI.CurrentInput and an.WindUI.CurrentInput~=au then
return
end

an.WindUI.CurrentInput=nil

ap=false
end
end
end)

ai.AddSignal(af.InputChanged,function(av)
if ao.Interactive and ap and not aq then
if
av.UserInputType==Enum.UserInputType.MouseMovement
or av.UserInputType==Enum.UserInputType.Touch
then
local aw=av.Position-as
as=av.Position

local ax=ao.Object:GetPivot().Position
local ay=ao.Camera

local az=CFrame.fromAxisAngle(Vector3.new(0,1,0),-aw.X*0.02)
ay.CFrame=CFrame.new(ax)*az*CFrame.new(-ax)*ay.CFrame

local aA=CFrame.fromAxisAngle(ay.CFrame.RightVector,-aw.Y*0.02)
local aB=CFrame.new(ax)*aA*CFrame.new(-ax)*ay.CFrame

if aB.UpVector.Y>0.1 then
ay.CFrame=aB
end
end
end
end)

ai.AddSignal(at.CanvasGroup.Viewport.InputChanged,function(av)
if ao.Interactive then
if av.UserInputType==Enum.UserInputType.MouseWheel then
local aw=av.Position.Z*2
ao.Camera.CFrame+=ao.Camera.CFrame.LookVector*aw
end
end
end)

ai.AddSignal(af.TouchPinch,function(av,aw,ax,ay)
if not IsTouchInsideViewport(av[1])or not IsTouchInsideViewport(av[2])then
return
end
if ao.Interactive then
if ay==Enum.UserInputState.Begin then
aq=true
ap=false
ar=(av[1]-av[2]).Magnitude
elseif ay==Enum.UserInputState.Change then
if aq then
local az=(av[1]-av[2]).Magnitude
local aA=(az-ar)*0.03
ar=az
ao.Camera.CFrame+=ao.Camera.CFrame.LookVector*aA
end
elseif ay==Enum.UserInputState.End or ay==Enum.UserInputState.Cancel then
aq=false
end
end
end)

local function FocusCamera()
local av=ao.Object:IsA"BasePart"and ao.Object.Size
or select(2,ao.Object:GetBoundingBox(0))
local aw=math.max(av.X,av.Y,av.Z)
local ax=aw*2
local ay=ao.Object:GetPivot().Position

ao.Camera.CFrame=
CFrame.new(ay+Vector3.new(0,aw/2,ax),ay)
end

if ao.Focused then
FocusCamera()
end

function ao.SetObject(av,aw,ax)
if ax then
aw=aw:Clone()
end
if ao.Object then
ao.Object:Destroy()
end

ao.Object=aw
ao.Object.Parent=at.CanvasGroup.Viewport
end

function ao.SetHeight(av,aw)
at.Size=UDim2.new(1,0,0,aw)
end

function ao.Focus(av)
if ao.Object then
FocusCamera()
end
end

function ao.SetCamera(av,aw)
ao.Camera=aw
at.CanvasGroup.Viewport.CurrentCamera=aw
end

function ao.SetInteractive(av,aw)
ao.Interactive=aw
at.CanvasGroup.Viewport.Active=aw
end

ao.Main=at

return ao.__type,ao
end

return al end function a._()

return{
Elements={
Paragraph=a.load'D',
Button=a.load'E',
Toggle=a.load'H',
Slider=a.load'I',
ProgressBar=a.load'J',
Keybind=a.load'K',
Input=a.load'L',
Dropdown=a.load'O',
Code=a.load'R',
Colorpicker=a.load'S',
Section=a.load'T',
Divider=a.load'M',
Space=a.load'U',
Image=a.load'V',
Group=a.load'W',
HStack=a.load'X',
VStack=a.load'Y',
Viewport=a.load'Z',

},
Load=function(aa,af,ai,ak,al,am,an,ao,ap)
for aq,ar in next,ai do
aa[aq]=function(as,at)
at=at or{}
at.Tab=ap or aa
at.ParentType=aa.__type
at.ParentTable=aa
at.Index=#aa.Elements+1
at.GlobalIndex=#ak.AllElements+1
at.Parent=af
at.Window=ak
at.WindUI=al
at.UIScale=ao
at.ElementsModule=an local

au, av=ar:New(at)

if at.Flag and typeof(at.Flag)=="string"then
if ak.CurrentConfig then
ak.CurrentConfig:Register(at.Flag,av)

if ak.PendingConfigData and ak.PendingConfigData[at.Flag]then
local aw=ak.PendingConfigData[at.Flag]

local ax=ak.ConfigManager
if ax.Parser[aw.__type]then
task.defer(function()
local ay,az=pcall(function()
ax.Parser[aw.__type].Load(av,aw)
end)

if ay then
ak.PendingConfigData[at.Flag]=nil
else
warn(
"[ WindUI ] Failed to apply pending config for '"
..at.Flag
.."': "
..tostring(az)
)
end
end)
end
end
else
ak.PendingFlags=ak.PendingFlags or{}
ak.PendingFlags[at.Flag]=av
end
end

local aw
for ax,ay in next,av do
if typeof(ay)=="table"and ax~="ElementFrame"and ax:match"Frame$"then
aw=ay
break
end
end

if aw then
av.ElementFrame=aw.UIElements.Main
function av.SetTitle(ax,ay)
return aw.SetTitle and aw:SetTitle(ay)
end
function av.SetDesc(ax,ay)
return aw.SetDesc and aw:SetDesc(ay)
end
function av.SetImage(ax,ay,az)
return aw.SetImage and aw:SetImage(ay,az)
end
function av.SetThumbnail(ax,ay,az)
return aw.SetThumbnail and aw:SetThumbnail(ay,az)
end
function av.Highlight(ax)
aw:Highlight()
end
function av.Destroy(ax)
aw:Destroy()

table.remove(ak.AllElements,at.GlobalIndex)
table.remove(aa.Elements,at.Index)
table.remove(ap.Elements,at.Index)
aa:UpdateAllElementShapes(aa)
end
end

ak.AllElements[at.Index]=av
aa.Elements[at.Index]=av
if ap then
ap.Elements[at.Index]=av
end

if ak.NewElements then
aa:UpdateAllElementShapes(aa)
end

if am then
am(av,aa.Elements)
end
return av
end
end
function aa.UpdateAllElementShapes(aq,ar)
for as,at in next,ar.Elements do
local au
for av,aw in pairs(at)do
if typeof(aw)=="table"and av:match"Frame$"then
au=aw
break
end
end

if not au and at.UpdateShape then
au=at
end

if au then

au.Index=as
if au.UpdateShape then

au.UpdateShape(ar)
end
end
end
end
end,
}end function a.aa()

local aa=(cloneref or clonereference or function(aa)
return aa
end)

local af=game:GetService"Players"

aa(game:GetService"UserInputService")
local ai=af.LocalPlayer:GetMouse()

local ak=a.load'd'
local al=ak.New

local am=a.load'B'.New
local an=a.load'x'.New



local ao={


Tabs={},
Containers={},
SelectedTab=nil,
TabCount=0,
ToolTipParent=nil,
TabHighlight=nil,

OnChangeFunc=function(ao)end,
}

function ao.Init(ap,aq,ar,as)
Window=ap
WindUI=aq
ao.ToolTipParent=ar
ao.TabHighlight=as
return ao
end

function ao.New(ap,aq)
local ar={
__type="Tab",
Title=ap.Title or"Tab",
Desc=ap.Desc,
Icon=ap.Icon,
IconColor=ap.IconColor,
IconShape=ap.IconShape,
IconThemed=ap.IconThemed,
Locked=ap.Locked,
ShowTabTitle=ap.ShowTabTitle,
TabTitleAlign=ap.TabTitleAlign or"Left",
CustomEmptyPage=(ap.CustomEmptyPage and next(ap.CustomEmptyPage)~=nil)and ap.CustomEmptyPage
or{Icon="lucide:frown",IconSize=48,Title="This tab is Empty",Desc=nil},
Border=ap.Border,
Selected=false,
Index=nil,
Parent=ap.Parent,
UIElements={},
Elements={},
ContainerFrame=nil,
UICorner=Window.UICorner-(Window.UIPadding/2),

Gap=Window.NewElements and 1 or 6,

TabPaddingX=4+(Window.UIPadding/2),
TabPaddingY=3+(Window.UIPadding/2),
TitlePaddingY=0,
}









if ar.IconShape then
ar.TabPaddingX=2+(Window.UIPadding/4)
ar.TabPaddingY=2+(Window.UIPadding/4)
ar.TitlePaddingY=2+(Window.UIPadding/4)
end

ao.TabCount=ao.TabCount+1

local as=ao.TabCount
ar.Index=as

ar.UIElements.Main=ak.NewRoundFrame(ar.UICorner,"Squircle",{
BackgroundTransparency=1,
Size=UDim2.new(1,-7,0,0),
AutomaticSize="Y",
Parent=ap.Parent,
ThemeTag={
ImageColor3="TabBackground",
},
ImageTransparency=1,
},{
ak.NewRoundFrame(ar.UICorner-1,"Glass-1.4",{
Size=UDim2.new(1,1,1,1),
ThemeTag={
ImageColor3="TabBorder",
},
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
ImageTransparency=1,
Name="Outline",
},{













}),
ak.NewRoundFrame(ar.UICorner,"Squircle",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
ThemeTag={
ImageColor3="Text",
},
ImageTransparency=1,
Name="Frame",
},{
al("UIListLayout",{
SortOrder="LayoutOrder",
Padding=UDim.new(0,2+(Window.UIPadding/2)),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
al("TextLabel",{
Text=ar.Title,
ThemeTag={
TextColor3="TabTitle",
},
TextTransparency=not ar.Locked and 0.4 or 0.7,
TextSize=15,
Size=UDim2.new(1,0,0,0),
FontFace=Font.new(ak.Font,Enum.FontWeight.Medium),
TextWrapped=true,
RichText=true,
AutomaticSize="Y",
LayoutOrder=2,
TextXAlignment="Left",
BackgroundTransparency=1,
},{
al("UIPadding",{
PaddingTop=UDim.new(0,ar.TitlePaddingY),


PaddingBottom=UDim.new(0,ar.TitlePaddingY),
}),
}),
al("UIPadding",{
PaddingTop=UDim.new(0,ar.TabPaddingY),
PaddingLeft=UDim.new(0,ar.TabPaddingX),
PaddingRight=UDim.new(0,ar.TabPaddingX),
PaddingBottom=UDim.new(0,ar.TabPaddingY),
}),
}),
},true)

local at=0
local au
local av

if ar.Icon then
au=ak.Image(
ar.Icon,
ar.Icon..":"..ar.Title,
0,
Window.Folder,
ar.__type,
ar.IconColor and false or true,
ar.IconThemed,
"TabIcon"
)
au.Size=UDim2.new(0,16,0,16)
if ar.IconColor then
au.ImageLabel.ImageColor3=ar.IconColor
end
if not ar.IconShape then
au.Parent=ar.UIElements.Main.Frame
ar.UIElements.Icon=au
au.ImageLabel.ImageTransparency=not ar.Locked and 0 or 0.7
at=-18-(Window.UIPadding/2)
ar.UIElements.Main.Frame.TextLabel.Size=UDim2.new(1,at,0,0)
elseif ar.IconColor then
ak.NewRoundFrame(
ar.IconShape~="Circle"and(ar.UICorner+5-(2+(Window.UIPadding/4)))or 9999,
"Squircle",
{
Size=UDim2.new(0,26,0,26),
ImageColor3=ar.IconColor,
Parent=ar.UIElements.Main.Frame,
},
{
au,
ak.NewRoundFrame(
ar.IconShape~="Circle"and(ar.UICorner+5-(2+(Window.UIPadding/4)))or 9999,
"Glass-1.4",
{
Size=UDim2.new(1,0,1,0),
ThemeTag={
ImageColor3="White",
},
ImageTransparency=0,
Name="Outline",
},
{













}
),
}
)
au.AnchorPoint=Vector2.new(0.5,0.5)
au.Position=UDim2.new(0.5,0,0.5,0)
au.ImageLabel.ImageTransparency=0
au.ImageLabel.ImageColor3=ak.GetTextColorForHSB(ar.IconColor,0.68)
at=-28-(Window.UIPadding/2)
ar.UIElements.Main.Frame.TextLabel.Size=UDim2.new(1,at,0,0)
end

av=
ak.Image(ar.Icon,ar.Icon..":"..ar.Title,0,Window.Folder,ar.__type,true,ar.IconThemed)
av.Size=UDim2.new(0,16,0,16)
av.ImageLabel.ImageTransparency=not ar.Locked and 0 or 0.7
at=-30




end

ar.UIElements.ContainerFrame=al("ScrollingFrame",{
Size=UDim2.new(1,0,1,ar.ShowTabTitle and-((Window.UIPadding*2.4)+12)or 0),
BackgroundTransparency=1,
ScrollBarThickness=0,
ElasticBehavior="Never",
CanvasSize=UDim2.new(0,0,0,0),
AnchorPoint=Vector2.new(0,1),
Position=UDim2.new(0,0,1,0),
AutomaticCanvasSize="Y",

ScrollingDirection="Y",
},{
al("UIPadding",{
PaddingTop=UDim.new(0,not Window.HidePanelBackground and 20 or 10),
PaddingLeft=UDim.new(0,not Window.HidePanelBackground and 20 or 10),
PaddingRight=UDim.new(0,not Window.HidePanelBackground and 20 or 10),
PaddingBottom=UDim.new(0,not Window.HidePanelBackground and 20 or 10),
}),
al("UIListLayout",{
SortOrder="LayoutOrder",
Padding=UDim.new(0,ar.Gap),
HorizontalAlignment="Center",
}),
})





ar.UIElements.ContainerFrameCanvas=al("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Visible=false,
Parent=Window.UIElements.MainBar,
ZIndex=5,
},{
ar.UIElements.ContainerFrame,
al("Frame",{
Size=UDim2.new(1,-14,1,-14),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
Name="ScrollSliderHolder",
}),
al("Frame",{
Size=UDim2.new(1,0,0,((Window.UIPadding*2.4)+12)),
BackgroundTransparency=1,
Visible=ar.ShowTabTitle or false,
Name="TabTitle",
},{
av,
al("TextLabel",{
Text=ar.Title,
ThemeTag={
TextColor3="Text",
},
TextSize=20,
TextTransparency=0.1,
Size=UDim2.new(0,0,1,0),
FontFace=Font.new(ak.Font,Enum.FontWeight.SemiBold),

RichText=true,
LayoutOrder=2,
TextXAlignment="Left",
BackgroundTransparency=1,
AutomaticSize="X",
}),
al("UIPadding",{
PaddingTop=UDim.new(0,20),
PaddingLeft=UDim.new(0,20),
PaddingRight=UDim.new(0,20),
PaddingBottom=UDim.new(0,20),
}),
al("UIListLayout",{
SortOrder="LayoutOrder",
Padding=UDim.new(0,10),
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment=ar.TabTitleAlign,
}),
}),
al("Frame",{
Size=UDim2.new(1,0,0,1),
BackgroundTransparency=0.9,
ThemeTag={
BackgroundColor3="Text",
},
Position=UDim2.new(0,0,0,((Window.UIPadding*2.4)+12)),
Visible=ar.ShowTabTitle or false,
}),
})

ao.Containers[as]=ar.UIElements.ContainerFrameCanvas
ao.Tabs[as]=ar

ar.ContainerFrame=ar.UIElements.ContainerFrameCanvas

ak.AddSignal(ar.UIElements.Main.MouseButton1Click,function()
if not ar.Locked then
ao:SelectTab(as)
end
end)

if Window.ScrollBarEnabled then
an(
ar.UIElements.ContainerFrame,
ar.UIElements.ContainerFrameCanvas.ScrollSliderHolder,
Window,
4,
WindUI
)
end

local aw
local ax
local ay
local az=false


if ar.Desc then
ak.AddSignal(ar.UIElements.Main.InputBegan,function()
az=true
ax=task.spawn(function()
task.wait(0.35)
if az and not aw then
aw=am(ar.Desc,ao.ToolTipParent,true)
aw.Container.AnchorPoint=Vector2.new(0.5,0.5)

local function updatePosition()
if aw then
aw.Container.Position=UDim2.new(0,ai.X,0,ai.Y-4)
end
end

updatePosition()
ay=ai.Move:Connect(updatePosition)
aw:Open()
end
end)
end)
end

ak.AddSignal(ar.UIElements.Main.MouseEnter,function()
if not ar.Locked then
ak.SetThemeTag(ar.UIElements.Main.Frame,{
ImageTransparency="TabBackgroundHoverTransparency",
ImageColor3="TabBackgroundHover",
},0.1)
end
end)
ak.AddSignal(ar.UIElements.Main.InputEnded,function()
if ar.Desc then
az=false
if ax then
task.cancel(ax)
ax=nil
end
if ay then
ay:Disconnect()
ay=nil
end
if aw then
aw:Close()
aw=nil
end
end

if not ar.Locked then
ak.SetThemeTag(ar.UIElements.Main.Frame,{
ImageTransparency="TabBorderTransparency",
},0.1)
end
end)

function ar.ScrollToTheElement(aA,aB)
ar.UIElements.ContainerFrame.ScrollingEnabled=false

ak.Tween(ar.UIElements.ContainerFrame,0.45,{
CanvasPosition=Vector2.new(
0,
ar.Elements[aB].ElementFrame.AbsolutePosition.Y
-ar.UIElements.ContainerFrame.AbsolutePosition.Y
-ar.UIElements.ContainerFrame.UIPadding.PaddingTop.Offset
),
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()

task.spawn(function()
task.wait(0.48)

if ar.Elements[aB].Highlight then
ar.Elements[aB]:Highlight()
end
ar.UIElements.ContainerFrame.ScrollingEnabled=true
end)

return ar
end



local aA=a.load'_'

aA.Load(
ar,
ar.UIElements.ContainerFrame,
aA.Elements,
Window,
WindUI,
nil,
aA,
aq,
ar
)

function ar.LockAll(aB)

for b,d in next,Window.AllElements do
if d.Tab and d.Tab.Index and d.Tab.Index==ar.Index and d.Lock then
d:Lock()
end
end
end
function ar.UnlockAll(aB)
for b,d in next,Window.AllElements do
if d.Tab and d.Tab.Index and d.Tab.Index==ar.Index and d.Unlock then
d:Unlock()
end
end
end
function ar.GetLocked(aB)
local b={}

for d,f in next,Window.AllElements do
if f.Tab and f.Tab.Index and f.Tab.Index==ar.Index and f.Locked==true then
table.insert(b,f)
end
end

return b
end
function ar.GetUnlocked(aB)
local b={}

for d,f in next,Window.AllElements do
if f.Tab and f.Tab.Index and f.Tab.Index==ar.Index and f.Locked==false then
table.insert(b,f)
end
end

return b
end

function ar.Select(aB)
return ao:SelectTab(ar.Index)
end

task.spawn(function()
local aB
if ar.CustomEmptyPage.Icon then
aB=
ak.Image(ar.CustomEmptyPage.Icon,ar.CustomEmptyPage.Icon,0,"Temp","EmptyPage",true)
aB.Size=
UDim2.fromOffset(ar.CustomEmptyPage.IconSize or 48,ar.CustomEmptyPage.IconSize or 48)
end

local b=al("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,-Window.UIElements.Main.Main.Topbar.AbsoluteSize.Y),
Parent=ar.UIElements.ContainerFrame,
},{
al("UIListLayout",{
Padding=UDim.new(0,8),
SortOrder="LayoutOrder",
VerticalAlignment="Center",
HorizontalAlignment="Center",
FillDirection="Vertical",
}),











aB,
ar.CustomEmptyPage.Title and al("TextLabel",{
AutomaticSize="XY",
Text=ar.CustomEmptyPage.Title,
ThemeTag={
TextColor3="Text",
},
TextSize=18,
TextTransparency=0.5,
BackgroundTransparency=1,
FontFace=Font.new(ak.Font,Enum.FontWeight.Medium),
})or nil,
ar.CustomEmptyPage.Desc and al("TextLabel",{
AutomaticSize="XY",
Text=ar.CustomEmptyPage.Desc,
ThemeTag={
TextColor3="Text",
},
TextSize=15,
TextTransparency=0.65,
BackgroundTransparency=1,
FontFace=Font.new(ak.Font,Enum.FontWeight.Regular),
})or nil,
})





local d
d=ak.AddSignal(ar.UIElements.ContainerFrame.ChildAdded,function()
b.Visible=false
d:Disconnect()
end)
end)

return ar
end

function ao.OnChange(ap,aq)
ao.OnChangeFunc=aq
end

function ao.SelectTab(ap,aq)
if not ao.Tabs[aq].Locked then
ao.SelectedTab=aq

for ar,as in next,ao.Tabs do
if not as.Locked then
ak.SetThemeTag(as.UIElements.Main,{
ImageTransparency="TabBorderTransparency",
},0.15)
if as.Border then
ak.SetThemeTag(as.UIElements.Main.Outline,{
ImageTransparency="TabBorderTransparency",
},0.15)
end
ak.SetThemeTag(as.UIElements.Main.Frame.TextLabel,{
TextTransparency="TabTextTransparency",
},0.15)
if as.UIElements.Icon and not as.IconColor then
ak.SetThemeTag(as.UIElements.Icon.ImageLabel,{
ImageTransparency="TabIconTransparency",
},0.15)
end
as.Selected=false
end
end
ak.SetThemeTag(ao.Tabs[aq].UIElements.Main,{
ImageColor3="TabBackgroundActive",
ImageTransparency="TabBackgroundActiveTransparency",
},0.15)
if ao.Tabs[aq].Border then
ak.SetThemeTag(ao.Tabs[aq].UIElements.Main.Outline,{
ImageTransparency="TabBorderTransparencyActive",
},0.15)
end
ak.SetThemeTag(ao.Tabs[aq].UIElements.Main.Frame.TextLabel,{
TextTransparency="TabTextTransparencyActive",
},0.15)
if ao.Tabs[aq].UIElements.Icon and not ao.Tabs[aq].IconColor then
ak.SetThemeTag(ao.Tabs[aq].UIElements.Icon.ImageLabel,{
ImageTransparency="TabIconTransparencyActive",
},0.15)
end
ao.Tabs[aq].Selected=true

task.spawn(function()
for ar,as in next,ao.Containers do
as.AnchorPoint=Vector2.new(0,0.05)
as.Visible=false
end
ao.Containers[aq].Visible=true
local ar=game:GetService"TweenService"

local as=TweenInfo.new(0.15,Enum.EasingStyle.Quart,Enum.EasingDirection.Out)
local at=ar:Create(ao.Containers[aq],as,{
AnchorPoint=Vector2.new(0,0),
})
at:Play()
end)

ao.OnChangeFunc(aq)
end
end

return ao end function a.ab()

local aa={}


local af=a.load'd'
local ai=af.New
local ak=af.Tween

local al=a.load'aa'

function aa.New(am,an,ao,ap,aq)
local ar={
Title=am.Title or"Section",
Icon=am.Icon,
IconThemed=am.IconThemed,
Opened=am.Opened or false,

HeaderSize=42,
IconSize=18,

Expandable=false,
}

local as
if ar.Icon then
as=af.Image(
ar.Icon,
ar.Icon,
0,
ao,
"Section",
true,
ar.IconThemed,
"TabSectionIcon"
)

as.Size=UDim2.new(0,ar.IconSize,0,ar.IconSize)
as.ImageLabel.ImageTransparency=.25
end

local at=ai("Frame",{
Size=UDim2.new(0,ar.IconSize,0,ar.IconSize),
BackgroundTransparency=1,
Visible=false
},{
ai("ImageLabel",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Image=af.Icon"chevron-down"[1],
ImageRectSize=af.Icon"chevron-down"[2].ImageRectSize,
ImageRectOffset=af.Icon"chevron-down"[2].ImageRectPosition,
ThemeTag={
ImageColor3="Icon",
},
ImageTransparency=.7,
})
})

local au=ai("Frame",{
Size=UDim2.new(1,0,0,ar.HeaderSize),
BackgroundTransparency=1,
Parent=an,
ClipsDescendants=true,
},{
ai("TextButton",{
Size=UDim2.new(1,0,0,ar.HeaderSize),
BackgroundTransparency=1,
Text="",
},{
as,
ai("TextLabel",{
Text=ar.Title,
TextXAlignment="Left",
Size=UDim2.new(
1,
as and(-ar.IconSize-10)*2
or(-ar.IconSize-10),

1,
0
),
ThemeTag={
TextColor3="Text",
},
FontFace=Font.new(af.Font,Enum.FontWeight.SemiBold),
TextSize=14,
BackgroundTransparency=1,
TextTransparency=.7,

TextWrapped=true
}),
ai("UIListLayout",{
FillDirection="Horizontal",
VerticalAlignment="Center",
Padding=UDim.new(0,10)
}),
at,
ai("UIPadding",{
PaddingLeft=UDim.new(0,11),
PaddingRight=UDim.new(0,11),
})
}),
ai("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
Name="Content",
Visible=true,
Position=UDim2.new(0,0,0,ar.HeaderSize)
},{
ai("UIListLayout",{
FillDirection="Vertical",
Padding=UDim.new(0,aq.Gap),
VerticalAlignment="Bottom",
}),
})
})


function ar.Tab(av,aw)
if not ar.Expandable then
ar.Expandable=true
at.Visible=true
end
aw.Parent=au.Content
return al.New(aw,ap)
end

function ar.Open(av)
if ar.Expandable then
ar.Opened=true
ak(au,0.33,{
Size=UDim2.new(1,0,0,ar.HeaderSize+(au.Content.AbsoluteSize.Y/ap))
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()

ak(at.ImageLabel,0.1,{Rotation=180},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end
end
function ar.Close(av)
if ar.Expandable then
ar.Opened=false
ak(au,0.26,{
Size=UDim2.new(1,0,0,ar.HeaderSize)
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
ak(at.ImageLabel,0.1,{Rotation=0},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end
end

af.AddSignal(au.TextButton.MouseButton1Click,function()
if ar.Expandable then
if ar.Opened then
ar:Close()
else
ar:Open()
end
end
end)

af.AddSignal(au.Content.UIListLayout:GetPropertyChangedSignal"AbsoluteContentSize",function()
if ar.Opened then
ar:Open()
end
end)

if ar.Opened then
task.spawn(function()
task.wait()
ar:Open()
end)
end



return ar
end


return aa end function a.ac()
return{
Tab="table-of-contents",
Paragraph="type",
Button="square-mouse-pointer",
Toggle="toggle-right",
Slider="sliders-horizontal",
Keybind="command",
Input="text-cursor-input",
Dropdown="chevrons-up-down",
Code="terminal",
Colorpicker="palette",
}end function a.ad()
local aa=(cloneref or clonereference or function(aa)
return aa
end)

aa(game:GetService"UserInputService")

local af={
Margin=8,
Padding=9,
}

local ai=a.load'd'
local ak=ai.New
local al=ai.Tween

function af.new(am,an,ao)
local ap={
IconSize=18,
Padding=14,
Radius=22,
Width=400,
MaxHeight=380,

Icons=a.load'ac',
}

local aq=ak("TextBox",{
Text="",
PlaceholderText="Search...",
ThemeTag={
PlaceholderColor3="Placeholder",
TextColor3="Text",
},
Size=UDim2.new(1,-((ap.IconSize*2)+(ap.Padding*2)),0,0),
AutomaticSize="Y",
ClipsDescendants=true,
ClearTextOnFocus=false,
BackgroundTransparency=1,
TextXAlignment="Left",
FontFace=Font.new(ai.Font,Enum.FontWeight.Regular),
TextSize=18,
})

local ar=ak("ImageLabel",{
Image=ai.Icon"x"[1],
ImageRectSize=ai.Icon"x"[2].ImageRectSize,
ImageRectOffset=ai.Icon"x"[2].ImageRectPosition,
BackgroundTransparency=1,
ThemeTag={
ImageColor3="Icon",
},
ImageTransparency=0.1,
Size=UDim2.new(0,ap.IconSize,0,ap.IconSize),
},{
ak("TextButton",{
Size=UDim2.new(1,8,1,8),
BackgroundTransparency=1,
Active=true,
ZIndex=999999999,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Text="",
}),
})

local as=ak("ScrollingFrame",{
Size=UDim2.new(1,0,0,0),
AutomaticCanvasSize="Y",
ScrollingDirection="Y",
ElasticBehavior="Never",
ScrollBarThickness=0,
CanvasSize=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
Visible=false,
},{
ak("UIListLayout",{
Padding=UDim.new(0,0),
FillDirection="Vertical",
}),
ak("UIPadding",{
PaddingTop=UDim.new(0,ap.Padding),
PaddingLeft=UDim.new(0,ap.Padding),
PaddingRight=UDim.new(0,ap.Padding),
PaddingBottom=UDim.new(0,ap.Padding),
}),
})

local at=ai.NewRoundFrame(ap.Radius,"Squircle",{
Size=UDim2.new(1,0,1,0),
ThemeTag={
ImageColor3="WindowSearchBarBackground",
},
ImageTransparency=0,
},{
ai.NewRoundFrame(ap.Radius,"Squircle",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,

Visible=false,
ThemeTag={
ImageColor3="White",
},
ImageTransparency=1,
Name="Frame",
},{
ak("Frame",{
Size=UDim2.new(1,0,0,46),
BackgroundTransparency=1,
},{








ak("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
},{
ak("ImageLabel",{
Image=ai.Icon"search"[1],
ImageRectSize=ai.Icon"search"[2].ImageRectSize,
ImageRectOffset=ai.Icon"search"[2].ImageRectPosition,
BackgroundTransparency=1,
ThemeTag={
ImageColor3="Icon",
},
ImageTransparency=0.1,
Size=UDim2.new(0,ap.IconSize,0,ap.IconSize),
}),
aq,
ar,
ak("UIListLayout",{
Padding=UDim.new(0,ap.Padding),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
ak("UIPadding",{
PaddingLeft=UDim.new(0,ap.Padding),
PaddingRight=UDim.new(0,ap.Padding),
}),
}),
}),
ak("Frame",{
BackgroundTransparency=1,
AutomaticSize="Y",
Size=UDim2.new(1,0,0,0),
Name="Results",
},{
ak("Frame",{
Size=UDim2.new(1,0,0,1),
ThemeTag={
BackgroundColor3="Outline",
},
BackgroundTransparency=0.9,
Visible=false,
}),
as,
ak("UISizeConstraint",{
MaxSize=Vector2.new(ap.Width,ap.MaxHeight),
}),
}),
ak("UIListLayout",{
Padding=UDim.new(0,0),
FillDirection="Vertical",
}),
}),
})

local au=ak("Frame",{
Size=UDim2.new(0,ap.Width,0,0),
AutomaticSize="Y",
Parent=an,
BackgroundTransparency=1,
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
Visible=false,

ZIndex=99999999,
},{
ak("UIScale",{
Scale=0.9,
}),
at,















})

local function CreateSearchTab(av,aw,ax,ay,az,aA)
local aB=ak("TextButton",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Parent=ay or nil,
},{
ai.NewRoundFrame(ap.Radius-11,"Squircle",{
Size=UDim2.new(1,0,0,0),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),

ThemeTag={
ImageColor3="Text",
},
ImageTransparency=1,
Name="Main",
},{
ai.NewRoundFrame(ap.Radius-11,"Glass-1",{
Size=UDim2.new(1,0,1,0),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
ImageColor3="White",
},
ImageTransparency=1,
Name="Outline",
},{








ak("UIPadding",{
PaddingTop=UDim.new(0,ap.Padding-2),
PaddingLeft=UDim.new(0,ap.Padding),
PaddingRight=UDim.new(0,ap.Padding),
PaddingBottom=UDim.new(0,ap.Padding-2),
}),
ak("ImageLabel",{
Image=ai.Icon(ax)[1],
ImageRectSize=ai.Icon(ax)[2].ImageRectSize,
ImageRectOffset=ai.Icon(ax)[2].ImageRectPosition,
BackgroundTransparency=1,
ThemeTag={
ImageColor3="Icon",
},
ImageTransparency=0.1,
Size=UDim2.new(0,ap.IconSize,0,ap.IconSize),
}),
ak("Frame",{
Size=UDim2.new(1,-ap.IconSize-ap.Padding,0,0),
BackgroundTransparency=1,
},{
ak("TextLabel",{
Text=av,
ThemeTag={
TextColor3="Text",
},
TextSize=17,
BackgroundTransparency=1,
TextXAlignment="Left",
FontFace=Font.new(ai.Font,Enum.FontWeight.Medium),
Size=UDim2.new(1,0,0,0),
TextTruncate="AtEnd",
AutomaticSize="Y",
Name="Title",
}),
ak("TextLabel",{
Text=aw or"",
Visible=aw and true or false,
ThemeTag={
TextColor3="Text",
},
TextSize=15,
TextTransparency=0.3,
BackgroundTransparency=1,
TextXAlignment="Left",
FontFace=Font.new(ai.Font,Enum.FontWeight.Medium),
Size=UDim2.new(1,0,0,0),
TextTruncate="AtEnd",
AutomaticSize="Y",
Name="Desc",
})or nil,
ak("UIListLayout",{
Padding=UDim.new(0,6),
FillDirection="Vertical",
}),
}),
ak("UIListLayout",{
Padding=UDim.new(0,ap.Padding),
FillDirection="Horizontal",
}),
}),
},true),
ak("Frame",{
Name="ParentContainer",
Size=UDim2.new(1,-ap.Padding,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Visible=az,

},{
ai.NewRoundFrame(99,"Squircle",{
Size=UDim2.new(0,2,1,0),
BackgroundTransparency=1,
ThemeTag={
ImageColor3="Text",
},
ImageTransparency=0.9,
}),
ak("Frame",{
Size=UDim2.new(1,-ap.Padding-2,0,0),
Position=UDim2.new(0,ap.Padding+2,0,0),
BackgroundTransparency=1,
},{
ak("UIListLayout",{
Padding=UDim.new(0,0),
FillDirection="Vertical",
}),
}),
}),
ak("UIListLayout",{
Padding=UDim.new(0,0),
FillDirection="Vertical",
HorizontalAlignment="Right",
}),
})



aB.Main.Size=UDim2.new(
1,
0,
0,
aB.Main.Outline.Frame.Desc.Visible
and(((ap.Padding-2)*2)+aB.Main.Outline.Frame.Title.TextBounds.Y+6+aB.Main.Outline.Frame.Desc.TextBounds.Y)
or(((ap.Padding-2)*2)+aB.Main.Outline.Frame.Title.TextBounds.Y)
)

ai.AddSignal(aB.Main.MouseEnter,function()
al(aB.Main,0.04,{ImageTransparency=0.95}):Play()

end)
ai.AddSignal(aB.Main.InputEnded,function()
al(aB.Main,0.08,{ImageTransparency=1}):Play()

end)
ai.AddSignal(aB.Main.MouseButton1Click,function()
if aA then
aA()
end
end)

return aB
end

local function ContainsText(av,aw)
if not aw or aw==""then
return false
end

if not av or av==""then
return false
end

local ax=string.lower(av)
local ay=string.lower(aw)

return string.find(ax,ay,1,true)~=nil
end

local function Search(av)
if not av or av==""then
return{}
end

local aw={}
for ax,ay in next,am.Tabs do
local az=ContainsText(ay.Title or"",av)
local aA={}

for aB,b in next,ay.Elements do
if b.__type~="Section"then
local d=ContainsText(b.Title or"",av)
local f=ContainsText(b.Desc or"",av)

if d or f then
aA[aB]={
Title=b.Title,
Desc=b.Desc,
Original=b,
__type=b.__type,
Index=aB,
}
end
end
end

if az or next(aA)~=nil then
aw[ax]={
Tab=ay,
Title=ay.Title,
Icon=ay.Icon,
Elements=aA,
}
end
end
return aw
end

ai.AddSignal(as.UIListLayout:GetPropertyChangedSignal"AbsoluteContentSize",function()

al(as,0.06,{
Size=UDim2.new(
1,
0,
0,
math.clamp(
as.UIListLayout.AbsoluteContentSize.Y+(ap.Padding*2),
0,
ap.MaxHeight
)
),
},Enum.EasingStyle.Quint,Enum.EasingDirection.InOut):Play()






end)

function ap.Open(av)
task.spawn(function()
at.Frame.Visible=true
au.Visible=true
al(au.UIScale,0.12,{Scale=1},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end)
end

function ap.Close(av,aw)
task.spawn(function()
ao()
at.Frame.Visible=false
al(au.UIScale,0.12,{Scale=1},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()

task.wait(0.12)
au.Visible=false
if aw then
au:Destroy()
end
end)
end

ai.AddSignal(ar.TextButton.MouseButton1Click,function()
ap:Close(true)
end)

ap:Open()

function ap.Search(av,aw)
aw=aw or""

local ax=Search(aw)

as.Visible=true
at.Frame.Results.Frame.Visible=true
for ay,az in next,as:GetChildren()do
if az.ClassName~="UIListLayout"and az.ClassName~="UIPadding"then
az:Destroy()
end
end

if ax and next(ax)~=nil then
for ay,az in next,ax do
local aA=ap.Icons.Tab
local aB=CreateSearchTab(az.Title,nil,aA,as,true,function()
ap:Close()
am:SelectTab(ay)
end)
if az.Elements and next(az.Elements)~=nil then
for b,d in next,az.Elements do
local f=ap.Icons[d.__type]
CreateSearchTab(
d.Title,
d.Desc,
f,
aB:FindFirstChild"ParentContainer"and aB.ParentContainer.Frame
or nil,
false,
function()
ap:Close()
am:SelectTab(ay)
if az.Tab.ScrollToTheElement then

az.Tab:ScrollToTheElement(d.Index)
end

end
)

end
end
end
elseif aw~=""then
ak("TextLabel",{
Size=UDim2.new(1,0,0,70),
Text="No results found",
TextSize=16,
ThemeTag={
TextColor3="Text",
},
TextTransparency=0.2,
BackgroundTransparency=1,
FontFace=Font.new(ai.Font,Enum.FontWeight.Medium),
Parent=as,
Name="NotFound",
})
else
as.Visible=false
at.Frame.Results.Frame.Visible=false
end
end

ai.AddSignal(aq:GetPropertyChangedSignal"Text",function()
ap:Search(aq.Text)
end)

return ap
end

return af end function a.ae()



local aa=(cloneref or clonereference or function(aa)
return aa
end)

local af=aa(game:GetService"UserInputService")
local ai=aa(game:GetService"RunService")
local ak=aa(game:GetService"Players")

local al=workspace.CurrentCamera

local am=a.load't'

local an=a.load'd'
local ao=an.New
local ap=an.Tween


local aq=a.load'w'.New
local ar=a.load'm'.New
local as=a.load'x'.New
local at=a.load'y'

local au=a.load'z'



return function(av)
local aw={
Title=av.Title or"UI Library",
Author=av.Author,
Icon=av.Icon,
IconSize=av.IconSize or 22,
IconThemed=av.IconThemed,
IconRadius=av.IconRadius or 0,
Folder=av.Folder,
Resizable=av.Resizable~=false,
Background=av.Background,
BackgroundImageTransparency=av.BackgroundImageTransparency or 0,
ShadowTransparency=av.ShadowTransparency or 0.6,
User=av.User or{},
Footer=av.Footer or{},
Topbar=av.Topbar or{Height=52,ButtonsType="Default"},

Size=av.Size,

MinSize=av.MinSize or Vector2.new(560,350),
MaxSize=av.MaxSize or Vector2.new(850,560),

TopBarButtonIconSize=av.TopBarButtonIconSize,

ToggleKey=av.ToggleKey,
ElementsRadius=av.ElementsRadius,
Radius=av.Radius or 16,
Transparent=av.Transparent or false,
HideSearchBar=av.HideSearchBar~=false,
ScrollBarEnabled=av.ScrollBarEnabled or false,
SideBarWidth=av.SideBarWidth or 200,
Acrylic=av.Acrylic or false,
NewElements=av.NewElements or false,
IgnoreAlerts=av.IgnoreAlerts or false,
HidePanelBackground=av.HidePanelBackground or false,
AutoScale=av.AutoScale~=false,
OpenButton=av.OpenButton,
DragFrameSize=160,

Position=UDim2.new(0.5,0,0.5,0),
UICorner=16,
UIPadding=14,
UIElements={},
CanDropdown=true,
Closed=false,
Parent=av.Parent,
Destroyed=false,
IsFullscreen=false,
CanResize=av.Resizable~=false,
IsOpenButtonEnabled=true,

CurrentConfig=nil,
ConfigManager=nil,
AcrylicPaint=nil,
CurrentTab=nil,
TabModule=nil,

OnOpenCallback=nil,
OnCloseCallback=nil,
OnDestroyCallback=nil,

IsPC=false,

Gap=5,

TopBarButtons={},
AllElements={},

ElementConfig={},

PendingFlags={},

IsToggleDragging=false,
}

aw.UICorner=aw.Radius

aw.TopBarButtonIconSize=aw.TopBarButtonIconSize or(aw.Topbar.ButtonsType=="Mac"and 11 or 16)

aw.ElementConfig={
UIPadding=(aw.NewElements and 10 or 13),
UICorner=aw.ElementsRadius or(aw.NewElements and 23 or 16),
}

local ax=aw.Size or UDim2.new(0,580,0,460)
aw.Size=UDim2.new(
ax.X.Scale,
math.clamp(ax.X.Offset,aw.MinSize.X,aw.MaxSize.X),
ax.Y.Scale,
math.clamp(ax.Y.Offset,aw.MinSize.Y,aw.MaxSize.Y)
)

if aw.Topbar=={}then
aw.Topbar={Height=52,ButtonsType="Default"}
end

if not ai:IsStudio()and aw.Folder and writefile then
if not isfolder("WindUI/"..aw.Folder)then
makefolder("WindUI/"..aw.Folder)
end
if not isfolder("WindUI/"..aw.Folder.."/assets")then
makefolder("WindUI/"..aw.Folder.."/assets")
end
if not isfolder(aw.Folder)then
makefolder(aw.Folder)
end
if not isfolder(aw.Folder.."/assets")then
makefolder(aw.Folder.."/assets")
end
end

local ay=ao("UICorner",{
CornerRadius=UDim.new(0,aw.UICorner),
})

if aw.Folder then
aw.ConfigManager=au:Init(aw)
end

if aw.Acrylic then local
az=am.AcrylicPaint{UseAcrylic=aw.Acrylic}

aw.AcrylicPaint=az
end

local az=ao("Frame",{
Size=UDim2.new(0,32,0,32),
Position=UDim2.new(1,0,1,0),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
ZIndex=99,
Active=true,
},{
ao("ImageLabel",{
Size=UDim2.new(0,96,0,96),
BackgroundTransparency=1,
Image="rbxassetid://120997033468887",
Position=UDim2.new(0.5,-16,0.5,-16),
AnchorPoint=Vector2.new(0.5,0.5),
ImageTransparency=1,
}),
})
local aA=an.NewRoundFrame(aw.UICorner,"Squircle",{
Size=UDim2.new(1,0,1,0),
ImageTransparency=1,
ImageColor3=Color3.new(0,0,0),
ZIndex=98,
Active=false,
},{
ao("ImageLabel",{
Size=UDim2.new(0,70,0,70),
Image=an.Icon"expand"[1],
ImageRectOffset=an.Icon"expand"[2].ImageRectPosition,
ImageRectSize=an.Icon"expand"[2].ImageRectSize,
BackgroundTransparency=1,
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ImageTransparency=1,
}),
})

local aB=an.NewRoundFrame(aw.UICorner,"Squircle",{
Size=UDim2.new(1,0,1,0),
ImageTransparency=1,
ImageColor3=Color3.new(0,0,0),
ZIndex=999,
Active=false,
})









aw.UIElements.SideBar=ao("ScrollingFrame",{
Size=UDim2.new(
1,
aw.ScrollBarEnabled and-3-(aw.UIPadding/2)or 0,
1,
not aw.HideSearchBar and-45 or 0
),
Position=UDim2.new(0,0,1,0),
AnchorPoint=Vector2.new(0,1),
BackgroundTransparency=1,
ScrollBarThickness=0,
ElasticBehavior="Never",
CanvasSize=UDim2.new(0,0,0,0),
AutomaticCanvasSize="Y",
ScrollingDirection="Y",
ClipsDescendants=true,
VerticalScrollBarPosition="Left",
},{
ao("Frame",{
BackgroundTransparency=1,
AutomaticSize="Y",
Size=UDim2.new(1,0,0,0),
Name="Frame",
},{
ao("UIPadding",{



PaddingBottom=UDim.new(0,aw.UIPadding/2),
}),
ao("UIListLayout",{
SortOrder="LayoutOrder",
Padding=UDim.new(0,aw.Gap),
}),
}),
ao("UIPadding",{

PaddingLeft=UDim.new(0,aw.UIPadding/2),
PaddingRight=UDim.new(0,aw.UIPadding/2),
PaddingBottom=UDim.new(0,aw.UIPadding/2),
}),

})

aw.UIElements.SideBarContainer=ao("Frame",{
Size=UDim2.new(
0,
aw.SideBarWidth,
1,
aw.User.Enabled and-aw.Topbar.Height-42-(aw.UIPadding*2)or-aw.Topbar.Height
),
Position=UDim2.new(0,0,0,aw.Topbar.Height),
BackgroundTransparency=1,
Visible=true,
},{
ao("Frame",{
Name="Content",
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,not aw.HideSearchBar and-45-aw.UIPadding or-aw.UIPadding/2),
Position=UDim2.new(0,0,1,-aw.UIPadding/2),
AnchorPoint=Vector2.new(0,1),
}),
aw.UIElements.SideBar,
})

if aw.ScrollBarEnabled then
as(
aw.UIElements.SideBar,
aw.UIElements.SideBarContainer.Content,
aw,
3,
av.WindUI
)
end

aw.UIElements.MainBar=ao("Frame",{
Size=UDim2.new(1,-aw.UIElements.SideBarContainer.AbsoluteSize.X,1,-aw.Topbar.Height),
Position=UDim2.new(1,0,1,0),
AnchorPoint=Vector2.new(1,1),
BackgroundTransparency=1,
},{
an.NewRoundFrame(aw.UICorner-(aw.UIPadding/2),"Squircle",{
Size=UDim2.new(1,0,1,0),
ThemeTag={
ImageColor3="PanelBackground",
ImageTransparency="PanelBackgroundTransparency",
},


ZIndex=3,
Name="Background",
Visible=not aw.HidePanelBackground,
}),
ao("UIPadding",{

PaddingLeft=UDim.new(0,aw.UIPadding/2),
PaddingRight=UDim.new(0,aw.UIPadding/2),
PaddingBottom=UDim.new(0,aw.UIPadding/2),
}),
})

local b=ao("ImageLabel",{
Image="rbxassetid://8992230677",
ThemeTag={
ImageColor3="WindowShadow",

},
ImageTransparency=1,
Size=UDim2.new(1,100,1,100),
Position=UDim2.new(0,-50,0,-50),
ScaleType="Slice",
SliceCenter=Rect.new(99,99,99,99),
BackgroundTransparency=1,
ZIndex=-999999999999999,
Name="Blur",
})

if af.TouchEnabled and not af.KeyboardEnabled then
aw.IsPC=false
elseif af.KeyboardEnabled then
aw.IsPC=true
else
aw.IsPC=nil
end







local d
if aw.User then
local function GetUserThumb()local
f=ak:GetUserThumbnailAsync(
aw.User.Anonymous and 1 or ak.LocalPlayer.UserId,
Enum.ThumbnailType.HeadShot,
Enum.ThumbnailSize.Size420x420
)
return f
end

d=ao("TextButton",{
Size=UDim2.new(
0,
aw.UIElements.SideBarContainer.AbsoluteSize.X-(aw.UIPadding/2),
0,
42+aw.UIPadding
),
Position=UDim2.new(0,aw.UIPadding/2,1,-(aw.UIPadding/2)),
AnchorPoint=Vector2.new(0,1),
BackgroundTransparency=1,
Visible=aw.User.Enabled or false,
},{
an.NewRoundFrame(aw.UICorner-(aw.UIPadding/2),"SquircleOutline",{
Size=UDim2.new(1,0,1,0),
ThemeTag={
ImageColor3="Text",
},
ImageTransparency=1,
Name="Outline",
},{
ao("UIGradient",{
Rotation=78,
Color=ColorSequence.new{
ColorSequenceKeypoint.new(0.0,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(1.0,Color3.fromRGB(255,255,255)),
},
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0.0,0.1),
NumberSequenceKeypoint.new(0.5,1),
NumberSequenceKeypoint.new(1.0,0.1),
},
}),
}),
an.NewRoundFrame(aw.UICorner-(aw.UIPadding/2),"Squircle",{
Size=UDim2.new(1,0,1,0),
ThemeTag={
ImageColor3="Text",
},
ImageTransparency=1,
Name="UserIcon",
},{
ao("ImageLabel",{
Image=GetUserThumb(),
BackgroundTransparency=1,
Size=UDim2.new(0,42,0,42),
ThemeTag={
BackgroundColor3="Text",
},
BackgroundTransparency=0.93,
},{
ao("UICorner",{
CornerRadius=UDim.new(1,0),
}),
}),
ao("Frame",{
AutomaticSize="XY",
BackgroundTransparency=1,
},{
ao("TextLabel",{
Text=aw.User.Anonymous and"Anonymous"or ak.LocalPlayer.DisplayName,
TextSize=17,
ThemeTag={
TextColor3="Text",
},
FontFace=Font.new(an.Font,Enum.FontWeight.SemiBold),
AutomaticSize="Y",
BackgroundTransparency=1,
Size=UDim2.new(1,-27,0,0),
TextTruncate="AtEnd",
TextXAlignment="Left",
Name="DisplayName",
}),
ao("TextLabel",{
Text=aw.User.Anonymous and"anonymous"or ak.LocalPlayer.Name,
TextSize=15,
TextTransparency=0.6,
ThemeTag={
TextColor3="Text",
},
FontFace=Font.new(an.Font,Enum.FontWeight.Medium),
AutomaticSize="Y",
BackgroundTransparency=1,
Size=UDim2.new(1,-27,0,0),
TextTruncate="AtEnd",
TextXAlignment="Left",
Name="UserName",
}),
ao("UIListLayout",{
Padding=UDim.new(0,4),
HorizontalAlignment="Left",
}),
}),
ao("UIListLayout",{
Padding=UDim.new(0,aw.UIPadding),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
ao("UIPadding",{
PaddingLeft=UDim.new(0,aw.UIPadding/2),
PaddingRight=UDim.new(0,aw.UIPadding/2),
}),
}),
})

function aw.User.Enable(f)
aw.User.Enabled=true
ap(
aw.UIElements.SideBarContainer,
0.25,
{Size=UDim2.new(0,aw.SideBarWidth,1,-aw.Topbar.Height-42-(aw.UIPadding*2))},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
d.Visible=true
end
function aw.User.Disable(f)
aw.User.Enabled=false
ap(
aw.UIElements.SideBarContainer,
0.25,
{Size=UDim2.new(0,aw.SideBarWidth,1,-aw.Topbar.Height)},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
d.Visible=false
end
function aw.User.SetAnonymous(f,g)
if g~=false then
g=true
end
aw.User.Anonymous=g
d.UserIcon.ImageLabel.Image=GetUserThumb()
d.UserIcon.Frame.DisplayName.Text=g and"Anonymous"or ak.LocalPlayer.DisplayName
d.UserIcon.Frame.UserName.Text=g and"anonymous"or ak.LocalPlayer.Name
end

if aw.User.Enabled then
aw.User:Enable()
else
aw.User:Disable()
end

if aw.User.Callback then
an.AddSignal(d.MouseButton1Click,function()
aw.User.Callback()
end)
an.AddSignal(d.MouseEnter,function()
ap(d.UserIcon,0.04,{ImageTransparency=0.95}):Play()
ap(d.Outline,0.04,{ImageTransparency=0.85}):Play()
end)
an.AddSignal(d.InputEnded,function()
ap(d.UserIcon,0.04,{ImageTransparency=1}):Play()
ap(d.Outline,0.04,{ImageTransparency=1}):Play()
end)
end
end

local f
local g

local h=false
local i

local l=typeof(aw.Background)=="string"and string.match(aw.Background,"^video:(.+)")or nil

local m=typeof(aw.Background)=="string"
and not l
and string.match(aw.Background,"^https?://.+")
or nil

local p=typeof(aw.Background)=="string"
and not l
and string.match(aw.Background,"^rbxassetid://%d+")
or nil

local function GetImageExtension(r)
if not r or typeof(r)~="string"then
return".png"
end
local u=r:match"^([^?#]+)"or r
local v=u:match"%.(%w+)$"
if v then
v=v:lower()
if v=="jpg"or v=="jpeg"or v=="png"or v=="webp"then
return"."..v
end
end
return".png"
end



if typeof(aw.Background)=="string"and l then
h=true

if string.find(l,"http")then
local r=(aw.Folder or"Temp").."/assets/."..an.SanitizeFilename(l)..".webm"
if not isfile(r)then
local u,v=pcall(function()





local u=game.HttpGet and game:HttpGet(l)
or an.Request{
Url=l,
Method="GET",
Headers={["User-Agent"]="Roblox/Exploit"},
}.Body

writefile(r,u)
end)
if not u then
warn("[ WindUI.Window.Background ] Failed to download video: "..tostring(v))
end
end

local u,v=pcall(function()
return getcustomasset(r)
end)
if not u then
warn("[ WindUI.Window.Background ] Failed to load custom asset: "..tostring(v))
end
warn"[ WindUI.Window.Background ] VideoFrame may not work with custom video"
l=v
end

i=ao("VideoFrame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,0),
Video=l,
Looped=true,
Volume=0,
},{
ao("UICorner",{
CornerRadius=UDim.new(0,aw.UICorner),
}),
})
i:Play()
elseif m then
local r=(aw.Folder or"Temp")
.."/assets/."
..an.SanitizeFilename(m)
..GetImageExtension(m)

if isfile and not isfile(r)then
local u,v=pcall(function()
local u=game.HttpGet and game:HttpGet(m)
or an.Request{
Url=m,
Method="GET",
Headers={["User-Agent"]="Roblox/Exploit"},
}.Body

writefile(r,u)
end)

if not u then
warn("[ Window.Background ] Failed to download image: "..tostring(v))
end
end

local u,v=pcall(function()
return getcustomasset(r)
end)

if not u then
warn("[ Window.Background ] Failed to load custom asset: "..tostring(v))
end

i=ao("ImageLabel",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,0),
Image=v,
ImageTransparency=0,
ScaleType="Crop",
},{
ao("UICorner",{
CornerRadius=UDim.new(0,aw.UICorner),
}),
})
elseif p then
i=ao("ImageLabel",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,0),
Image=p,
ImageTransparency=0,
ScaleType="Crop",
},{
ao("UICorner",{
CornerRadius=UDim.new(0,aw.UICorner),
}),
})
elseif aw.Background then
i=ao("ImageLabel",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,0),
Image=typeof(aw.Background)=="string"and aw.Background or"",
ImageTransparency=1,
ScaleType="Crop",
},{
ao("UICorner",{
CornerRadius=UDim.new(0,aw.UICorner),
}),
})
end

local r=an.NewRoundFrame(99,"Squircle",{
ImageTransparency=0.8,
ImageColor3=Color3.new(1,1,1),
Size=UDim2.new(0,0,0,4),
Position=UDim2.new(0.5,0,1,4),
AnchorPoint=Vector2.new(0.5,0),
},{
ao("TextButton",{
Size=UDim2.new(1,12,1,12),
BackgroundTransparency=1,
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
Active=true,
ZIndex=99,
Name="Frame",
}),
})

function createAuthor(u)
return ao("TextLabel",{
Text=u,
FontFace=Font.new(an.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
TextTransparency=0.35,
AutomaticSize="XY",
Parent=aw.UIElements.Main and aw.UIElements.Main.Main.Topbar.Left.Title,
TextXAlignment="Left",
TextSize=13,
LayoutOrder=2,
ThemeTag={
TextColor3="WindowTopbarAuthor",
},
Name="Author",
})
end

local u
local v

if aw.Author then
u=createAuthor(aw.Author)
end

local x=ao("TextLabel",{
Text=aw.Title,
FontFace=Font.new(an.Font,Enum.FontWeight.SemiBold),
BackgroundTransparency=1,
AutomaticSize="XY",
Name="Title",
TextXAlignment="Left",
TextSize=16,
ThemeTag={
TextColor3="WindowTopbarTitle",
},
})

aw.UIElements.Main=ao("Frame",{
Size=UDim2.new(aw.Size.X.Scale,aw.Size.X.Offset,0,0),
Position=aw.Position,
BackgroundTransparency=1,
Parent=av.Parent,
AnchorPoint=Vector2.new(0.5,0.5),
Active=true,

},{
av.WindUI.UIScaleObj,
aw.AcrylicPaint and aw.AcrylicPaint.Frame or nil,
b,
an.NewRoundFrame(aw.UICorner,"Squircle",{
ImageTransparency=1,
Size=UDim2.new(1,0,1,0),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Name="Background",
ThemeTag={
ImageColor3="WindowBackground",
},

},{
i,
r,
az,
}),




ay,
aA,
aB,
ao("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Name="Main",

Visible=false,
ZIndex=97,
},{
ao("UICorner",{
CornerRadius=UDim.new(0,aw.UICorner),
}),
aw.UIElements.SideBarContainer,
aw.UIElements.MainBar,

d,

g,
ao("Frame",{
Size=UDim2.new(1,0,0,aw.Topbar.Height),
BackgroundTransparency=1,
BackgroundColor3=Color3.fromRGB(50,50,50),
Name="Topbar",
},{
f,






ao("Frame",{
AutomaticSize="X",
Size=UDim2.new(0,0,1,0),
BackgroundTransparency=1,
Name="Left",
},{
ao("UIListLayout",{
Padding=UDim.new(0,aw.UIPadding+4),
SortOrder="LayoutOrder",
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
ao("Frame",{
AutomaticSize="XY",
BackgroundTransparency=1,
Name="Title",
Size=UDim2.new(0,0,1,0),
LayoutOrder=2,
},{
ao("UIListLayout",{
Padding=UDim.new(0,0),
SortOrder="LayoutOrder",
FillDirection="Vertical",
VerticalAlignment="Center",
}),
x,
u,
}),
ao("UIPadding",{
PaddingLeft=UDim.new(0,4),
}),
}),
ao("CanvasGroup",{
Size=UDim2.new(0,0,1,0),
BackgroundTransparency=1,
Name="Center",
AnchorPoint=Vector2.new(0,0.5),
Position=UDim2.new(0,0,0.5,0),
AutomaticSize="Y",
Visible=false,
},{



ao("ScrollingFrame",{
Name="Holder",
BackgroundTransparency=1,
AutomaticSize="Y",
ScrollBarThickness=0,
ScrollingDirection="X",
AutomaticCanvasSize="X",
CanvasSize=UDim2.new(0,0,0,0),
Size=UDim2.new(1,0,1,0),


},{

ao("UIListLayout",{
FillDirection="Horizontal",
VerticalAlignment="Center",
HorizontalAlignment="Left",
Padding=UDim.new(0,aw.UIPadding/2),
}),
}),
}),
ao("Frame",{
AutomaticSize="XY",
BackgroundTransparency=1,
Position=UDim2.new(aw.Topbar.ButtonsType=="Default"and 1 or 0,0,0.5,0),
AnchorPoint=Vector2.new(aw.Topbar.ButtonsType=="Default"and 1 or 0,0.5),
Name="Right",
},{
ao("UIListLayout",{
Padding=UDim.new(0,aw.Topbar.ButtonsType=="Default"and 9 or 0),
FillDirection="Horizontal",
SortOrder="LayoutOrder",
}),
}),
ao("UIPadding",{
PaddingTop=UDim.new(0,aw.UIPadding),
PaddingLeft=UDim.new(
0,
aw.Topbar.ButtonsType=="Default"and aw.UIPadding or aw.UIPadding-2
),
PaddingRight=UDim.new(0,8),
PaddingBottom=UDim.new(0,aw.UIPadding),
}),
}),
}),
})

an.AddSignal(aw.UIElements.Main.Main.Topbar.Left:GetPropertyChangedSignal"AbsoluteSize",function()
local z=0
local A=aw.UIElements.Main.Main.Topbar.Right.UIListLayout.AbsoluteContentSize.X
/av.WindUI.UIScale

z=aw.UIElements.Main.Main.Topbar.Left.AbsoluteSize.X/av.WindUI.UIScale
if aw.Topbar.ButtonsType~="Default"then
z=z+A+aw.UIPadding-4
end

aw.UIElements.Main.Main.Topbar.Center.Position=
UDim2.new(0,z+(aw.UIPadding/av.WindUI.UIScale),0.5,0)
aw.UIElements.Main.Main.Topbar.Center.Size=UDim2.new(
1,
-z
-(aw.UIPadding/av.WindUI.UIScale)
-(aw.Topbar.ButtonsType=="Default"and A+aw.UIPadding or 0),
1,
0
)
end)

if aw.Topbar.ButtonsType~="Default"then
an.AddSignal(aw.UIElements.Main.Main.Topbar.Right:GetPropertyChangedSignal"AbsoluteSize",function()
aw.UIElements.Main.Main.Topbar.Left.Position=UDim2.new(
0,
(aw.UIElements.Main.Main.Topbar.Right.AbsoluteSize.X/av.WindUI.UIScale)+aw.UIPadding-4,
0,
0
)
end)
end

function aw.CreateTopbarButton(z,A,B,C,F,G,H,J)
local L=an.Image(
B,
B,
0,
aw.Folder,
"WindowTopbarIcon",
aw.Topbar.ButtonsType=="Default"and true or false,
G,
"WindowTopbarButtonIcon"
)
L.Size=aw.Topbar.ButtonsType=="Default"
and UDim2.new(0,J or aw.TopBarButtonIconSize,0,J or aw.TopBarButtonIconSize)
or UDim2.new(0,0,0,0)
L.AnchorPoint=Vector2.new(0.5,0.5)
L.Position=UDim2.new(0.5,0,0.5,0)
L.ImageLabel.ImageTransparency=aw.Topbar.ButtonsType=="Default"and 0 or 1

if aw.Topbar.ButtonsType~="Default"then
L.ImageLabel.ImageColor3=an.GetTextColorForHSB(H)
end

local M=an.NewRoundFrame(
aw.Topbar.ButtonsType=="Default"and aw.UICorner-(aw.UIPadding/2)or 999,
"Squircle",
{
Size=aw.Topbar.ButtonsType=="Default"
and UDim2.new(0,aw.Topbar.Height-16,0,aw.Topbar.Height-16)
or UDim2.new(0,14,0,14),
LayoutOrder=F or 999,


ZIndex=9999,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
ImageColor3=aw.Topbar.ButtonsType~="Default"and(H or Color3.fromHex"#ff3030")or nil,
ThemeTag=aw.Topbar.ButtonsType=="Default"and{
ImageColor3="Text",
}or nil,
ImageTransparency=aw.Topbar.ButtonsType=="Default"and 1 or 0,
},
{












L,
ao("UIScale",{
Scale=1,
}),
},
true
)

local N=ao("Frame",{
Size=aw.Topbar.ButtonsType~="Default"and UDim2.new(0,24,0,24)
or UDim2.new(0,aw.Topbar.Height-16,0,aw.Topbar.Height-16),
BackgroundTransparency=1,
Parent=aw.UIElements.Main.Main.Topbar.Right,
LayoutOrder=F or 999,
},{
M,
})



aw.TopBarButtons[100-F]={
Name=A,
Object=N,
}

an.AddSignal(M.MouseButton1Click,function()
if C then
C()
end
end)
an.AddSignal(M.MouseEnter,function()
if aw.Topbar.ButtonsType=="Default"then
ap(M,0.15,{ImageTransparency=0.93}):Play()


else

ap(
L.ImageLabel,
0.1,
{ImageTransparency=0},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
ap(L,0.1,{
Size=UDim2.new(
0,
J or aw.TopBarButtonIconSize,
0,
J or aw.TopBarButtonIconSize
),
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end
end)

an.AddSignal(M.MouseButton1Down,function()
ap(M.UIScale,0.2,{Scale=0.9},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end)

an.AddSignal(M.MouseLeave,function()
if aw.Topbar.ButtonsType=="Default"then
ap(M,0.1,{ImageTransparency=1}):Play()


else

ap(
L.ImageLabel,
0.1,
{ImageTransparency=1},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
ap(
L,
0.1,
{Size=UDim2.new(0,0,0,0)},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
end
end)

an.AddSignal(M.InputEnded,function()
ap(M.UIScale,0.2,{Scale=1},Enum.EasingStyle.Quint,Enum.EasingDirection.InOut):Play()
end)

return M
end

function aw.Topbar.Button(z,A:{
Name:string,
Icon:string,
Callback:any,
LayoutOrder:number,
IconThemed:boolean,
Color:Color3,
IconSize:number,
})
return aw:CreateTopbarButton(
A.Name,
A.Icon,
A.Callback,
A.LayoutOrder or 0,
A.IconThemed,
A.Color,
A.IconSize
)
end



local z=an.Drag(
aw.UIElements.Main,
{aw.UIElements.Main.Main.Topbar,r.Frame},
function(z,A)
if not aw.Closed then
if z and A==r.Frame then
ap(r,0.1,{ImageTransparency=0.35}):Play()
else
ap(r,0.2,{ImageTransparency=0.8}):Play()
end
aw.Position=aw.UIElements.Main.Position
aw.Dragging=z
end
end
)

if not h and aw.Background and typeof(aw.Background)=="table"then
local A=ao"UIGradient"
for B,C in next,aw.Background do
A[B]=C
end

aw.UIElements.BackgroundGradient=an.NewRoundFrame(aw.UICorner,"Squircle",{
Size=UDim2.new(1,0,1,0),
Parent=aw.UIElements.Main.Background,
ImageTransparency=aw.Transparent and av.WindUI.TransparencyValue or 0,
},{
A,
})
end














aw.OpenButtonMain=a.load'A'.New(aw)

task.spawn(function()
if aw.Icon then
local A=ao("Frame",{
Size=UDim2.new(0,22,0,22),
BackgroundTransparency=1,
Parent=aw.UIElements.Main.Main.Topbar.Left,
})

v=an.Image(
aw.Icon,
aw.Title,
aw.IconRadius,
aw.Folder,
"Window",
true,
aw.IconThemed,
"WindowTopbarIcon"
)
v.Parent=A
v.Size=UDim2.new(0,aw.IconSize,0,aw.IconSize)
v.Position=UDim2.new(0.5,0,0.5,0)
v.AnchorPoint=Vector2.new(0.5,0.5)

aw.OpenButtonMain:SetIcon(aw.Icon)











else
aw.OpenButtonMain:SetIcon(aw.Icon)

end
end)

function aw.SetToggleKey(A,B)
aw.ToggleKey=B
end

function aw.SetTitle(A,B)
aw.Title=B
x.Text=B
end

function aw.SetAuthor(A,B)
aw.Author=B
if not u then
u=createAuthor(aw.Author)
end

u.Text=B
end

function aw.SetSize(A,B)
if typeof(B)=="UDim2"then
aw.Size=B

ap(aw.UIElements.Main,0.08,{Size=B},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end
end

function aw.SetBackgroundImage(A,B)
aw.UIElements.Main.Background.ImageLabel.Image=B
end
function aw.SetBackgroundImageTransparency(A,B)
if i and i:IsA"ImageLabel"then
i.ImageTransparency=math.floor(B*10+0.5)/10
end
aw.BackgroundImageTransparency=math.floor(B*10+0.5)/10
end

function aw.SetBackgroundTransparency(A,B)
local C=math.floor(tonumber(B)*10+0.5)/10
av.WindUI.TransparencyValue=C
aw:ToggleTransparency(C>0)
end

local A
local B
an.Icon"minimize"
an.Icon"maximize"

aw:CreateTopbarButton(
"Fullscreen",
aw.Topbar.ButtonsType=="Mac"and"rbxassetid://127426072704909"or"maximize",
function()
aw:ToggleFullscreen()
end,
(aw.Topbar.ButtonsType=="Default"and 998 or 999),
true,
Color3.fromHex"#60C762",
aw.Topbar.ButtonsType=="Mac"and 9 or nil
)

local function SetSize(C)
ap(aw.UIElements.Main,0.45,{
Size=not aw.IsFullscreen and B or UDim2.new(
0,
(av.WindUI.ScreenGui.AbsoluteSize.X-20)/av.WindUI.UIScale,
0,
(av.WindUI.ScreenGui.AbsoluteSize.Y-20-52)/av.WindUI.UIScale
),
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()

ap(
aw.UIElements.Main,
0.45,
{Position=not aw.IsFullscreen and A or UDim2.new(0.5,0,0.5,26)},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
end

function aw.ToggleFullscreen(C)
local F=aw.IsFullscreen

z:Set(F)

if not F then
A=aw.UIElements.Main.Position
B=aw.UIElements.Main.Size

aw.CanResize=false
else
if aw.Resizable then
aw.CanResize=true
end
end

aw.IsFullscreen=not F

SetSize(true)
end

an.AddSignal(av.WindUI.ScreenGui:GetPropertyChangedSignal"AbsoluteSize",function()
if aw.IsFullscreen then
SetSize()
end
end)

aw:CreateTopbarButton("Minimize","minus",function()
if aw.Close then
aw:Close()
end






















end,(aw.Topbar.ButtonsType=="Default"and 997 or 998),nil,Color3.fromHex"#F4C948")

function aw.OnOpen(C,F)
aw.OnOpenCallback=F
end
function aw.OnClose(C,F)
aw.OnCloseCallback=F
end
function aw.OnDestroy(C,F)
aw.OnDestroyCallback=F
end

if av.WindUI.UseAcrylic then
aw.AcrylicPaint.AddParent(aw.UIElements.Main)
end

function aw.SetIconSize(C,F)
local G
if typeof(F)=="number"then
G=UDim2.new(0,F,0,F)
aw.IconSize=F
elseif typeof(F)=="UDim2"then
G=F
aw.IconSize=F.X.Offset
end

if v then
v.Size=G
end
end

function aw.Open(C)
if aw.Destroyed then
return
end
task.spawn(function()
if aw.OnOpenCallback then
task.spawn(function()
an.SafeCallback(aw.OnOpenCallback)
end)
end

task.wait(0.06)
aw.Closed=false

aw.UIElements.Main.Size=UDim2.new(aw.Size.X.Scale,aw.Size.X.Offset,0,100)

ap(aw.UIElements.Main,0.8,{

Size=aw.Size,
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()

if aw.UIElements.BackgroundGradient then
ap(aw.UIElements.BackgroundGradient,0.2,{
ImageTransparency=0,
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end

aw.UIElements.Main.Background.ImageTransparency=1
ap(aw.UIElements.Main.Background,0.4,{

ImageTransparency=aw.Transparent and av.WindUI.TransparencyValue or 0,
},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()

if i then
if i:IsA"VideoFrame"then
i.Visible=true
else
ap(i,0.2,{
ImageTransparency=aw.BackgroundImageTransparency,
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end
end

if aw.OpenButtonMain and aw.IsOpenButtonEnabled then
aw.OpenButtonMain:Visible(false)
end









ap(
b,
0.25,
{ImageTransparency=aw.ShadowTransparency},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()




ap(
r,
0.45,
{Size=UDim2.new(0,aw.DragFrameSize,0,4),ImageTransparency=0.8},
Enum.EasingStyle.Exponential,
Enum.EasingDirection.Out
):Play()
z:Set(true)

if aw.Resizable then
ap(
az.ImageLabel,
0.45,
{ImageTransparency=0.8},
Enum.EasingStyle.Exponential,
Enum.EasingDirection.Out
):Play()
aw.CanResize=true
end

aw.CanDropdown=true
aw.UIElements.Main.Visible=true



aw.UIElements.Main:WaitForChild"Main".Visible=true

av.WindUI:ToggleAcrylic(true)

end)
end
function aw.Close(C)
if aw.Destroyed then
return
end

local F={}

if aw.OnCloseCallback then
task.spawn(function()
an.SafeCallback(aw.OnCloseCallback)
end)
end

av.WindUI:ToggleAcrylic(false)

if aw.UIElements.Main and aw.UIElements.Main:WaitForChild"Main"then
aw.UIElements.Main.Main.Visible=false
end

aw.CanDropdown=false
aw.Closed=true

ap(aw.UIElements.Main,0.9,{

Size=UDim2.new(aw.Size.X.Scale,aw.Size.X.Offset,0,0),
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
if aw.UIElements.BackgroundGradient then
ap(aw.UIElements.BackgroundGradient,0.2,{
ImageTransparency=1,
},Enum.EasingStyle.Quint,Enum.EasingDirection.InOut):Play()
end

ap(aw.UIElements.Main.Background,0.3,{

ImageTransparency=1,
},Enum.EasingStyle.Exponential,Enum.EasingDirection.InOut):Play()








if i then
if i:IsA"VideoFrame"then
i.Visible=false
else
ap(i,0.3,{
ImageTransparency=1,
},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
end
end
ap(b,0.25,{ImageTransparency=1},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()




ap(
r,
0.3,
{Size=UDim2.new(0,0,0,4),ImageTransparency=1},
Enum.EasingStyle.Exponential,
Enum.EasingDirection.InOut
):Play()
ap(
az.ImageLabel,
0.3,
{ImageTransparency=1},
Enum.EasingStyle.Exponential,
Enum.EasingDirection.Out
):Play()
z:Set(false)
aw.CanResize=false

task.spawn(function()
task.wait(0.4)

if not aw.Closed then
return
end

aw.UIElements.Main.Visible=false

if aw.OpenButtonMain and not aw.Destroyed and not aw.IsPC and aw.IsOpenButtonEnabled then
aw.OpenButtonMain:Visible(true)
end
end)

function F.Destroy(G)
task.spawn(function()
if aw.OnDestroyCallback then
task.spawn(function()
an.SafeCallback(aw.OnDestroyCallback)
end)
end

if aw.AcrylicPaint and aw.AcrylicPaint.Model then
aw.AcrylicPaint.Model:Destroy()
end

aw.Destroyed=true

task.wait(0.4)

av.WindUI.ScreenGui:Destroy()
av.WindUI.NotificationGui:Destroy()
av.WindUI.DropdownGui:Destroy()
av.WindUI.TooltipGui:Destroy()

an.DisconnectAll()

return
end)
end

return F
end
function aw.Destroy(C)
return aw:Close():Destroy()
end
function aw.Toggle(C)
if aw.Closed then
aw:Open()
else
aw:Close()
end
end

function aw.ToggleTransparency(C,F)

aw.Transparent=F
av.WindUI.Transparent=F

aw.UIElements.Main.Background.ImageTransparency=F and av.WindUI.TransparencyValue or 0


end

function aw.LockAll(C)
for F,G in next,aw.AllElements do
if G.Lock then
G:Lock()
end
end
end
function aw.UnlockAll(C)
for F,G in next,aw.AllElements do
if G.Unlock then
G:Unlock()
end
end
end
function aw.GetLocked(C)
local F={}

for G,H in next,aw.AllElements do
if H.Locked then
table.insert(F,H)
end
end

return F
end
function aw.GetUnlocked(C)
local F={}

for G,H in next,aw.AllElements do
if H.Locked==false then
table.insert(F,H)
end
end

return F
end

function aw.GetUIScale(C,F)
return av.WindUI.UIScale
end

function aw.SetUIScale(C,F)
av.WindUI.UIScale=F
ap(av.WindUI.UIScaleObj,0.2,{Scale=F},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
return aw
end

function aw.SetToTheCenter(C)
ap(
aw.UIElements.Main,
0.45,
{Position=UDim2.new(0.5,0,0.5,0)},
Enum.EasingStyle.Quint,
Enum.EasingDirection.Out
):Play()
return aw
end

function aw.SetCurrentConfig(C,F)
aw.CurrentConfig=F
end

do
local C=40
local F=al.ViewportSize
local G=Vector2.new(aw.Size.X.Offset,aw.Size.Y.Offset)

if not aw.IsFullscreen and aw.AutoScale then
local H=F.X-(C*2)
local J=F.Y-(C*2)

local L=H/G.X
local M=J/G.Y

local N=math.min(L,M)

local O=0.3
local P=1.0

local Q=math.clamp(N,O,P)

local R=aw:GetUIScale()or 1
local S=0.05

if math.abs(Q-R)>S then
aw:SetUIScale(Q)
end
end
end

if aw.OpenButtonMain and aw.OpenButtonMain.Button then
an.AddSignal(aw.OpenButtonMain.Button.TextButton.MouseButton1Click,function()


aw:Open()
end)
end

an.AddSignal(af.InputBegan,function(C,F)
if F then
return
end

if aw.ToggleKey then
if C.KeyCode==aw.ToggleKey then
aw:Toggle()
end
end
end)

task.spawn(function()

aw:Open()
end)

function aw.EditOpenButton(C,F)
return aw.OpenButtonMain:Edit(F)
end

if aw.OpenButton and typeof(aw.OpenButton)=="table"then
aw:EditOpenButton(aw.OpenButton)
end

local C=a.load'aa'
local F=a.load'ab'
local G=C.Init(aw,av.WindUI,av.WindUI.TooltipGui)
G:OnChange(function(H)
aw.CurrentTab=H
end)

aw.TabModule=G

function aw.Tab(H,J)
J.Parent=aw.UIElements.SideBar.Frame
return G.New(J,av.WindUI.UIScale)
end

function aw.SelectTab(H,J)
G:SelectTab(J)
end

function aw.Section(H,J)
return F.New(
J,
aw.UIElements.SideBar.Frame,
aw.Folder,
av.WindUI.UIScale,
aw
)
end

function aw.IsResizable(H,J)
aw.Resizable=J
aw.CanResize=J
end

function aw.SetPanelBackground(H,J)
if typeof(J)=="boolean"then
aw.HidePanelBackground=J

aw.UIElements.MainBar.Background.Visible=J

if G then
for L,M in next,G.Containers do
M.ScrollingFrame.UIPadding.PaddingTop=UDim.new(0,aw.HidePanelBackground and 20 or 10)
M.ScrollingFrame.UIPadding.PaddingLeft=
UDim.new(0,aw.HidePanelBackground and 20 or 10)
M.ScrollingFrame.UIPadding.PaddingRight=
UDim.new(0,aw.HidePanelBackground and 20 or 10)
M.ScrollingFrame.UIPadding.PaddingBottom=
UDim.new(0,aw.HidePanelBackground and 20 or 10)
end
end
end
end

function aw.Divider(H)
local J=ao("Frame",{
Size=UDim2.new(1,0,0,1),
Position=UDim2.new(0.5,0,0,0),
AnchorPoint=Vector2.new(0.5,0),
BackgroundTransparency=0.9,
ThemeTag={
BackgroundColor3="Text",
},
})
local L=ao("Frame",{
Parent=aw.UIElements.SideBar.Frame,

Size=UDim2.new(1,-7,0,5),
BackgroundTransparency=1,
},{
J,
})

return L
end

local H=a.load'o'
function aw.Dialog(J,L)
local M={
Title=L.Title or"Dialog",
Width=L.Width or 320,
Content=L.Content,
Buttons=L.Buttons or{},

TextPadding=14,
}
local N=H.Create(false,"Dialog",aw,av.WindUI,aw.UIElements.Main.Main)

N.UIElements.Main.Size=UDim2.new(0,M.Width,0,0)

local O=ao("Frame",{
Size=UDim2.new(1,0,1,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Parent=N.UIElements.Main,
},{
ao("UIListLayout",{
FillDirection="Vertical",

Padding=UDim.new(0,N.UIPadding),
}),
})

local P=ao("Frame",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Parent=O,
},{
ao("UIListLayout",{
FillDirection="Horizontal",
Padding=UDim.new(0,N.UIPadding),
VerticalAlignment="Center",
}),
ao("UIPadding",{
PaddingTop=UDim.new(0,M.TextPadding/2),
PaddingLeft=UDim.new(0,M.TextPadding/2),
PaddingRight=UDim.new(0,M.TextPadding/2),
}),
})

local Q
if L.Icon then
Q=an.Image(
L.Icon,
M.Title..":"..L.Icon,
0,
aw,
"Dialog",
true,
L.IconThemed
)
Q.Size=UDim2.new(0,22,0,22)
Q.Parent=P
end

N.UIElements.UIListLayout=ao("UIListLayout",{
Padding=UDim.new(0,12),
FillDirection="Vertical",
HorizontalAlignment="Left",
VerticalFlex="SpaceBetween",
Parent=N.UIElements.Main,
})

ao("UISizeConstraint",{
MinSize=Vector2.new(180,20),
MaxSize=Vector2.new(400,math.huge),
Parent=N.UIElements.Main,
})

N.UIElements.Title=ao("TextLabel",{
Text=M.Title,
TextSize=20,
FontFace=Font.new(an.Font,Enum.FontWeight.SemiBold),
TextXAlignment="Left",
TextWrapped=true,
RichText=true,
Size=UDim2.new(1,Q and-26-N.UIPadding or 0,0,0),
AutomaticSize="Y",
ThemeTag={
TextColor3="Text",
},
BackgroundTransparency=1,
Parent=P,
})
if M.Content then
ao("TextLabel",{
Text=M.Content,
TextSize=18,
TextTransparency=0.4,
TextWrapped=true,
RichText=true,
FontFace=Font.new(an.Font,Enum.FontWeight.Medium),
TextXAlignment="Left",
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
LayoutOrder=2,
ThemeTag={
TextColor3="Text",
},
BackgroundTransparency=1,
Parent=O,
},{
ao("UIPadding",{
PaddingLeft=UDim.new(0,M.TextPadding/2),
PaddingRight=UDim.new(0,M.TextPadding/2),
PaddingBottom=UDim.new(0,M.TextPadding/2),
}),
})
end

local R=ao("UIListLayout",{
Padding=UDim.new(0,6),
FillDirection="Horizontal",
HorizontalAlignment="Center",
HorizontalFlex="Fill",
})

local S=ao("Frame",{
Size=UDim2.new(1,0,0,36),
AutomaticSize="None",
BackgroundTransparency=1,
Parent=N.UIElements.Main,
LayoutOrder=4,
},{
R,






})

local T={}

for U,V in next,M.Buttons do
local W=
ar(V.Title,V.Icon,V.Callback,V.Variant,S,N,true)
table.insert(T,W)
W.Size=UDim2.new(1,0,1,0)
end





















































N:Open()

return N
end

local J=false

aw:CreateTopbarButton("Close","x",function()
if not J then
if not aw.IgnoreAlerts then
J=true

aw:Dialog{

Title="Close Window",
Content="Do you want to close this window? You will not be able to open it again.",
Buttons={
{
Title="Cancel",

Callback=function()
J=false
end,
Variant="Secondary",
},
{
Title="Close Window",

Callback=function()
J=false
aw:Destroy()
end,
Variant="Primary",
},
},
}
else
aw:Destroy()
end
end
end,(aw.Topbar.ButtonsType=="Default"and 999 or 997),nil,Color3.fromHex"#F4695F")

function aw.Tag(L,M)
if aw.UIElements.Main.Main.Topbar.Center.Visible==false then
aw.UIElements.Main.Main.Topbar.Center.Visible=true
end
M.Window=aw
return at:New(M,aw.UIElements.Main.Main.Topbar.Center.Holder)
end

local L=av.WindUI.GenerateGUID()

local function startResizing(M)
if aw.CanResize then
isResizing=true
aA.Active=true
initialSize=aw.UIElements.Main.Size
initialInputPosition=M.Position


ap(az.ImageLabel,0.1,{ImageTransparency=0.35}):Play()

an.AddSignal(M.Changed,function()
if M.UserInputState==Enum.UserInputState.End then
if av.WindUI.CurrentInput and av.WindUI.CurrentInput~=L then
return
end

av.WindUI.CurrentInput=nil

isResizing=false
aA.Active=false


ap(az.ImageLabel,0.17,{ImageTransparency=0.8}):Play()
end
end)
end
end

an.AddSignal(az.InputBegan,function(M)
if
M.UserInputType==Enum.UserInputType.MouseButton1
or M.UserInputType==Enum.UserInputType.Touch
then
if av.WindUI.CurrentInput and av.WindUI.CurrentInput~=L then
return
end
av.WindUI.CurrentInput=L

if aw.CanResize then
startResizing(M)
end
end
end)

an.AddSignal(af.InputChanged,function(M)
if
M.UserInputType==Enum.UserInputType.MouseMovement
or M.UserInputType==Enum.UserInputType.Touch
then
if isResizing and aw.CanResize then
local N=M.Position-initialInputPosition
local O=UDim2.new(0,initialSize.X.Offset+N.X*2,0,initialSize.Y.Offset+N.Y*2)

O=UDim2.new(
O.X.Scale,
math.clamp(O.X.Offset,aw.MinSize.X,aw.MaxSize.X),
O.Y.Scale,
math.clamp(O.Y.Offset,aw.MinSize.Y,aw.MaxSize.Y)
)

ap(aw.UIElements.Main,0.08,{
Size=O,
},Enum.EasingStyle.Quad,Enum.EasingDirection.Out):Play()

aw.Size=O
end
end
end)

an.AddSignal(az.MouseEnter,function()
if av.WindUI.CurrentInput and av.WindUI.CurrentInput~=L then
return
end
if not isResizing then
ap(az.ImageLabel,0.1,{ImageTransparency=0.35}):Play()
end
end)
an.AddSignal(az.MouseLeave,function()
if av.WindUI.CurrentInput and av.WindUI.CurrentInput~=L then
return
end
if not isResizing then
ap(az.ImageLabel,0.17,{ImageTransparency=0.8}):Play()
end
end)



local M=0
local N=0.4
local O
local P=0

function onDoubleClick()
aw:SetToTheCenter()
end

an.AddSignal(r.Frame.MouseButton1Up,function()
local Q=tick()
local R=aw.Position

P=P+1

if P==1 then
M=Q
O=R

task.spawn(function()
task.wait(N)
if P==1 then
P=0
O=nil
end
end)
elseif P==2 then
if Q-M<=N and R==O then
onDoubleClick()
end

P=0
O=nil
M=0
else
P=1
M=Q
O=R
end
end)



if not aw.HideSearchBar then
local Q=a.load'ad'
local R=false





















local S=aq("Search","search",aw.UIElements.SideBarContainer,true)
S.Size=UDim2.new(1,-aw.UIPadding/2,0,39)
S.Position=UDim2.new(0,aw.UIPadding/2,0,0)

an.AddSignal(S.MouseButton1Click,function()
if R then
return
end

Q.new(aw.TabModule,aw.UIElements.Main,function()

R=false
if aw.Resizable then
aw.CanResize=true
end

ap(aB,0.1,{ImageTransparency=1}):Play()
aB.Active=false
end)
ap(aB,0.1,{ImageTransparency=0.65}):Play()
aB.Active=true

R=true
aw.CanResize=false
end)
end



function aw.DisableTopbarButtons(Q,R)
for S,T in next,R do
for U,V in next,aw.TopBarButtons do
if V.Name==T then
V.Object.Visible=false
end
end
end
end



























return aw
end end end

local aa={
Window=nil,
Theme=nil,
Creator=a.load'd',
LocalizationModule=a.load'e',
NotificationModule=a.load'f',
Themes=nil,
Transparent=false,

TransparencyValue=0.15,

UIScale=1,

ConfigManager=nil,
Version="0.0.0",

Services=a.load'k',

OnThemeChangeFunction=nil,

cloneref=nil,
UIScaleObj=nil,

CreateWindow=nil,

CurrentInput=nil,
}

local af=(cloneref or clonereference or function(af)
return af
end)

aa.cloneref=af

local ai=af(game:GetService"HttpService")
local ak=af(game:GetService"Players")
local al=af(game:GetService"CoreGui")
local am=af(game:GetService"RunService")
local an=af(game:GetService"UserInputService")

function aa.GenerateGUID()
return ai:GenerateGUID(false)
end

local ao=aa.GenerateGUID()

an.InputBegan:Connect(function(ap,aq)




task.defer(function()
if
ap.UserInputType==Enum.UserInputType.MouseButton1
or ap.UserInputType==Enum.UserInputType.Touch
then
if aa.CurrentInput and aa.CurrentInput~=ao then
return
end

aa.CurrentInput=ao


end
end)
end)
an.InputEnded:Connect(function(ap,aq)
if ap.UserInputType==Enum.UserInputType.MouseButton1 or ap.UserInputType==Enum.UserInputType.Touch then
if aa.CurrentInput and aa.CurrentInput~=ao then
return
end

aa.CurrentInput=nil
end
end)

local ap=ak.LocalPlayer or nil

local aq=ai:JSONDecode(a.load'l')
if aq then
aa.Version=aq.version
end

local ar=a.load'p'

local as=aa.Creator

local at=as.New




local au=a.load't'

local av=protectgui or(syn and syn.protect_gui)or function()end

local aw=gethui and gethui()or(al or ap:WaitForChild"PlayerGui")

local ax=at("UIScale",{
Scale=aa.UIScale,
})

aa.UIScaleObj=ax

aa.ScreenGui=at("ScreenGui",{
Name="WindUI",
Parent=aw,
IgnoreGuiInset=true,
ScreenInsets="None",
DisplayOrder=-99999,
},{

at("Folder",{
Name="Window",
}),






at("Folder",{
Name="KeySystem",
}),
at("Folder",{
Name="Popups",
}),
at("Folder",{
Name="ToolTips",
}),
})

aa.NotificationGui=at("ScreenGui",{
Name="WindUI/Notifications",
Parent=aw,
IgnoreGuiInset=true,
})
aa.DropdownGui=at("ScreenGui",{
Name="WindUI/Dropdowns",
Parent=aw,
IgnoreGuiInset=true,
})
aa.TooltipGui=at("ScreenGui",{
Name="WindUI/Tooltips",
Parent=aw,
IgnoreGuiInset=true,
})
av(aa.ScreenGui)
av(aa.NotificationGui)
av(aa.DropdownGui)
av(aa.TooltipGui)

as.Init(aa)

function aa.SetParent(ay,az)
if aa.ScreenGui then
aa.ScreenGui.Parent=az
end
if aa.NotificationGui then
aa.NotificationGui.Parent=az
end
if aa.DropdownGui then
aa.DropdownGui.Parent=az
end
if aa.TooltipGui then
aa.TooltipGui.Parent=az
end
end
math.clamp(aa.TransparencyValue,0,1)

local ay=aa.NotificationModule.Init(aa.NotificationGui)

function aa.Notify(az,aA)
aA.Holder=ay.Frame
aA.Window=aa.Window

return aa.NotificationModule.New(aA)
end

function aa.SetNotificationLower(az,aA)
ay.SetLower(aA)
end

function aa.SetFont(az,aA)
as.UpdateFont(aA)
end

function aa.OnThemeChange(az,aA)
aa.OnThemeChangeFunction=aA
end

function aa.AddTheme(az,aA)
aa.Themes[aA.Name]=aA
return aA
end

function aa.SetTheme(az,aA)
if aa.Themes[aA]then
aa.Theme=aa.Themes[aA]
as.SetTheme(aa.Themes[aA])

if aa.OnThemeChangeFunction then
aa.OnThemeChangeFunction(aA)
end

return aa.Themes[aA]
end
return nil
end

function aa.GetThemes(az)
return aa.Themes
end
function aa.GetCurrentTheme(az)
return aa.Theme.Name
end
function aa.GetTransparency(az)
return aa.Transparent or false
end
function aa.GetWindowSize(az)
return aa.Window.UIElements.Main.Size
end
function aa.Localization(az,aA)
return aa.LocalizationModule:New(aA,as)
end

function aa.SetLanguage(az,aA)
if as.Localization then
return as.SetLanguage(aA)
end
return false
end

function aa.ToggleAcrylic(az,aA)
if aa.Window and aa.Window.AcrylicPaint and aa.Window.AcrylicPaint.Model then
aa.Window.Acrylic=aA
aa.Window.AcrylicPaint.Model.Transparency=aA and 0.98 or 1
if aA then
au.Enable()
else
au.Disable()
end
end
end

function aa.Gradient(az,aA,aB)
local b={}
local d={}

for f,g in next,aA do
local h=tonumber(f)
if h then
h=math.clamp(h/100,0,1)

local i=g.Color
if typeof(i)=="string"and string.sub(i,1,1)=="#"then
i=Color3.fromHex(i)
end

local l=g.Transparency or 0

table.insert(b,ColorSequenceKeypoint.new(h,i))
table.insert(d,NumberSequenceKeypoint.new(h,l))
end
end

table.sort(b,function(f,g)
return f.Time<g.Time
end)
table.sort(d,function(f,g)
return f.Time<g.Time
end)

if#b<2 then
table.insert(b,ColorSequenceKeypoint.new(1,b[1].Value))
table.insert(d,NumberSequenceKeypoint.new(1,d[1].Value))
end

local f={
Color=ColorSequence.new(b),
Transparency=NumberSequence.new(d),
}

if aB then
for g,h in pairs(aB)do
f[g]=h
end
end

return f
end

function aa.Popup(az,aA)
aA.WindUI=aa
return a.load'u'.new(aA,aa.ScreenGui.Popups)
end

aa.Themes=a.load'v'(aa,as)

as.Themes=aa.Themes

aa:SetTheme"Dark"
aa:SetLanguage(as.Language)

function aa.CreateWindow(az,aA)
local aB=a.load'ae'

if not am:IsStudio()and writefile then
if not isfolder"WindUI"then
makefolder"WindUI"
end
if aA.Folder then
makefolder(aA.Folder)
else
makefolder(aA.Title)
end
end

aA.WindUI=aa
aA.Window=aa.Window
aA.Parent=aa.ScreenGui.Window

if aa.Window then
warn"You cannot create more than one window"
return
end

local b=true

local d=aa.Themes[aA.Theme or"Dark"]


as.SetTheme(d)

local f=gethwid or function()
return ak.LocalPlayer.UserId
end

local g=f()

if aA.KeySystem then
b=false

local function loadKeysystem()
ar.new(aA,g,function(h)
b=h
end)
end

local h=(aA.Folder or"Temp").."/"..g..".key"

if aA.KeySystem.KeyValidator then
if aA.KeySystem.SaveKey and isfile(h)then
local i=readfile(h)
local l=aA.KeySystem.KeyValidator(i)

if l then
b=true
else
loadKeysystem()
end
else
loadKeysystem()
end
elseif not aA.KeySystem.API then
if aA.KeySystem.SaveKey and isfile(h)then
local i=readfile(h)
local l=(type(aA.KeySystem.Key)=="table")and table.find(aA.KeySystem.Key,i)
or tostring(aA.KeySystem.Key)==tostring(i)

if l then
b=true
else
loadKeysystem()
end
else
loadKeysystem()
end
else
if isfile(h)then
local i=readfile(h)
local l=false

for m,p in next,aA.KeySystem.API do
local r=aa.Services[p.Type]
if r then
local u={}
for v,x in next,r.Args do
table.insert(u,p[x])
end

local v=r.New(table.unpack(u))
local x=v.Verify(i)
if x then
l=true
break
end
end
end

b=l
if not l then
loadKeysystem()
end
else
loadKeysystem()
end
end

repeat
task.wait()
until b
end

local h=aB(aA)

aa.Transparent=aA.Transparent
aa.Window=h

if aA.Acrylic then
au.init()
end













return h
end

return aa]========], "WindUI_1_6_65"))()
-- WindUI compatibility surface for existing KoreanHub callbacks.
local bridge={Windows={},ThemeNames={'Dark','Light','Rose','Plant','Red','Indigo','Sky','Violet','Amber','Emerald','Midnight','Crimson','Monokai Pro','Cotton Candy','Mellowsi','Rainbow'}}
local themeKeys={};for key,value in pairs(WindUI:GetThemes())do themeKeys[value.Name]=key end
local unloadHooks={};local nativeWindow;local themePath;local stopped=false
function bridge:SetTheme(name)
 local key=themeKeys[name] or name
 if not WindUI:GetThemes()[key] then key='Dark' end
 WindUI:SetTheme(key)
 if themePath and type(writefile)=='function' then pcall(writefile,themePath,key)end
end
function bridge:GetThemeName()
 local key=WindUI:GetCurrentTheme();return (WindUI:GetThemes()[key] or {}).Name or key
end
function bridge:Notify(d)return WindUI:Notify({Title=d.Title,Content=d.Content,Duration=d.Duration or 4})end
local function fireUnload()
 if stopped then return end;stopped=true
 for _,fn in ipairs(unloadHooks)do pcall(fn)end
end
function bridge:OnUnload(fn)table.insert(unloadHooks,fn)end
function bridge:Unload()
 if stopped then return end
 fireUnload();if nativeWindow then nativeWindow:Destroy()end
end
local function copy(v)
 if type(v)~='table' then return v end
 local out={};for i,x in ipairs(v)do out[i]=x end;return out
end
local function equal(a,b)
 if type(a)~='table' or type(b)~='table' then return a==b end
 if #a~=#b then return false end
 for i,v in ipairs(a)do if v~=b[i]then return false end end
 return true
end
local function group(tab)
 local out={}
 function out:Paragraph(d)
  local title,content=d.Title or '',d.Content or ''
  local raw=tab:Paragraph({Title=title,Desc=content})
  local item={Raw=raw}
  function item:Set(v)
   if type(v)~='table' then v={Content=tostring(v)}end
   if v.Title~=nil and v.Title~=title then title=v.Title;raw:SetTitle(title)end
   if v.Content~=nil and v.Content~=content then content=v.Content;raw:SetDesc(content)end
  end
  function item:SetContent(v)self:Set({Content=v})end
  return item
 end
 function out:Button(d)return tab:Button({Title=d.Title,Callback=d.Callback})end
 for _,kind in ipairs({'Toggle','Slider','Dropdown','Input','ColorPicker'})do
  out[kind]=function(_,d)
   local current=copy(d.DefaultColor or d.Default);local raw
   local item={};local muted=false
   local function changed(value,...)
    if kind=='Slider' then value=tonumber(value) or current end
    if equal(current,value)then return end
    current=copy(value)
    if not muted and d.Callback then d.Callback(value,...)end
   end
   local def={Title=d.Title,Callback=changed,Flag=d.Flag}
   if kind=='Toggle' then def.Value=d.Default==true;current=def.Value;raw=tab:Toggle(def)
   elseif kind=='Slider' then
    def.Value={Min=d.Min,Max=d.Max,Default=d.Default};def.Step=d.Step or 1;raw=tab:Slider(def)
   elseif kind=='Dropdown' then
    def.Values=d.Values or {};def.Multi=d.Multi==true;def.AllowNone=d.AllowNone~=false;def.Value=d.Default
    raw=tab:Dropdown(def)
   elseif kind=='Input' then
    def.Value=d.Default or '';current=def.Value;def.Placeholder=d.Placeholder;def.ClearTextOnFocus=false
    raw=tab:Input(def)
   else def.Default=d.DefaultColor or d.Default;raw=tab:Colorpicker(def)end
   function item:Set(value,silent)
    local previous=current
    -- Update before native Set so asynchronously dispatched native callbacks are deduplicated.
    current=copy(value);muted=true
    local ok,err=pcall(function()
     if kind=='Dropdown' then raw:Select(value)else raw:Set(value)end
    end)
    muted=false
    if not ok then current=previous;error(err)end
    if not silent and not equal(previous,value) and d.Callback then d.Callback(value)end
   end
   function item:Get()return copy(current)end
   function item:Refresh(values,keep)
    local value=copy(current)
    if keep==false then value=d.Multi and {} or nil end
    if kind=='Dropdown' then
     -- Refresh may dispatch a callback: guard it with the selected value.
     current=copy(value);raw:Refresh(values);raw:Select(value)
    end
   end
   item.Raw=raw
   return item
  end
 end
 return out
end
function bridge:CreateWindow(d)
 local folder=d.Folder or 'KoreanHubWindUI'
 themePath=folder..'_WindTheme.txt'
 local theme='Dark'
 if type(readfile)=='function' then
  local ok,value=pcall(readfile,themePath)
  if ok and WindUI:GetThemes()[value] then theme=value end
 end
 local native=WindUI:CreateWindow({Title=d.Title,Author=d.Subtitle or 'KoreanHub',Folder=folder,
  Size=d.Size or UDim2.fromOffset(680,460),MinSize=Vector2.new(380,280),
  Theme=theme,Acrylic=false,Transparent=false,NewElements=true,AutoScale=true,
  ScrollBarEnabled=true,SideBarWidth=170,HideSearchBar=false,Resizable=true})
 assert(native,'WindUI 창 생성 실패');nativeWindow=native
 for _,field in ipairs({'ScreenGui','NotificationGui','DropdownGui','TooltipGui'})do
  local gui=WindUI[field]
  if gui then gui.Name=field=='ScreenGui' and (d.GuiName or 'KoreanHubWindUI') or ('Rayfield_'..(d.GuiName or 'KoreanHubWindUI')..'_'..field) end
 end
 local w={Config={AutoSave=false},Visible=true,Raw=native,Overlays={}}
 function w.Overlays:SetWatermark()end
 function w.Overlays:SetKeybindList()end
 function w:SetBlur()end -- Acrylic is disabled at construction.
 function w:SetFitScreen(value)
  native.AutoScale=value~=false
  if value then
   local cam=workspace.CurrentCamera
   if cam then local vp=cam.ViewportSize;native:SetSize(UDim2.fromOffset(math.min(700,math.max(380,vp.X-36)),math.min(480,math.max(280,vp.Y-56))))end
  end
 end
 function w:SetScale(value)native:SetUIScale(math.clamp(value,.5,1.5))end
 function w:SetVisible(value)
  if value then native:Open()else native:Close()end
  self.Visible=value
 end
 function w:Toggle()self:SetVisible(not self.Visible)end
 function w:Unload()bridge:Unload()end
 native:OnOpen(function()w.Visible=true end)
 native:OnClose(function()w.Visible=false end)
 native:OnDestroy(fireUnload)
 local firstTab
 function w:Tab(t)
  local tab=native:Tab({Title=t.Title,Icon=t.Icon})
  if not firstTab then firstTab=tab;tab:Select()end
  local wrap={Raw=tab}
  function wrap:Section(def)
   tab:Section({Title=def.Title or '',TextSize=18})
   return group(tab)
  end
  return wrap
 end
 table.insert(self.Windows,w)
 if d.GuiName~='KoreanHubUniversalOasis' then
  task.defer(function()
   if stopped then return end
   local tab=native:Tab({Title='테마 / UI',Icon='palette'})
   local g=group(tab)
   local selector=g:Dropdown({Title='테마 선택',Values=bridge.ThemeNames,Default=bridge:GetThemeName(),Callback=function(v)bridge:SetTheme(v)end})
   g:Button({Title='Dark 테마로 초기화',Callback=function()selector:Set('Dark')end})
   g:Slider({Title='UI 크기 (%)',Min=50,Max=125,Step=5,Default=100,Callback=function(v)w:SetScale(v/100)end})
   g:Button({Title='화면에 맞추기',Callback=function()w:SetScale(1);w:SetFitScreen(true)end})
  end)
 end
 return w
end
return bridge
]====]))()
local api={Flags={}};local native;local serial=0;local config;local loading=false;local saveSerial=0
local function list(v)if type(v)=='table'then return v end;return v and {v}or{}end
local function scheduleSave()
 if not config or loading or not config.Enabled or type(writefile)~='function'then return end
 saveSerial=saveSerial+1;local token=saveSerial
 task.delay(.5,function()if token==saveSerial then pcall(function()api:SaveConfiguration()end)end end)
end
function api:Notify(d)return UI:Notify(d)end
function api:Destroy()UI:Unload()end
function api:CreateWindow(d)
 config=d.ConfigurationSaving
 native=UI:CreateWindow({Title=d.Name,Subtitle='WindUI',GuiName='RayfieldWordStackWindUI',Folder='WordStackHub',Size=UDim2.fromOffset(680,460)})
 native:SetFitScreen(true)
 local window={}
 function window:CreateTab(name)
  local tab=native:Tab({Title=name});local sec=tab:Section({Title=name});local facade={}
  function facade:CreateSection(title)sec=tab:Section({Title=title})end
  function facade:CreateParagraph(o)return sec:Paragraph(o)end
  function facade:CreateLabel(text)
   local p=sec:Paragraph({Content=text});return{Set=function(_,v)p:SetContent(tostring(v))end}
  end
  function facade:CreateButton(o)return sec:Button({Title=o.Name,Callback=o.Callback})end
  for _,kind in ipairs({'Toggle','Slider','Dropdown','Input','ColorPicker'})do
   facade['Create'..kind]=function(_,o)
    serial=serial+1;local id=o.Flag or name..'_'..serial
    local el={Type=kind};local def={Title=o.Name,Flag=id};local raw
    def.Callback=function(v)
     if kind=='Dropdown'then el.CurrentOption=list(v);v=el.CurrentOption
     elseif kind=='ColorPicker'then el.Color=v
     else el.CurrentValue=v end
     if o.Callback then o.Callback(v)end
     scheduleSave()
    end
    if kind=='Toggle'then def.Default=o.CurrentValue==true
    elseif kind=='Slider'then def.Default=o.CurrentValue;def.Min=o.Range[1];def.Max=o.Range[2];def.Step=o.Increment
    elseif kind=='Dropdown'then def.Values=o.Options;def.Multi=o.MultipleOptions==true;def.AllowNone=true;def.Default=def.Multi and list(o.CurrentOption)or list(o.CurrentOption)[1]
    elseif kind=='Input'then def.Default=o.CurrentValue or '';def.Placeholder=o.PlaceholderText;def.Live=false
    else def.Default=o.Color end
    el.CurrentValue=def.Default;el.CurrentOption=list(o.CurrentOption);el.Color=o.Color
    raw=sec[kind](sec,def)
    function el:Set(v)
     if kind=='Dropdown'then v=def.Multi and list(v)or list(v)[1]end
     raw:Set(v)
    end
    function el:Refresh(values,keep)raw:Refresh(values,keep)end
    el.Raw=raw;api.Flags[id]=el;return el
   end
  end
  return facade
 end
 return window
end
local function configPath()return (config.FolderName or 'WordStackHub')..'/'..(config.FileName or 'Settings')..'_WindUI.json'end
function api:SaveConfiguration()
 if not config or not config.Enabled or not writefile then return end
 if type(makefolder)=='function'then pcall(makefolder,config.FolderName or 'WordStackHub')end
 local values={}
 for key,e in pairs(self.Flags)do
  if e.Type=='ColorPicker'and e.Color then values[key]={R=e.Color.R,G=e.Color.G,B=e.Color.B}
  else values[key]=e.Type=='Dropdown'and e.CurrentOption or e.CurrentValue end
 end
 writefile(configPath(),game:GetService('HttpService'):JSONEncode(values))
end
function api:LoadConfiguration()
 if not config or not config.Enabled or type(readfile)~='function'then return end
 local ok,data=pcall(function()return game:GetService('HttpService'):JSONDecode(readfile(configPath()))end)
 if not ok or type(data)~='table'then return end
 loading=true
 for id,v in pairs(data)do local e=self.Flags[id];if e then pcall(function()e:Set(e.Type=='ColorPicker'and Color3.new(v.R,v.G,v.B)or v)end)end end
 loading=false
end
UI:OnUnload(function()
 session.active=false
 for _,connection in ipairs(session.connections or {})do connection:Disconnect()end
end)
return api

end)
if not ok or not Rayfield then session.active=false;return end
session.ui=Rayfield
local Players=game:GetService('Players')
local TextChatService=game:GetService('TextChatService')
local HttpService=game:GetService('HttpService')
local GuiService=game:GetService('GuiService')
local player=Players.LocalPlayer
local Window=Rayfield:CreateWindow({Name='한국 단어쌓기 Hub · build 49',LoadingTitle='Word Stack',
    LoadingSubtitle='WindUI',KeySystem=false,
    ConfigurationSaving={Enabled=true,FolderName='WordStackHub',FileName='Settings'}})
local BasicTab=Window:CreateTab('기본',4483362458)
local HunminTab=Window:CreateTab('훈민정음',4483362458)
local ChainTab=Window:CreateTab('끝말잇기',4483362458)
local SettingsTab=Window:CreateTab('설정',4483362458)
local Words=Window:CreateTab('단어 추가',4483362458)
local TopicsTab=Window:CreateTab('주제 관리',4483362458)
local function notify(title,msg)
    Rayfield:Notify({Title=title,Content=msg,Duration=4})
end
-- build25: explicit word corrections, also applied after loading saved words.
local familiarSets27={}
local function familiarKey27(name) return tostring(name):gsub('%s+',''):lower() end
local blockedBasicWords={['떡떡떡떡떡']=true,['떡국떡국떡']=true}
local weekdayWords={'월요일','화요일','수요일','목요일','금요일','토요일','일요일'}
local weekdaySet={}
for _,word in ipairs(weekdayWords) do weekdaySet[word]=true end
local function weekdayTopic(name)
    local key=tostring(name):gsub('%s+','')
    return key=='요일' or key=='일주일의요일' or key=='일주일요일'
end
-- build26: common names only for these two requested topics.
local commonTopicLists={
    music={'팝','발라드','힙합','재즈','록','댄스','클래식','트로트','알앤비','포크','레게','블루스'},
    bread={'초코소라빵','소보로빵','단팥빵','크림빵','슈크림빵','마늘빵','모닝빵','식빵','소시지빵','피자빵','초코빵','메론빵','소라빵','팥빵','꽈배기','도넛','베이글','크루아상','바게트','카스텔라','찐빵','호빵','고로케','모카빵','맘모스빵','옥수수빵','연유빵','밤식빵'},
}
local commonTopicSets={music={},bread={}}
for key,list in pairs(commonTopicLists) do for _,word in ipairs(list) do commonTopicSets[key][word]=true end end
local function commonTopicKey(name)
    local key=tostring(name):gsub('%s+','')
    if key=='음악장르' or key=='노래장르' or key=='음악의장르' then return 'music' end
    if key=='빵' or key=='빵종류' or key=='빵의종류' then return 'bread' end
end
-- Explicit user additions are independent of the built-in familiar-word filter.
-- build42: explicit additions imported from the supplied userWords section.
local wordDelete45={data={basic={},hunmin={},chain={},oneShot={}},text='',undo=nil}
local userWords40={["basic"]={["국내 섬"]={"격렬비열도"},["나무"]={"아카시아나무"},["아프리카"]={"사하라아랍민주공화국"},["세계 수도"]={"멕시코시티","부에노스아이레스"},["역대 대통령"]={"노무현"},["오세아니아"]={"미크로네시아연방"},["SNS"]={"카카오스토리","네이버카페"},["커피"]={"자바칩프라푸치노"},["우유"]={"마카다미아우유","피스타치오우유"},["포켓몬"]={"일레도리자드","땅을기는날개","날개치는머리"},["치즈"]={"고르곤졸라치즈"},["고기"]={"캥거루고기","고양이고기"},["영화 장르"]={"포스트아포칼립스","로맨스코미디"},["맛"]={"새콤달콤한맛","달짝지근한맛"},["음악 장르"]={"팝","발라드","클래식"},["유럽"]={"보스니아헤르체고비나"},["공휴일"]={"국회의원선거일"},["마인크래프트 몹"]={"위더스켈레톤","크리퍼","좀비"},["버섯"]={"접시껄껄이그물버섯"},["초중고 과목"]={"안전한생활","생활과윤리","제2외국어"},["무지개색"]={"빨간색","노란색","주황색","보라색"},["캠핑용품"]={"두루마리휴지"},["햄버거 재료"]={"홀그레인머스타드","참깨빵위에순쇠고기패티두장특뱔한소스양상추치즈피클양파까지"},["조선의 왕"]={"광해군","연산군","세종","정조","태종","문종"},["북아메리카"]={"세인트빈센트그레나딘"},["한국을 빛낸 100명의 위인들"]={"단군할아버지"},["포유류"]={"흰긴수염고래","대왕고래","돌고래","알락꼬리여우원숭이"},["무술과 격투기"]={"무에타이"},["떡"]={"무지개떡","가래떡"},["치킨"]={"후라이드참잘하는집"},["구기종목"]={"아이스하키"},["한식"]={"김치볶음밥"},["마라탕 재료"]={"목이버섯","느타리버섯"},["군사 계급"]={"일등병","이등병"},["튀김"]={"아이스크림튀김","아스파라거스튀김"},["김치"]={"샤인머스켓김치"},["국밥"]={"소고기국밥"},["중국집"]={"사천탕수육","미니탕수육"},["욕실 용품"]={"트리트먼트"},["피자 토핑"]={"고르곤졸라치즈"},["분식"]={"피카츄돈까스"},["남아메리카"]={"프랑스령기아나"},["탈것"]={"인라인스케이트"}},["oneShot"]={"나이오븀","기동돓","수갏","수탉","아스코르브산나트륨","사이클로헥실설파민산나트륨","기쁨","아픔","개울녘","가녘","동녘","남녘","화뎬","수제비태껸","수산화나트륨","카드뮴","알루미늄","자리낏","마이크로모듈"},["chain"]={"뎬무","늬굽"},["hunmin"]={"고의","거의","아니","언니","안녕","아나","이니","아노","도의","다우","다운","도이","도위","도어","대어","도아","도움","두구","도구","당구","총총","보우","부어","보아","로추","리치","리채"}}
local userAllowed40={}
local function userKey40(category)
    local key=tostring(category):gsub('[%s%p]','')
    if key=='부족수' or key=='부족수1100' or key=='1100부족수' then return 'deficient:1-100' end
    local common=commonTopicKey(category)
    return common and ('common:'..common) or familiarKey27(category)
end
function wordDelete45.bucket(mode,category,style,create)
    if mode=='기본' then
        local key=userKey40(category)
        if create and not wordDelete45.data.basic[key] then wordDelete45.data.basic[key]={} end
        return wordDelete45.data.basic[key]
    end
    local key=mode=='훈민정음' and 'hunmin' or (style=='한방 단어' and 'oneShot' or 'chain')
    return wordDelete45.data[key]
end
function wordDelete45.blocked(mode,category,word,style)
    local bucket=wordDelete45.bucket(mode,category,style,false)
    return bucket and bucket[word]==true or false
end
function wordDelete45.apply(all)
    for category,list in pairs(all) do
        local mode=category=='훈민정음' and '훈민정음'
            or ((category=='끝말잇기' or category=='한방 단어') and '끝말잇기') or '기본'
        local style=category=='한방 단어' and '한방 단어' or '흔한 단어'
        for i=#list,1,-1 do
            if wordDelete45.blocked(mode,category,list[i],style) then table.remove(list,i) end
        end
    end
end

local function validUserText40(word)
    if type(word)~='string' then return false end
    local ok,length=pcall(utf8.len,word)
    return ok and length and length>=1 and length<=40 and not word:find('%c')
        and not blockedBasicWords[word]
end
local function rememberBasic40(category,word)
    if type(category)~='string' or not validUserText40(word) then return false end
    if weekdayTopic(category) and not weekdaySet[word] then return false end
    local key=userKey40(category)
    local removed=wordDelete45.data.basic[key];if removed then removed[word]=nil end
    userAllowed40[key]=userAllowed40[key] or {}
    userAllowed40[key][word]=true
    local list=userWords40.basic[category] or {}
    userWords40.basic[category]=list
    for _,old in ipairs(list) do if old==word then return true end end
    list[#list+1]=word
    return true
end
-- Index embedded additions before familiar-word filtering runs.
for category,words in pairs(userWords40.basic) do
    for _,word in ipairs(words) do rememberBasic40(category,word) end
end
local useAllWords36=false
local function permittedBasicWord(category,word)
    if wordDelete45.blocked('기본',category,word) then return false end
    local custom=userAllowed40[userKey40(category)]
    if custom and custom[word] then return not blockedBasicWords[word] end
    local common=commonTopicKey(category)
    local familiar=familiarSets27[familiarKey27(category)]
    return (not familiar or useAllWords36 or familiar[word]==true) and not blockedBasicWords[word] and (not weekdayTopic(category) or weekdaySet[word]==true)
        and (not common or commonTopicSets[common][word]==true)
end
local bank={
    ['오대양']={'태평양','대서양','인도양','북극해','남극해'},
    ['SNS']={'블로그','인스타그램','페이스북','트위터','유튜브','틱톡','카카오톡','텔레그램','스레드','디스코드'},
    ['아프리카']={'이집트','나이지리아','케냐','모로코','남아프리카공화국','에티오피아','탄자니아','사하라사막','세렝게티','킬리만자로'},
    ['육하원칙']={'누가','언제','어디서','무엇을','어떻게','왜'},
    ['현악기']={'바이올린','비올라','첼로','콘트라베이스','하프','기타','가야금','거문고','우쿨렐레'},
    ['분식']={'김밥','떡볶이','순대','어묵','라면','튀김','쫄면','떡꼬치','핫도그','라볶이'},
    ['버섯']={'표고버섯','팽이버섯','느타리버섯','양송이버섯','송이버섯','새송이버섯','목이버섯'},
    ['태양계의 행성과 위성']={'수성','금성','지구','화성','목성','토성','천왕성','해왕성','달','타이탄','유로파'},
    ['태양계 행성과 위성']={'수성','금성','지구','화성','목성','토성','천왕성','해왕성','달','타이탄','유로파'},
    ['동물']={'개','고양이','사자','호랑이','코끼리','고슴도치','하마','기린','다람쥐','청설모','바다표범','하늘다람쥐','아프리카코끼리'},
    ['음식']={'밥','김밥','비빔밥','불고기','떡볶이','김치찌개','된장찌개','해물파전','닭볶음탕','제육볶음','잡채','카레라이스','참치김치찌개'},
    ['과일']={'배','사과','바나나','포도','수박','딸기','복숭아','파인애플','블루베리','자몽','석류','한라봉','아보카도'},
    ['나라']={'한국','일본','중국','독일','프랑스','이탈리아','캐나다','아르헨티나','오스트레일리아','뉴질랜드','싱가포르','네덜란드','인도네시아'},
    ['직업']={'의사','교사','간호사','소방관','경찰관','요리사','건축가','프로그래머','우주비행사','환경미화원','사회복지사','물리치료사'},
    ['운동']={'축구','야구','농구','탁구','배구','배드민턴','태권도','스케이트보드','스포츠클라이밍','리듬체조','수영','양궁'},
    ['식물']={'꽃','소나무','대나무','해바라기','민들레','장미','무궁화','은행나무','벚나무','단풍나무','고사리','호박'},
    ['물건']={'책','의자','책상','연필','지우개','가방','스마트폰','손전등','전기자동차','에어컨','냉장고','전자레인지','무선이어폰'},
}
-- The topic names below were visible in the supplied gameplay; words are candidates.
local extra={
    ['SNS']={'카카오스토리','네이버밴드','핀터레스트','레딧','링크드인','스냅챗','왓츠앱','라인','위챗','마스토돈','블루스카이'},
    ['아프리카']={'가나','가봉','감비아','기니','남수단','니제르','르완다','리비아','말리','세네갈','수단','알제리','우간다','잠비아','짐바브웨','카메룬','코트디부아르','튀니지','마다가스카르','모리셔스','사하라아랍민주공화국'},
    ['현악기']={'바이올린','만돌린','밴조','첼로','해금','아쟁','양금','사랑기','일렉트릭기타','베이스기타','통기타','클래식기타','일렉트릭바이올린'},
    ['분식']={'치즈떡볶이','국물떡볶이','짜장떡볶이','떡튀순','김말이','오징어튀김','고구마튀김','야채튀김','잔치국수','비빔국수','치즈김밥','참치김밥','라면땅','피카츄돈까스'},
    ['버섯']={'영지버섯','능이버섯','싸리버섯','노루궁뎅이버섯','황금팽이버섯','잔나비걸상버섯','상황버섯','석이버섯','초버섯','접시껄껄이그물버섯'},
    ['태양계의 행성과 위성']={'이오','가니메데','칼리스토','엔셀라두스','트리톤','포보스','데이모스','미마스','레아','이아페투스','오베론','타이타니아','미란다'},
    ['태양계 행성과 위성']={'이오','가니메데','칼리스토','엔셀라두스','트리톤','포보스','데이모스','미마스','레아','이아페투스','오베론','타이타니아','미란다'},
    ['포유류']={'알락꼬리여우원숭이'},
    ['햄버거']={'참깨빵위에순쇠고기패티두장특뱔한소스양상추치즈피클양파까지','홀그레인머스타드'},
    ['피자 토핑']={'고르곤졸라치즈'},
    ['섬']={'고군산군도','격렬비열도'},
    ['도시']={'서귀포','동두천','의정부','남양주'},
    ['공항']={'김해국제공항','인천국제공항','청주국제','양양국제','무안국제','대구국제'},
    ['커피']={'아이스아메리카노','자바칩프라푸치노'},
    ['영화 장르']={'포스트 아포칼립스'},
    ['욕실 용품']={'목욕하는빈에이수스사칠'},
    ['캠핑용품']={'두루마리휴지'},
    ['나무']={'아카시아나무'},
    ['자동차브랜드']={'롤스로이스','람보르기니','애스턴마틴'},
    ['한식']={'바지락칼국수','들기름막국수'},
    ['과목']={'생활과윤리','진로와직업','안전한생활','윤리와사상','확률과통계','제2외국어'},
    ['초중고 과목']={'국어','영어','수학','과학','사회','역사','음악','미술','체육','기술가정','생활과윤리','윤리와사상','확률과통계','진로와직업'},
    ['음악 장르']={'팝','발라드','힙합','재즈','록','댄스','클래식','트로트','알앤비','포크','레게','블루스'},
    ['OECD 국가']={'한국','일본','미국','캐나다','영국','프랑스','독일','이탈리아','스페인','포르투갈','네덜란드','벨기에','스위스','스웨덴','덴마크','노르웨이','핀란드','오스트레일리아','뉴질랜드','멕시코','칠레','콜롬비아','코스타리카'},
    ['태양계']={'오우무아무아','에피메테우스'},
    ['타악기']={'글라스하모니카'},
    ['관악기']={'베이스클라리넷'},
    ['고기']={'뉴트리아고기'},
    ['초밥']={'갑오징어초밥','캘리포니아롤'},
    ['탄생석']={'다이아몬드','아쿠아마린'},
    ['포켓몬']={'일레도리자드','땅을기는날개'},
    ['무술과 격투기']={'종합격투기','크라브마가'},
    ['화폐 단위']={'볼리비아노'},
    ['조개']={'배좀벌레조개'},
    ['소스']={'홀랜다이즈소스'},
    ['치즈']={'파르미지아노레지아노치즈'},
    ['치킨집']={'기영이숯불두마리치킨'},
    ['생선']={'노랑가오리','전기가오리'},
    ['하계']={'트라이애슬론'},
    ['동계']={'크로스컨트리스키'},
    ['구기종목']={'아이스하키','비치발리볼','세팍타크로'},
    ['공휴일']={'국회의원선거일'},
    ['맛']={'새콤달콤한맛','매콤달콤한맛','달짝지근한맛'},
    ['주기율표']={'아인슈타이늄','프로트악티늄','프라세오디뮴'},
    ['김치']={'샤인머스켓김치'},
    ['학용품']={'화이트보드마카'},
    ['별자리']={'카시오페이아자리'},
    ['튀김']={'아스파라거스튀김'},
    ['국밥']={'우거지해장국'},
    ['만두']={'돼지고기만두'},
    ['중국집']={'콩나물해장짬뽕'},
    ['수도']={'부에노스아이레스'},
    ['북미']={'세인트빈센트그레나딘'},
    ['남미']={'프랑스령기아나'},
    ['오세아니아']={'미크로네시아연방'},
    ['아시아']={'투르크메니스탄','사우디아라비아'},
    ['유럽']={'보스니아헤르체고비나'},
    ['빵']={'초코소라빵','소보로빵','단팥빵','크림빵','슈크림빵','마늘빵','모닝빵','식빵','소시지빵','피자빵','초코빵','메론빵','소라빵','팥빵','꽈배기','도넛','베이글','크루아상','바게트','카스텔라','찐빵','호빵','고로케','모카빵','맘모스빵','옥수수빵','연유빵','밤식빵'},
    ['요일']={'월요일','화요일','수요일','목요일','금요일','토요일','일요일'},
    ['계절']={'봄','여름','가을','겨울'},
    ['계이름']={'도','레','미','파','솔','라','시'},
    ['손가락']={'엄지','검지','중지','약지','소지'},
    ['KBO']={'KIA타이거즈'},
    ['견과류']={'피스타치오','마카다미아','브라질너트'},
    ['대륙']={'오세아니아','북미','남미'},
    ['라면']={'나가사키짬뽕','진라면매운맛','진라면순한맛','불닭볶음탕면','핵불닭볶음면'},
    ['라면재료']={'새송이버섯','느타리버섯'},
    ['조선 왕']={'연산군','광해군'},
    ['마라탕']={'흑목이버섯','느타리버섯','백목이버섯','새송이버섯'},
    ['체스']={'나이트','비숍'},
    ['육하원칙']={'무엇을','어디서','어떻게'},
    ['방']={'다목적실','다용도실','보일러실'},
    ['떡']={'가래떡','절편','인절미','송편','백설기'},
    ['열대과일']={'패션후르츠','스타후르츠'},
    ['계급']={'한라산부대그룹홀더'},
    ['위인']={'단군할아버지'},
    ['한글 자음']={'ㄱ','ㄴ','ㄷ','ㄹ','ㅁ','ㅂ','ㅅ','ㅇ','ㅈ','ㅊ','ㅋ','ㅌ','ㅍ','ㅎ','ㄲ','ㅃ','ㅉ','ㄸ','ㅆ','ㄳ','ㄵ','ㄶ','ㄺ','ㄻ','ㄼ','ㄽ','ㄾ','ㄿ','ㅀ','ㅄ'},
    ['한글 모음']={'ㅏ','ㅑ','ㅓ','ㅕ','ㅗ','ㅛ','ㅜ','ㅠ','ㅡ','ㅐ','ㅒ','ㅔ','ㅖ','ㅘ','ㅙ','ㅚ','ㅝ','ㅞ','ㅟ','ㅢ'},
    ['오대양']={'북극해','대서양','남극해','인도양','태퍙양'},
    ['색']={'빨간색','주황색','노란색','초록색','파란색','남색','보라색'},
    ['무지개색']={'빨강','주황','노랑','초록','파랑','남색','보라','빨간색','주황색','노란색','초록색','파란색','보라색'},
    ['세계수도']={'서울','도쿄','베이징','런던','파리','베를린','로마','마드리드','오타와','캔버라','웰링턴','브라질리아','부에노스아이레스','카이로','방콕','하노이','자카르타','뉴델리'},
    ['세계 수도']={'서울','도쿄','베이징','런던','파리','베를린','로마','마드리드','오타와','캔버라','웰링턴','브라질리아','부에노스아이레스','카이로','방콕','하노이','자카르타','뉴델리'},
    ['세계수']={'위그드라실'},
    ['마인크래프트']={'위더스켈레톤'},
    ['탈것']={'인라인스케이트','자기부상열차'},
    ['우유']={'피스타치오우유','마카다미아우유'},
    ['MBTI']={'ESTP','ESTJ','ESFP','ESFJ','ENTP','ENTJ','ENFP','ENFJ','ISFP','ISFJ','ISTP','ISTJ','INFP','INFJ','INTP','INTJ'},
    ['소수']={'2','3','5','7','11','13','17','19','23','29','31','37','41','43','47','53','59','61','67','71','73','79','83','89','97'},
    ['부족수']={'1','2','3','4','5','7','8','9','10','11','13','14','15','16','17','19','21','22','23','25','26','27','29','31','33','34','35','37','38','39','41','43','45','46','47','49','50','51','53','55','57','58','59','61','62','63','65','67','69','70','71','73','74','75','77','79','81','82','83','85','86','87','89','91','93','94','95','97','98','99'},
}
extra['알파벳']={}
for i=string.byte('a'),string.byte('z') do
    table.insert(extra['알파벳'],string.char(i))
    table.insert(extra['알파벳'],string.char(i-32))
end
local function mergeWords(source)
    for category,list in pairs(source) do
        local current=bank[category] or {}
        bank[category]=current
        local seen={}
        for _,old in ipairs(current) do seen[old]=true end
        for _,word in ipairs(list) do
            if not seen[word] then
                table.insert(current,word)
                seen[word]=true
            end
        end
    end
end
mergeWords(extra)
-- Extra words by topic (added on top of the lists above). Whitespace separated.
local function W(text)
    local list={}
    for word in text:gmatch('%S+') do list[#list+1]=word end
    return list
end
local more={
    ['김치']=W[[배추김치 깍두기 총각김치 열무김치 파김치 갓김치 동치미 백김치 나박김치 오이소박이 부추김치 깻잎김치 무말랭이 보쌈김치 묵은지 겉절이 알타리김치 고들빼기김치 돌산갓김치 열무물김치 물김치 볶음김치 포기김치 배추겉절이 얼갈이김치 석박지 장김치 갓물김치 씀바귀김치 양배추김치 굴김치 전복김치 파프리카김치 샤인머스켓김치]],
    ['빵']=W[[초코소라빵 소보로빵 단팥빵 크림빵 슈크림빵 마늘빵 모닝빵 식빵 소시지빵 피자빵 초코빵 메론빵 소라빵 팥빵 꽈배기 도넛 베이글 크루아상 바게트 카스텔라 찐빵 호빵 고로케 모카빵 맘모스빵 옥수수빵 연유빵 밤식빵]],
    ['탄생석']=W[[가넷 자수정 아쿠아마린 다이아몬드 에메랄드 진주 루비 페리도트 사파이어 오팔 토파즈 터키석 터키옥 시트린 문스톤 탄자나이트 지르콘 알렉산드라이트 투어말린 핑크토르말린 산호 오닉스 크리소프레이즈 블러드스톤 카넬리안 라피스라줄리 월장석 청금석 홍옥 청옥 황옥 녹주석 석류석]],
    ['맛']=W[[단맛 짠맛 신맛 쓴맛 감칠맛 매운맛 떫은맛 고소한맛 시큼한맛 구수한맛 달콤한맛 새콤한맛 얼얼한맛 쌉쌀한맛 담백한맛 느끼한맛 달달한맛 상큼한맛 칼칼한맛 짭짤한맛 씁쓸한맛 시원한맛 개운한맛 비린맛 알싸한맛 텁텁한맛 밍밍한맛 싱거운맛 매콤한맛 달짝지근한맛]],
    ['고기']=W[[소고기 돼지고기 닭고기 오리고기 양고기 염소고기 말고기 칠면조고기 사슴고기 토끼고기 거위고기 꿩고기 쇠고기 삼겹살 목살 항정살 갈비 등심 안심 채끝 차돌박이 양지 사태 우둔 설도 앞다리살 뒷다리살 가브리살 갈매기살 닭가슴살 닭다리 닭날개 훈제오리 베이컨 햄 소시지 육포 불고기 한우 한돈 갈비살 살치살 부채살 업진살 토시살 안창살 제비추리 오겹살 돈까스 통삼겹 닭똥집 닭발 곱창 대창 막창 양깃머리 선지 수육 편육 족발 순대]],
    ['포켓몬']=W[[피카츄 라이츄 파이리 리자드 리자몽 꼬부기 어니부기 거북왕 이상해씨 이상해풀 이상해꽃 캐터피 단데기 버터플 뿔충이 딱충이 독침붕 구구 피죤 피죤투 꼬렛 레트라 깨비참 깨비드릴조 아보 아보크 피츄 삐삐 픽시 식스테일 나인테일 푸린 푸크린 주뱃 골뱃 뚜벅쵸 냄새꼬 라플레시아 파라스 파라섹트 디그다 닥트리오 나옹 페르시온 고라파덕 골덕 망키 성원숭 가디 윈디 발챙이 슈륙챙이 강챙이 캐이시 윤겔라 후딘 알통몬 근육몬 괴력몬 야돈 야도란 코일 레어코일 파오리 두두 두트리오 쥬쥬 쥬레곤 질퍽이 질뻐기 셀러 파르셀 고오스 고우스트 팬텀 롱스톤 슬리프 슬리퍼 크랩 킹크랩 찌리리공 붐볼 아라리 나시 탕구리 텅구리 시라소몬 홍수몬 또가스 또도가스 뿔카노 코뿌리 럭키 덩쿠리 캥카 시드라 콘치 별가사리 아쿠스타 마임맨 스라크 루주라 에레브 마그마 쁘사이저 켄타로스 잉어킹 갸라도스 라프라스 메타몽 이브이 샤미드 쥬피썬더 부스터 폴리곤 암나이트 암스타 투구 투구푸스 프테라 잠만보 프리져 썬더 파이어 미뇽 신뇽 망나뇽 뮤츠 뮤 치코리타 브케인 리아코 꼬마돌 루기아 칠색조 레쿠쟈 가이오가 그란돈 디아루가 펄기아 아르세우스 루카리오 가브리아스 마이농 따라큐 토게피 토게틱 메리프 보송송 플러시 에이지 마릴 마릴리 윤겔라 해피너스 라티아스 라티오스 레지락 레지아이스 레지스틸]],
    ['초중고 과목']=W[[국어 영어 수학 과학 사회 도덕 체육 음악 미술 실과 한국사 통합사회 통합과학 물리 화학 생물 지구과학 지리 정치와법 경제 사회문화 한문 정보 기술가정 독서 문학 화법과작문 언어와매체 미적분 기하 확률과통계 대수 수학1 수학2 제2외국어 일본어 중국어 독일어 프랑스어 스페인어 러시아어 아랍어 베트남어 바른생활 슬기로운생활 즐거운생활 창의적체험활동 논술 물리학 화학1 생명과학 세계사 동아시아사 세계지리 한국지리 윤리와사상 생활과윤리 진로와직업 안전한생활 통합사회 과학탐구 사회탐구]],
    ['과목']=W[[국어 영어 수학 과학 사회 도덕 체육 음악 미술 실과 한국사 물리 화학 생물 지구과학 지리 경제 한문 정보 기술가정 독서 문학 미적분 기하 확률과통계 일본어 중국어 독일어 프랑스어 스페인어 세계사 동아시아사 세계지리 한국지리 생명과학 통합사회 통합과학 윤리와사상 생활과윤리 진로와직업]],
    ['포유류']=W[[호랑이 사자 코끼리 기린 하마 코뿔소 곰 늑대 여우 너구리 족제비 수달 고래 돌고래 박쥐 캥거루 코알라 판다 오랑우탄 침팬지 고릴라 원숭이 낙타 라마 알파카 얼룩말 사슴 노루 고라니 멧돼지 다람쥐 토끼 쥐 햄스터 고슴도치 두더지 오소리 치타 표범 퓨마 스라소니 하이에나 바다사자 물개 바다표범 해마코끼리 소 말 돼지 양 염소 개 고양이 밍크 담비 족제비 오소리 북극곰 불곰 반달가슴곰 흑곰 재규어 삵 살쾡이 맥 아르마딜로 개미핥기 나무늘보 미어캣 몽구스 침팬지 비비 맨드릴 개코원숭이 일각돌고래 흰긴수염고래 향유고래 범고래 듀공 매너티 바다코끼리 청설모 비버 호저 기니피그 친칠라 프레리독 사향소 들소 버팔로 영양 가젤 임팔라 누 엘크 순록 말코손바닥사슴 흑멧돼지 카피바라 태즈메이니아데빌 웜뱃 오리너구리 바늘두더지]],
    ['조류']=W[[참새 까치 까마귀 비둘기 독수리 매 부엉이 올빼미 앵무새 펭귄 타조 에뮤 두루미 학 백조 오리 거위 닭 칠면조 꿩 제비 딱따구리 갈매기 펠리컨 홍학 공작 기러기 황새 왜가리 백로 뻐꾸기 직박구리 꾀꼬리 종달새 카나리아 십자매 문조 잉꼬 콘도르 칠면조 알바트로스 물총새 후투티 따오기 저어새 원앙 청둥오리 물닭 도요새 뜸부기 솔개 수리 참매 흰죽지 휘파람새 동고비 박새 어치 지빠귀 멧비둘기 꿩 메추라기 메추리 타조 키위 도도새]],
    ['곤충']=W[[개미 벌 꿀벌 말벌 나비 나방 잠자리 매미 메뚜기 귀뚜라미 사마귀 무당벌레 풍뎅이 장수풍뎅이 사슴벌레 반딧불이 파리 모기 바퀴벌레 하루살이 개똥벌레 방아깨비 여치 베짱이 노린재 진딧물 벼룩 이 빈대 파리매 등에 쇠똥구리 하늘소 딱정벌레 길앞잡이 소금쟁이 물방개 장구애비 물자라 송장벌레 박각시 불나방 누에나방 호랑나비 배추흰나비 노랑나비 제비나비 왕잠자리 실잠자리 밀잠자리 땅강아지 집게벌레 흰개미 바구미 거저리 비단벌레 방귀벌레 폭탄먼지벌레]],
    ['파충류']=W[[뱀 도마뱀 악어 거북이 카멜레온 이구아나 코모도왕도마뱀 게코 자라 바다거북 비단뱀 코브라 살모사 구렁이 아나콘다 보아뱀 방울뱀 킹코브라 맘바 능구렁이 유혈목이 장지뱀 도롱뇽 크로커다일 앨리게이터 가비알 늑대거북 남생이 붉은귀거북 거북 장수거북 별거북 육지거북 바실리스크 아놀 투아타라 레오파드게코 비어디드래곤 볼파이톤]],
    ['생선']=W[[고등어 갈치 삼치 꽁치 명태 대구 광어 우럭 도미 농어 연어 참치 방어 전어 멸치 조기 병어 가자미 장어 붕어 잉어 메기 미꾸라지 복어 아귀 쥐치 숭어 청어 임연수어 황태 북어 동태 코다리 노가리 열빙어 도루묵 쏨뱅이 볼락 감성돔 참돔 돌돔 쥐노래미 놀래미 학꽁치 정어리 오징어 참가자미 도다리 서대 박대 홍어 가오리 상어 황새치 청새치 만새기 날치 은어 빙어 송어 민물장어 향어 쏘가리 가물치 꺽지 피라미 송사리 열목어 뱅어 실치 풀치 갈치 아나고 붕장어 곰치]],
    ['채소']=W[[배추 무 당근 양파 마늘 파 대파 쪽파 감자 고구마 오이 호박 가지 토마토 상추 깻잎 시금치 브로콜리 양배추 콩나물 숙주 고추 피망 파프리카 옥수수 연근 우엉 도라지 더덕 고사리 쑥갓 미나리 부추 청경채 셀러리 아스파라거스 비트 콜리플라워 애호박 단호박 늙은호박 청양고추 꽈리고추 풋고추 열무 얼갈이 알타리 총각무 순무 래디시 양상추 로메인 케일 치커리 근대 아욱 쑥 냉이 달래 씀바귀 취나물 곰취 두릅 엄나무순 방풍나물 돌나물 참나물 시래기 무청 토란 마 생강 쌈채소 적채 적양파 샬롯 리크 대파 완두콩 강낭콩 풋콩 땅콩 깐마늘 줄기콩 여주 수세미 박 쥬키니 주키니 오크라 아티초크 루꼴라 바질 파슬리]],
    ['음료']=W[[물 우유 콜라 사이다 주스 커피 홍차 녹차 보리차 옥수수차 식혜 수정과 미숫가루 두유 요구르트 에이드 스무디 밀크티 코코아 탄산수 이온음료 레모네이드 아이스티 쉐이크 생수 환타 스프라이트 박카스 비타500 게토레이 포카리스웨트 파워에이드 오렌지주스 사과주스 포도주스 토마토주스 당근주스 매실차 유자차 생강차 대추차 쌍화차 오미자차 레몬차 자몽차 둥굴레차 결명자차 메밀차 헛개차 아메리카노 카페라떼 카푸치노 에스프레소 카라멜마키아토 바닐라라떼 아포가토 프라푸치노 곡물음료 막걸리 소주 맥주 와인]],
    ['디저트']=W[[케이크 마카롱 푸딩 젤리 초콜릿 사탕 쿠키 비스킷 팝콘 아이스크림 빙수 팥빙수 호떡 붕어빵 군고구마 약과 한과 엿 강정 떡 찹쌀떡 송편 인절미 와플 크레페 티라미수 타르트 파이 에클레어 슈크림 크림브륄레 판나코타 치즈케이크 브라우니 컵케이크 도넛 츄러스 젤라또 셔벗 파르페 요거트 마시멜로 캐러멜 누가 트러플 푸딩 롤케이크 쉬폰케이크 스콘 머핀 카스텔라 팬케이크 바클라바 모찌 다쿠아즈 피낭시에 마들렌 휘낭시에 까눌레 양갱 경단 약식 유과 다식 정과 곶감 수정과]],
    ['과자']=W[[새우깡 포카칩 꼬깔콘 오징어땅콩 초코파이 빼빼로 홈런볼 쿠크다스 칸쵸 오레오 프링글스 허니버터칩 양파링 감자깡 고래밥 자갈치 몽쉘 맛동산 죠리퐁 에이스 쌀과자 뻥튀기 누룽지 센베 전병 오사쯔 썬칩 치토스 짱구 꿀꽈배기 콘칩 스윙칩 눈을감자 다이제 마가렛트 초코송이 빈츠 하임 카라멜콘 땅콩카라멜 인디안밥 맛밤 쫀드기 쫀디기 아폴로 뽑기]],
    ['나무']=W[[소나무 참나무 은행나무 단풍나무 벚나무 버드나무 느티나무 대나무 전나무 잣나무 밤나무 감나무 사과나무 배나무 대추나무 오동나무 향나무 플라타너스 자작나무 야자나무 포플러 아카시아나무 가문비나무 삼나무 편백나무 동백나무 매화나무 무궁화 은행 단풍 벚 소나무 떡갈나무 상수리나무 졸참나무 굴참나무 신갈나무 갈참나무 물푸레나무 층층나무 산수유 쥐똥나무 회양목 사철나무 주목 측백나무 히말라야시다 메타세쿼이아 이팝나무 배롱나무 모과나무 석류나무 살구나무 복숭아나무 자두나무 앵두나무 호두나무 은행나무 뽕나무 닥나무 옻나무 오리나무 박달나무 너도밤나무 마가목 팽나무 곰솔 리기다소나무 낙엽송 구상나무 종려나무 바오바브나무 유칼립투스 코코넛나무 바나나나무 망고나무 올리브나무 사이프러스 월계수 계수나무 자귀나무 개오동 먼나무 후박나무 녹나무]],
    ['꽃']=W[[장미 튤립 해바라기 코스모스 민들레 진달래 개나리 철쭉 벚꽃 목련 국화 백합 카네이션 나팔꽃 무궁화 연꽃 수선화 라벤더 데이지 팬지 제비꽃 동백꽃 매화 난초 봉선화 채송화 안개꽃 프리지아 작약 모란 수국 아네모네 히아신스 양귀비 금잔화 맨드라미 과꽃 달리아 글라디올러스 아이리스 붓꽃 창포 부용 접시꽃 무스카리 크로커스 프림로즈 시클라멘 거베라 라넌큘러스 포인세티아 칼라 백일홍 금낭화 할미꽃 복수초 노루귀 현호색 앵초 초롱꽃 도라지꽃 원추리 비비추 옥잠화 상사화 꽃무릇 구절초 쑥부쟁이 억새 갈대 달맞이꽃 패랭이꽃 석죽 설란 은방울꽃 물망초 사루비아 샐비어 베고니아 페튜니아 메리골드 아카시아꽃 유채꽃 라일락 쥐손이풀 엉겅퀴 클로버 토끼풀 질경이 냉이꽃 꽃다지 개망초 코스모스]],
    ['보석']=W[[다이아몬드 루비 사파이어 에메랄드 진주 오팔 자수정 토파즈 석영 비취 호박 마노 옥 가넷 아쿠아마린 페리도트 터키석 시트린 문스톤 탄자나이트 지르콘 오닉스 산호 라피스라줄리 말라카이트 아게이트 재스퍼 카넬리안 블러드스톤 홍옥 청옥 수정 흑진주 핑크다이아몬드 블루다이아몬드 크리스탈 큐빅 모조다이아 투어말린 아메트린 로즈쿼츠 스피넬 알렉산드라이트 베릴 모거나이트 헬리오도르 로도크로사이트 헤마타이트 형석 방해석]],
    ['광물']=W[[석영 형석 흑연 방해석 황철석 석고 활석 장석 운모 금 은 구리 철 백금 수정 황 석회석 대리석 화강암 현무암 사암 셰일 편마암 편암 규암 응회암 점판암 석탄 석유 다이아몬드 강옥 감람석 휘석 각섬석 자철석 적철석 보크사이트 방연광 섬아연석 황동석 경석 암염 칼륨 인회석 석면 고령토 일메나이트 지르콘 쿼츠 알바이트]],
    ['주기율표']=W[[수소 헬륨 리튬 베릴륨 붕소 탄소 질소 산소 플루오린 불소 네온 나트륨 마그네슘 알루미늄 규소 인 황 염소 아르곤 칼륨 칼슘 스칸듐 타이타늄 티타늄 바나듐 크로뮴 크롬 망가니즈 망간 철 코발트 니켈 구리 아연 갈륨 저마늄 게르마늄 비소 셀레늄 브로민 브롬 크립톤 루비듐 스트론튬 이트륨 지르코늄 니오븀 몰리브데넘 테크네튬 루테늄 로듐 팔라듐 은 카드뮴 인듐 주석 안티모니 텔루륨 아이오딘 요오드 제논 크세논 세슘 바륨 란타넘 세륨 네오디뮴 사마륨 유로퓸 가돌리늄 터븀 에르븀 이터븀 루테튬 하프늄 탄탈럼 텅스텐 레늄 오스뮴 이리듐 백금 금 수은 탈륨 납 비스무트 폴로늄 아스타틴 라돈 프랑슘 라듐 악티늄 토륨 프로트악티늄 우라늄 넵투늄 플루토늄 아메리슘 퀴륨 버클륨 캘리포늄 아인슈타이늄 페르뮴 멘델레븀 노벨륨 로렌슘]],
    ['악기']=W[[피아노 바이올린 첼로 플루트 클라리넷 오보에 트럼펫 트롬본 호른 튜바 색소폰 하프 기타 베이스 드럼 실로폰 마림바 탬버린 캐스터네츠 심벌즈 트라이앵글 오르간 아코디언 하모니카 리코더 단소 대금 피리 가야금 거문고 해금 장구 북 꽹과리 징 소고 태평소 오카리나 우쿨렐레 팬플루트 비올라 콘트라베이스 팀파니 멜로디언 피콜로 바순 비브라폰 글로켄슈필 콩가 봉고 첼레스타 쳄발로 신디사이저 백파이프 만돌린 시타르 사미센 비파 양금 아쟁 생황 편종 편경 소금 퉁소 나발 나각 꽹매기]],
    ['건반악기']=W[[피아노 오르간 아코디언 쳄발로 신디사이저 멜로디언 하프시코드 키보드 파이프오르간 풍금 클라비코드 일렉톤 첼레스타 전자피아노 그랜드피아노 업라이트피아노 하모늄 스피넷 메로트론 로즈피아노 클라비넷 일렉트릭피아노]],
    ['관악기']=W[[플루트 클라리넷 오보에 바순 트럼펫 트롬본 호른 튜바 색소폰 리코더 단소 대금 피리 하모니카 오카리나 피콜로 팬플루트 태평소 백파이프 유포니움 코넷 플루겔호른 잉글리시호른 콘트라바순 베이스클라리넷 소프라노색소폰 알토색소폰 테너색소폰 바리톤색소폰 소금 중금 퉁소 생황 나발 나각 휘파람 알펜호른 디저리두 카주 멜로디카 트럼펫]],
    ['타악기']=W[[드럼 실로폰 마림바 탬버린 캐스터네츠 심벌즈 트라이앵글 팀파니 장구 북 꽹과리 징 소고 콩가 봉고 비브라폰 글로켄슈필 카우벨 우드블록 마라카스 귀로 클라베스 템플블록 탐탐 공 편종 편경 박 어 축 소고 법고 울림판 스네어드럼 베이스드럼 하이햇 라이드심벌즈 크래시심벌즈 젬베 카혼 탈북 모듬북 벨 차임 핸드벨 톰톰 플로어탐 스플래시]],
    ['현악기']=W[[바이올린 비올라 첼로 콘트라베이스 하프 기타 가야금 거문고 우쿨렐레 해금 아쟁 양금 만돌린 밴조 시타르 류트 비파 사미센 얼후 치터 발랄라이카 리라 하프시코드 일렉트릭기타 베이스기타 어쿠스틱기타 클래식기타 통기타 첼로 바이올라 비올라다감바 하디거디 마두금 샤미센 고토 피파 쟁 사랑기 대쟁 월금 현금 오현 쌍현 소해금 장구]],
    ['운동']=W[[축구 야구 농구 배구 탁구 테니스 골프 배드민턴 수영 육상 마라톤 체조 유도 태권도 검도 펜싱 권투 레슬링 역도 양궁 사격 승마 스키 스노보드 스케이팅 컬링 하키 럭비 핸드볼 볼링 당구 요가 필라테스 암벽등반 서핑 조정 카누 다이빙 트라이애슬론 근대5종 씨름 복싱 킥복싱 주짓수 가라테 합기도 카바디 줄넘기 훌라후프 에어로빅 줌바 크로스핏 스쿼시 족구 피구 발야구 티볼 소프트볼 크리켓 라크로스 폴로 수구 윈드서핑 패러글라이딩 번지점프 스카이다이빙 스쿠버다이빙 낚시 등산 트레킹 자전거 사이클 인라인 스케이트보드 롤러스케이트 아이스스케이팅 피겨스케이팅 쇼트트랙 스피드스케이팅 봅슬레이 루지 스켈레톤 바이애슬론 크로스컨트리 스키점프 노르딕복합 프리스타일스키 모굴 에어리얼 하프파이프 빅에어]],
    ['하계']=W[[육상 수영 체조 양궁 사격 펜싱 유도 태권도 레슬링 복싱 역도 사이클 조정 카누 요트 승마 배드민턴 탁구 테니스 골프 농구 배구 축구 핸드볼 하키 럭비 야구 소프트볼 서핑 스케이트보드 스포츠클라이밍 트라이애슬론 근대5종 다이빙 수구 아티스틱스위밍 브레이킹 비치발리볼 마라톤 마라톤수영 경보 장대높이뛰기 멀리뛰기 높이뛰기 삼단뛰기 투포환 원반던지기 창던지기 해머던지기 10종경기 7종경기 이어달리기 허들 단거리 중거리 장거리 장애물경주]],
    ['동계']=W[[스키 스노보드 스켈레톤 봅슬레이 루지 컬링 피겨스케이팅 쇼트트랙 스피드스케이팅 아이스하키 크로스컨트리 바이애슬론 노르딕복합 스키점프 프리스타일스키 알파인스키 모굴 에어리얼 하프파이프 슬로프스타일 빅에어 스노보드크로스 스키크로스 아이스댄스 페어스케이팅 싱글스케이팅 팀추월 매스스타트 크로스컨트리스키 스키어드벤처]],
    ['구기종목']=W[[축구 야구 농구 배구 탁구 테니스 골프 배드민턴 핸드볼 럭비 하키 볼링 당구 족구 피구 발야구 소프트볼 크리켓 라크로스 폴로 수구 비치발리볼 세팍타크로 풋살 미식축구 아이스하키 필드하키 스쿼시 정구 게이트볼 크로케 페탕크 티볼 킨볼 넷볼 컬링 슈팅볼 하이알라이 피클볼 소프트테니스 라켓볼 풋볼 호버볼 센트럴볼]],
    ['영화 장르']=W[[액션 코미디 로맨스 공포 스릴러 드라마 SF 판타지 애니메이션 다큐멘터리 뮤지컬 범죄 전쟁 서부극 미스터리 가족 어드벤처 느와르 사극 재난 로맨틱코미디 블랙코미디 하이스트 좀비 슬래셔 고어 스포츠 음악 전기 역사 시대극 첩보 모험 청춘 성장 법정 의학 괴수 히어로 슈퍼히어로 디스토피아 포스트아포칼립스 사이버펑크 스팀펑크 로드무비 독립영화 예술영화 실험영화 무성영화 단편 장편 옴니버스]],
    ['놀이기구']=W[[롤러코스터 회전목마 바이킹 관람차 범퍼카 자이로드롭 자유낙하 귀신의집 후룸라이드 정글탐험 대관람차 회전컵 급류타기 스윙 회전그네 디스코팡팡 해적선 오르막 미니기차 코끼리열차 어린이열차 놀이터 그네 미끄럼틀 시소 정글짐 철봉 구름사다리 흔들말 트램폴린 에어바운스 볼풀 워터슬라이드 유수풀 파도풀 어트랙션 아쿠아리움 무빙워크 모노레일 스카이라이드 케이블카 루지 짚라인 번지점프 점핑머신 4D체험 VR체험 슈팅게임 다이빙보드 슬링샷 로터 하늘자전거 카트 고카트 챔피언스리그]],
    ['가전제품']=W[[냉장고 세탁기 에어컨 텔레비전 선풍기 청소기 전자레인지 밥솥 전기밥솥 토스터 믹서 정수기 공기청정기 가습기 제습기 건조기 식기세척기 드라이기 다리미 히터 전기장판 커피머신 에어프라이어 오븐 인덕션 가스레인지 로봇청소기 안마의자 김치냉장고 와인셀러 스타일러 전기포트 전기주전자 핸드믹서 블렌더 착즙기 와플메이커 샌드위치메이커 팝콘기계 빙수기계 제빙기 전기그릴 전기요 온풍기 라디에이터 서큘레이터 환풍기 후드 음식물처리기 비데 전동칫솔 면도기 헤어드라이어 고데기 매직기 아이롱 사운드바 스피커 오디오 라디오 카세트 CD플레이어 비디오 빔프로젝터 셋톱박스 공유기]],
    ['가구']=W[[침대 책상 의자 소파 식탁 옷장 서랍장 책장 화장대 신발장 장롱 협탁 테이블 행거 거울 수납장 선반 찬장 장식장 TV장 거실장 파티션 병풍 돗자리 방석 쿠션 이불장 문갑 반닫이 뒤주 교자상 밥상 좌탁 스툴 벤치 흔들의자 안락의자 리클라이너 침대프레임 매트리스 이층침대 접이식침대 베개 이불 요 담요 커튼 블라인드 러그 카펫 스탠드 조명 샹들리에 옷걸이 우산꽂이 신발장 코트랙 콘솔 사이드테이블 커피테이블 파우프]],
    ['학용품']=W[[연필 볼펜 지우개 공책 필통 자 가위 풀 색연필 크레파스 사인펜 형광펜 샤프 수정테이프 테이프 스테이플러 컴퍼스 각도기 삼각자 스케치북 물감 붓 도화지 클립 포스트잇 칼 샤프심 책받침 파일 바인더 연필깎이 만년필 잉크 수성펜 네임펜 매직 마커 칠판 분필 화이트보드 보드마카 지우개똥 문진 필기구 노트 수첩 다이어리 메모지 색종이 점토 클레이 파레트 팔레트 붓통 물통 책가방 도시락 실내화 리코더 단소 줄자 계산기 돋보기 풀칠 딱풀 수정액 양면테이프 접착제 집게 고무줄 압정 핀 인주 도장 봉투 편지지 엽서 스티커]],
    ['의류']=W[[티셔츠 셔츠 바지 청바지 치마 원피스 코트 패딩 점퍼 자켓 니트 후드티 맨투맨 조끼 양복 한복 교복 잠옷 속옷 양말 장갑 목도리 스카프 모자 벨트 넥타이 수영복 레깅스 가디건 반바지 트렌치코트 블라우스 슬랙스 스커트 롱스커트 미니스커트 정장 턱시도 드레스 웨딩드레스 한복저고리 치마저고리 바지저고리 두루마기 도포 갓 버선 고무신 짚신 비옷 우비 방한복 스키복 등산복 운동복 트레이닝복 체육복 작업복 앞치마 가운 수술복 군복 제복 유니폼 파자마 내복 팬티 브래지어 러닝 스타킹 타이츠 토시 귀마개 마스크 선글라스 안경 시계 반지 목걸이 귀걸이 팔찌 브로치 머리핀 머리띠 헤어밴드]],
    ['신발']=W[[운동화 구두 슬리퍼 샌들 부츠 장화 하이힐 로퍼 스니커즈 단화 실내화 등산화 축구화 농구화 스케이트 쪼리 털신 고무신 짚신 나막신 갖신 버선 워커 첼시부츠 앵클부츠 롱부츠 플랫슈즈 펌프스 웨지힐 뮬 에스파드리유 트레킹화 런닝화 골프화 볼링화 스파이크 야구화 스키부츠 방수화 안전화 수영화 아쿠아슈즈 크록스 삼선슬리퍼 쪼리슬리퍼 털슬리퍼 방한화 레인부츠]],
    ['탈것']=W[[자동차 버스 지하철 기차 비행기 헬리콥터 배 자전거 오토바이 택시 트럭 소방차 구급차 경찰차 열기구 로켓 우주선 잠수함 요트 유람선 케이블카 트램 킥보드 인라인스케이트 스케이트보드 트랙터 포클레인 리어카 마차 카누 모노레일 KTX 전동킥보드 자기부상열차 수상스키 제트스키 보트 모터보트 쾌속선 카페리 크루즈 화물선 유조선 항공모함 구축함 전투기 폭격기 수송기 여객기 경비행기 글라이더 행글라이더 패러글라이더 비행선 낙하산 스쿠터 스케이트 롤러블레이드 썰매 눈썰매 개썰매 스노모빌 사륜오토바이 골프카트 리무진 지프 승합차 밴 캠핑카 불도저 굴착기 지게차 크레인 덤프트럭 레미콘 청소차 견인차 순찰차 장갑차 전차 탱크 미사일 인공위성 우주왕복선 여객선 나룻배 뗏목 돛단배 조각배 통통배]],
    ['건물']=W[[학교 병원 도서관 박물관 미술관 경찰서 소방서 우체국 은행 시청 법원 공항 역 터미널 시장 마트 편의점 백화점 영화관 극장 놀이공원 동물원 식물원 수족관 공원 운동장 체육관 수영장 교회 절 성당 아파트 빌라 주택 호텔 식당 카페 미용실 세탁소 약국 서점 목욕탕 주유소 정류장 사무실 공장 농장 목장 항구 등대 다리 탑 궁궐 성 한옥 초가집 기와집 오피스텔 원룸 펜션 모텔 여관 게스트하우스 리조트 콘도 타워 빌딩 고층빌딩 마천루 창고 차고 헛간 외양간 비닐하우스 온실 정자 누각 사찰 암자 서원 향교 관청 동사무소 구청 도청 국회의사당 청와대 대사관 영사관 군부대 훈련소 감옥 교도소 소방서 보건소 요양원 고아원 유치원 어린이집 학원 대학교 연구소 천문대 기상대 관측소 발전소 변전소 정수장 하수처리장 소각장 매립장 쓰레기장 공동묘지 납골당]],
    ['신체']=W[[머리 얼굴 눈 코 입 귀 목 어깨 팔 팔꿈치 손 손가락 손톱 가슴 배 허리 등 엉덩이 다리 무릎 발 발가락 발톱 발목 손목 이마 눈썹 턱 볼 혀 이 입술 머리카락 피부 뼈 근육 심장 폐 간 위 장 신장 뇌 혈관 눈동자 속눈썹 콧구멍 콧등 귓불 귓속 목구멍 쇄골 겨드랑이 옆구리 배꼽 골반 허벅지 종아리 정강이 발등 발바닥 뒤꿈치 손바닥 손등 주먹 엄지 검지 중지 약지 새끼손가락 관자놀이 정수리 뒤통수 인중 보조개 광대뼈 갈비뼈 척추 두개골 대퇴골 경골 비장 췌장 방광 대장 소장 식도 기관지 횡격막 갑상선 편도선 맹장 담낭 쓸개]],
    ['신체 부위']=W[[머리 얼굴 눈 코 입 귀 목 어깨 팔 팔꿈치 손 손가락 손톱 가슴 배 허리 등 엉덩이 다리 무릎 발 발가락 발톱 발목 손목 이마 눈썹 턱 볼 혀 이 입술 머리카락 피부 눈동자 속눈썹 콧구멍 귓불 목구멍 쇄골 겨드랑이 옆구리 배꼽 골반 허벅지 종아리 정강이 발등 발바닥 뒤꿈치 손바닥 손등 주먹 엄지 검지 중지 약지 새끼손가락 관자놀이 정수리 뒤통수 인중 광대뼈 갈비뼈 척추]],
    ['장기']=W[[심장 폐 간 위 장 신장 뇌 비장 췌장 방광 대장 소장 식도 기관지 횡격막 갑상선 편도선 맹장 담낭 쓸개 십이지장 직장 항문 자궁 난소 전립선 콩팥 허파 염통 지라 이자 창자 큰창자 작은창자 간장 오줌통 쓸개즙]],
    ['별자리']=W[[양자리 황소자리 쌍둥이자리 게자리 사자자리 처녀자리 천칭자리 전갈자리 사수자리 염소자리 물병자리 물고기자리 북두칠성 카시오페이아자리 오리온자리 큰곰자리 작은곰자리 북극성 백조자리 거문고자리 독수리자리 남십자성 페가수스자리 안드로메다자리 케페우스자리 용자리 헤라클레스자리 센타우루스자리 큰개자리 작은개자리 마차부자리 고래자리 에리다누스자리 남쪽물고기자리 이등변삼각형 삼각형자리 화살자리 돌고래자리 여우자리 도마뱀자리 기린자리 작은사자자리 사냥개자리 목동자리 왕관자리 땅꾼자리 뱀자리 방패자리 궁수자리 독수리자리 카멜레온자리 공작자리 두루미자리 봉황새자리 망원경자리 나침반자리 돛자리 고물자리 용골자리 파리자리 테이블산자리 팔분의자리]],
    ['띠']=W[[쥐 소 호랑이 토끼 용 뱀 말 양 원숭이 닭 개 돼지 자 축 인 묘 진 사 오 미 신 유 술 해]],
    ['12간지']=W[[쥐 소 호랑이 토끼 용 뱀 말 양 원숭이 닭 개 돼지 자 축 인 묘 진 사 오 미 신 유 술 해]],
    ['감정']=W[[기쁨 슬픔 분노 두려움 놀람 혐오 행복 사랑 외로움 설렘 불안 긴장 우울 질투 부끄러움 감사 후회 그리움 지루함 만족 실망 자부심 즐거움 짜증 화 걱정 불만 환희 희열 감격 감동 충격 공포 무서움 초조 당황 황당 억울 미안함 죄책감 수치심 자존심 열등감 우월감 안도 평온 평화 기대 희망 절망 좌절 상실감 허무 무기력 피곤 외로움 쓸쓸함 서러움 서운함 섭섭함 아쉬움 반가움 고마움 뿌듯함 통쾌 상쾌 유쾌 불쾌 쾌감 불편 편안 홀가분 후련 답답 막막 두근 설레임]],
    ['날씨']=W[[맑음 흐림 비 눈 바람 안개 천둥 번개 태풍 폭우 폭설 우박 소나기 장마 가뭄 황사 미세먼지 무지개 서리 이슬 열대야 한파 폭염 눈보라 진눈깨비 이슬비 가랑비 보슬비 장대비 여우비 먹구름 뭉게구름 새털구름 양떼구름 비구름 노을 안개비 강풍 돌풍 회오리바람 토네이도 허리케인 사이클론 해일 쓰나미 지진 화산 산불 홍수 폭풍 열풍 훈풍 샛바람 하늬바람 마파람 높새바람 산들바람 건조 습도 기온 기압 강수량 일교차 한낮 무더위 불볕더위 냉해 서릿발 얼음 고드름 눈사태 폭풍우 호우 대설 한랭 온난 열돔 이상기후 엘니뇨 라니냐]],
    ['도형']=W[[원 삼각형 사각형 오각형 육각형 마름모 사다리꼴 평행사변형 직사각형 정사각형 타원 부채꼴 반원 원기둥 원뿔 구 직육면체 정육면체 삼각뿔 사각뿔 각기둥 각뿔 팔각형 별모양 칠각형 구각형 십각형 정삼각형 이등변삼각형 직각삼각형 예각삼각형 둔각삼각형 정오각형 정육각형 다각형 정다각형 원뿔대 각뿔대 정사면체 정팔면체 정십이면체 정이십면체 반구 호 현 반지름 지름 둘레 넓이 부피 각도 꼭짓점 모서리 대각선 선분 직선 반직선 평면 입체 곡선 나선 하트 십자가]],
    ['단위']=W[[미터 센티미터 밀리미터 킬로미터 그램 킬로그램 톤 리터 밀리리터 초 분 시간 일 주 달 년 도 퍼센트 헥타르 평 피트 인치 마일 파운드 온스 갤런 줄 와트 볼트 암페어 헤르츠 옴 칼로리 뉴턴 파스칼 켈빈 몰 칸델라 바이트 킬로바이트 메가바이트 기가바이트 테라바이트 비트 마이크로미터 나노미터 광년 파섹 천문단위 노트 마하 데시벨 루멕스 룩스 제곱미터 세제곱미터 에이커 야드 자 척 치 푼 되 말 섬 홉 근 관 돈 냥 리 마지기 두락 필 켤레 쌍 자루 송이 마리 그루 포기 장 권 대 채 벌 척 톨 알 개 명 분 개월 세기 세대 반 학년]],
    ['화폐 단위']=W[[원 엔 위안 달러 유로 파운드 루블 루피 페소 바트 프랑 리라 크로나 레알 랜드 동 링깃 디나르 디르함 셰켈 즐로티 포린트 크로네 쿠나 리얄 타카 키프 리엘 챠트 센트 페니 센 전 쿠루스 코루나 레우 레프 그리브나 드람 라리 템 솜 소모니 마나트 탱게 투그릭 퀘트살 볼리바르 솔 과라니 구르드 코르도바 콜론 발보아 불 바하트 키나 탈라 파앙가 바투 도브라 쿠안자 셀리 실링 비르 나크파 다시 푸라 로티 에스쿠도 페세타 마르크 길더 리라 드라크마 쿠푸루스 디나]],
    ['직업']=W[[의사 간호사 교사 교수 경찰 소방관 군인 판사 검사 변호사 회계사 약사 수의사 치과의사 요리사 제빵사 바리스타 미용사 디자이너 건축가 작가 기자 아나운서 가수 배우 화가 사진작가 운전기사 조종사 승무원 농부 어부 광부 목수 전기기사 배관공 용접공 연구원 과학자 프로그래머 개발자 은행원 공무원 상인 점원 택배기사 우주비행사 번역가 통역사 작곡가 지휘자 감독 사서 큐레이터 형사 경호원 간병인 사회복지사 상담사 물리치료사 방사선사 영양사 환경미화원 정비사 청소부 경찰관 소방대원 구조대원 간호조무사 조산사 한의사 임상병리사 작업치료사 언어치료사 심리학자 정신과의사 외과의사 내과의사 소아과의사 산부인과의사 성형외과의사 안과의사 이비인후과의사 피부과의사 마취과의사 응급구조사 장의사 점쟁이 무당 스님 목사 신부 수녀 정치인 대통령 국회의원 시장 도지사 외교관 비서 사무원 영업사원 세일즈맨 마케터 기획자 PD 작가 시나리오작가 웹툰작가 일러스트레이터 만화가 애니메이터 성우 모델 개그맨 코미디언 유튜버 스트리머 프로게이머 운동선수 축구선수 야구선수 농구선수 배구선수 골프선수 수영선수 육상선수 체조선수 심판 코치 감독 트레이너 헬스트레이너 요가강사 무용가 발레리나 안무가 도예가 공예가 조각가 서예가 디자이너 패션디자이너 헤어디자이너 메이크업아티스트 네일아티스트 피부관리사 조향사 파티시에 소믈리에 셰프 주방장 웨이터 호텔리어 가이드 관광가이드 여행작가 택시기사 버스기사 기관사 선장 항해사 도선사 파일럿 관제사 정비사 엔지니어 기술자 설계사 감정평가사 세무사 노무사 변리사 법무사 공인중개사 보험설계사 애널리스트 펀드매니저 트레이더 경제학자 통계학자 수학자 물리학자 화학자 생물학자 천문학자 지질학자 기상학자 고고학자 역사학자 철학자 사회학자 인류학자 언어학자 문학가 시인 소설가 극작가 평론가 칼럼니스트 편집자 교정자 인쇄공 제본공 서점주인 도서관사서]],
    ['나라']=W[[한국 북한 일본 중국 대만 몽골 인도 파키스탄 방글라데시 네팔 스리랑카 태국 베트남 라오스 캄보디아 미얀마 말레이시아 싱가포르 인도네시아 필리핀 브루나이 동티모르 이란 이라크 이스라엘 사우디아라비아 터키 아랍에미리트 카타르 쿠웨이트 요르단 레바논 시리아 예멘 오만 아프가니스탄 우즈베키스탄 카자흐스탄 영국 아일랜드 프랑스 독일 이탈리아 스페인 포르투갈 네덜란드 벨기에 룩셈부르크 스위스 오스트리아 스웨덴 노르웨이 덴마크 핀란드 아이슬란드 폴란드 체코 슬로바키아 헝가리 루마니아 불가리아 그리스 러시아 우크라이나 벨라루스 크로아티아 세르비아 슬로베니아 미국 캐나다 멕시코 쿠바 브라질 아르헨티나 칠레 페루 콜롬비아 베네수엘라 에콰도르 볼리비아 파라과이 우루과이 이집트 남아프리카공화국 나이지리아 케냐 에티오피아 모로코 알제리 오스트레일리아 뉴질랜드 피지 투르크메니스탄 키르기스스탄 타지키스탄 아제르바이잔 아르메니아 조지아 바레인 몰디브 부탄 에스토니아 라트비아 리투아니아 몰도바 알바니아 마케도니아 몬테네그로 보스니아헤르체고비나 코소보 몰타 키프로스 모나코 리히텐슈타인 안도라 산마리노 바티칸 자메이카 아이티 도미니카공화국 바하마 바베이도스 트리니다드토바고 파나마 코스타리카 니카라과 온두라스 엘살바도르 과테말라 벨리즈 가이아나 수리남 가나 세네갈 카메룬 탄자니아 우간다 르완다 모잠비크 잠비아 짐바브웨 보츠와나 나미비아 앙골라 콩고 수단 리비아 튀니지 마다가스카르 파푸아뉴기니 사모아 통가 바누아투 솔로몬제도 키리바시 투발루 나우루 팔라우 사하라아랍민주공화국 소말릴란드 중화민국 대한민국 팔레스타인 바티칸시국]],
    ['세계수도']=W[[서울 평양 도쿄 베이징 타이베이 울란바토르 뉴델리 이슬라마바드 다카 카트만두 방콕 비엔티안 프놈펜 쿠알라룸푸르 싱가포르 자카르타 마닐라 테헤란 바그다드 예루살렘 리야드 앙카라 아부다비 도하 런던 더블린 파리 베를린 로마 마드리드 리스본 암스테르담 브뤼셀 베른 빈 스톡홀름 오슬로 코펜하겐 헬싱키 레이캬비크 바르샤바 프라하 부다페스트 부쿠레슈티 소피아 아테네 모스크바 키이우 키예프 워싱턴 오타와 멕시코시티 아바나 브라질리아 부에노스아이레스 산티아고 리마 보고타 카라카스 카이로 프리토리아 아부자 나이로비 아디스아바바 라바트 캔버라 웰링턴 하노이 양곤 네피도 콜롬보 카불 타슈켄트 아스타나 바쿠 예레반 트빌리시 민스크 비에나 류블라나 자그레브 베오그라드 사라예보 스코페 티라나 발레타 니코시아 룩셈부르크 모나코 암만 다마스쿠스 베이루트 쿠웨이트 무스카트 마나마 사나 알제 튀니스 트리폴리 하르툼 아크라 다카르 아비장 킨샤사 루안다 하라레 루사카 마푸토 윈드후크 가보로네 자유시]],
    ['수도']=W[[서울 평양 도쿄 베이징 타이베이 뉴델리 방콕 하노이 자카르타 마닐라 테헤란 리야드 앙카라 런던 파리 베를린 로마 마드리드 리스본 암스테르담 브뤼셀 베른 빈 스톡홀름 오슬로 코펜하겐 헬싱키 워싱턴 오타와 멕시코시티 브라질리아 부에노스아이레스 산티아고 리마 보고타 카이로 프리토리아 나이로비 캔버라 웰링턴 모스크바 키이우 바르샤바 프라하 부다페스트 아테네 더블린]],
    ['대륙']=W[[아시아 유럽 아프리카 북아메리카 남아메리카 오세아니아 남극 북미 남미 아메리카 유라시아 동아시아 동남아시아 남아시아 중앙아시아 서아시아 중동 서유럽 동유럽 북유럽 남유럽 중남미 카리브 대양주]],
    ['도시']=W[[서울 부산 인천 대구 대전 광주 울산 세종 수원 성남 고양 용인 부천 안산 안양 남양주 화성 평택 의정부 시흥 파주 김포 광명 군포 하남 오산 이천 양주 구리 안성 포천 의왕 여주 동두천 과천 춘천 원주 강릉 동해 태백 속초 삼척 청주 충주 제천 천안 공주 보령 아산 서산 논산 계룡 당진 전주 군산 익산 정읍 남원 김제 목포 여수 순천 나주 광양 포항 경주 김천 안동 구미 영주 영천 상주 문경 경산 창원 진주 통영 사천 김해 밀양 거제 양산 제주 서귀포 뉴욕 로스앤젤레스 시카고 파리 런던 도쿄 오사카 교토 베이징 상하이 홍콩 방콕 싱가포르 시드니 멜버른 로마 밀라노 베를린 뮌헨 마드리드 바르셀로나 암스테르담 모스크바 두바이 이스탄불 카이로 토론토 밴쿠버 샌프란시스코 라스베이거스 하노이 호치민 마닐라 자카르타 쿠알라룸푸르 뭄바이 델리 서귀포 포천 세종]],
    ['섬']=W[[제주도 울릉도 독도 강화도 거제도 진도 완도 남해도 안면도 영종도 백령도 흑산도 거문도 마라도 가파도 우도 청산도 하와이 발리 괌 사이판 몰디브 마다가스카르 그린란드 보라카이 세부 오키나와 홋카이도 규슈 시코쿠 대만 하이난 스리랑카 시칠리아 사르데냐 크레타 몰타 아이슬란드 보르네오 수마트라 자바 뉴기니 타히티 모리셔스 세이셸 푸껫 코사무이 석모도 교동도 대부도 선유도 자월도 덕적도 연평도 대청도 소청도 울도 추자도 비양도 형제섬 지심도 소매물도 욕지도 보길도 증도 임자도 안좌도 흑산도 홍도 가거도 만재도 외도 오륙도 장봉도 신도 시도 모도 무의도 승봉도 이작도 풍도 입파도 제부도 고군산군도 격렬비열도 가덕도 지심도 사량도 매물도 연화도 추도 비진도 한산도 욕지도 미륵도 상도 하도]],
    ['산']=W[[한라산 백두산 설악산 지리산 북한산 관악산 도봉산 덕유산 태백산 오대산 소백산 월악산 속리산 계룡산 내장산 무등산 팔공산 에베레스트 후지산 킬리만자로 알프스 몽블랑 히말라야 로키산맥 안데스산맥 마터호른 케이투 엘브루스 맥킨리 아콩카과 금강산 묘향산 오봉산 치악산 가야산 주왕산 마이산 변산 한북정맥 불암산 수락산 청계산 삼각산 인왕산 남산 북악산 용마산 아차산 광교산 수리산 천마산 운악산 유명산 명성산 화악산 가리왕산 점봉산 방태산 두타산 청옥산 함백산 선자령 대관령 오서산 칠갑산 대둔산 운장산 모악산 천관산 월출산 조계산 지리산 천왕봉 중봉 노고단 반야봉 한라산 백록담 성산일출봉 산방산 금오산 비슬산 앞산 대모산 우면산 구룡산 일자산]],
    ['강']=W[[한강 낙동강 금강 영산강 섬진강 임진강 대동강 압록강 두만강 양쯔강 황허 나일강 아마존강 미시시피강 센강 템스강 라인강 다뉴브강 갠지스강 볼가강 메콩강 티그리스강 유프라테스강 청계천 중랑천 탄천 안양천 한탄강 소양강 북한강 남한강 삼척오십천 형산강 태화강 수영강 보성강 만경강 동진강 안성천 삽교천 예당호 의암호 소양호 충주호 대청호 안동호 임하호 합천호 남강 밀양강 위천 내성천 낙화암 황강 청미천 달천 미호강 무심천 갑천 대전천 유등천 지석천 탐진강 주암호 동복호]],
    ['바다']=W[[태평양 대서양 인도양 북극해 남극해 지중해 홍해 동해 서해 남해 발트해 북해 카리브해 사해 흑해 카스피해 아라비아해 베링해 오호츠크해 동중국해 남중국해 황해 일본해 아드리아해 에게해 노르웨이해 그린란드해 바렌츠해 멕시코만 벵골만 페르시아만 알래스카만 아덴만 기니만 허드슨만 보퍼트해 코랄해 태즈먼해 팀버해 아라푸라해 술루해 셀레베스해 자바해 반다해 플로레스해 사르가소해 위들해 로스해 스코샤해 라자레프해 이오니아해 티레니아해 리구리아해 알보란해 마르마라해 아조프해 화이트해 카라해 랍테프해 동시베리아해 척치해]],
    ['호수']=W[[바이칼호 빅토리아호 슈피리어호 카스피해 휴런호 미시간호 이리호 온타리오호 탕가니카호 말라위호 대곰호 대노예호 아랄해 티티카카호 레만호 콘스탄츠호 가르다호 코모호 마조레호 라도가호 오네가호 사해 소양호 의암호 충주호 대청호 안동호 임하호 합천호 춘천호 청평호 팔당호 경포호 영랑호 화진포 송지호 선암호 주남저수지 우포늪 순천만 파로호 평화의댐 진양호 남강댐 주암호 섬진강댐 옥정호 대암호 군위호 달방호 보령호 예당호 탐진호 장흥호 광주호 담양호 화순적벽 상사호 용담호 백련호]],
    ['한식']=W[[비빔밥 불고기 김치찌개 된장찌개 순두부찌개 부대찌개 갈비찜 삼계탕 설렁탕 갈비탕 곰탕 육개장 냉면 칼국수 수제비 잡채 떡볶이 김밥 순대 족발 보쌈 제육볶음 닭갈비 찜닭 닭볶음탕 김치볶음밥 해물파전 김치전 감자전 빈대떡 계란말이 비빔냉면 물냉면 콩국수 잔치국수 막국수 낙지볶음 아구찜 해물탕 매운탕 감자탕 뼈해장국 순댓국 돼지국밥 갈비 육회 떡국 만둣국 미역국 북엇국 콩나물국밥 청국장 장어구이 보리밥 비빔국수 김치볶음 불낙 꼬막무침 파김치 쌈밥 한정식 백반 젓갈 장아찌 나물 도토리묵 두부김치 오징어볶음 쭈꾸미볶음 곱창전골 순대국 설렁탕 해장국 선지해장국 우거지국 시래기국 무국 콩나물국 어묵탕 오뎅탕 갈비구이 닭강정 동그랑땡 산적 전 부침개 호박전 녹두전 장떡 총떡 메밀전병 메밀국수 막걸리 동동주 식혜 수정과 약과 한과 유과 산자 다식 정과 곶감 호두과자 인삼 홍삼 오곡밥 약밥 팥죽 호박죽 전복죽 잣죽 흑임자죽 쌀국수]],
    ['음식']=W[[밥 김밥 비빔밥 불고기 떡볶이 김치찌개 된장찌개 해물파전 닭볶음탕 제육볶음 잡채 카레라이스 참치김치찌개 라면 짜장면 짬뽕 탕수육 볶음밥 피자 햄버거 치킨 스테이크 파스타 스파게티 샐러드 샌드위치 초밥 우동 라멘 돈까스 오므라이스 떡국 만두 순대 족발 보쌈 곰탕 냉면 칼국수 수제비 국수 죽 빵 케이크 쿠키 아이스크림 과일 야채 고기 생선 계란 두부 콩 쌀 보리 밀 옥수수 감자 고구마 호박 가지 오이 당근 양파 마늘 파 고추 생강 배추 무 시금치 상추 깻잎 콩나물 미역 김 다시마 멸치 새우 오징어 조개 굴 전복 낙지 문어 해삼 멍게 꽃게 대게 랍스터 장어 연어 참치 고등어 갈치 삼치 광어 우럭 도미 농어 방어 전어 복어 아귀]],
    ['양식']=W[[스테이크 파스타 스파게티 피자 햄버거 리조또 샐러드 샌드위치 수프 오믈렛 라자냐 그라탱 까르보나라 알리오올리오 토마토파스타 오므라이스 돈가스 함박스테이크 감자튀김 핫도그 프라이드치킨 브런치 뇨끼 피쉬앤칩스 로스트비프 비프스튜 크림스튜 클램차우더 시저샐러드 코울슬로 마카로니 치즈볼 빠네 풍기파스타 봉골레 아라비아따 푸타네스카 볼로네제 프리타타 에그베네딕트 프렌치토스트 팬케이크 와플 크로크무슈 타코 부리또 나초 퀘사디아 파히타 케밥 팔라펠 후무스 미트볼 소시지 바비큐 갈릭버터 스튜 콘수프 양송이수프 호박수프 어니언수프 미네스트로네]],
    ['일식']=W[[초밥 라멘 우동 소바 돈카츠 덮밥 오코노미야키 타코야키 사시미 튀김 가라아게 샤브샤브 스키야키 규동 가츠동 텐동 오야코동 장어덮밥 연어덮밥 회덮밥 카레 오니기리 유부초밥 김초밥 군함말이 롤 캘리포니아롤 우동정식 냉소바 자루소바 나베 오뎅 야키토리 야키니쿠 교자 멘치카츠 고로케 에비후라이 덴푸라 낫토 미소시루 차완무시 다코야키 모나카 다이후쿠 도라야키 센베 와가시 모찌 마차 사케 소주 라무네]],
    ['중식']=W[[짜장면 짬뽕 탕수육 마라탕 마라샹궈 볶음밥 딤섬 양장피 깐풍기 유린기 꿔바로우 훠궈 북경오리 마파두부 동파육 군만두 물만두 짬뽕밥 잡탕밥 울면 간짜장 쟁반짜장 삼선짜장 유니짜장 짜장밥 깐쇼새우 칠리새우 라조기 팔보채 동파육 멘보샤 샤오롱바오 탄탄면 볶음면 어향가지 가지튀김 오향장육 해파리냉채 양꼬치 마라롱샤 마라두부 지삼선 토마토달걀볶음 계란볶음밥 새우볶음밥 완탕 만두 월병 호떡 꽈배기 중국냉면 짜파구리 고추잡채 꽃빵 자장 중화요리]],
    ['소스']=W[[간장 된장 고추장 쌈장 케첩 마요네즈 머스터드 식초 설탕 소금 후추 참기름 들기름 고춧가루 다진마늘 올리고당 굴소스 칠리소스 바비큐소스 돈가스소스 타르타르소스 와사비 겨자 마늘소스 맛술 미림 청주 깨소금 카레가루 파슬리 토마토소스 크림소스 알프레도소스 페스토 홀랜다이즈소스 데미글라스소스 우스터소스 핫소스 스리라차 타바스코 사우전드아일랜드 시저드레싱 발사믹 오리엔탈드레싱 요거트소스 치즈소스 허니머스타드 어간장 액젓 멸치액젓 새우젓 까나리액젓 쯔유 폰즈 데리야끼소스 XO소스 해선장 춘장 두반장 사차장 땅콩소스 칠리마요 쌈무 양념장 초고추장 초장 막장 청국장 즈앙]],
    ['치즈']=W[[모짜렐라 체다 고다 에담 브리 카망베르 파마산 고르곤졸라 리코타 마스카포네 크림치즈 페타 스위스치즈 에멘탈 그뤼에르 파르미지아노레지아노 페코리노 아시아고 프로볼로네 부라타 할루미 콜비잭 모차렐라 슬라이스치즈 스트링치즈 까망베르 블루치즈 로크포르 스틸턴 하바티 지로 마리볼 레드체다 화이트체다 몬터레이잭 페퍼잭 파르메산 템플 치즈스틱 치즈볼 치즈케이크 치즈떡볶이 치즈김밥 치즈돈까스 치즈버거 치즈피자]],
    ['커피']=W[[아메리카노 카페라떼 카푸치노 에스프레소 카라멜마키아토 바닐라라떼 아포가토 프라푸치노 콜드브루 더치커피 플랫화이트 모카 카페모카 비엔나커피 아이리시커피 리스트레토 룽고 도피오 마끼아또 콘파냐 아이스아메리카노 아이스라떼 에스프레소콘파냐 핸드드립 사이폰 모카포트 프렌치프레스 에어로프레스 인스턴트커피 믹스커피 달고나커피 원두 생두 로스팅 디카페인 예가체프 시다모 케냐AA 콜롬비아수프리모 과테말라안티구아 브라질산토스 하와이코나 자메이카블루마운틴 파나마게이샤 만델링 코피루왁 아이스커피 커피우유 헤이즐넛커피 아인슈페너 쿠바노 카페콘레체 카페브레베 카페보몽 샤케라토]],
    ['과일']=W[[배 사과 바나나 포도 수박 딸기 복숭아 파인애플 블루베리 자몽 석류 한라봉 아보카도 귤 오렌지 레몬 라임 감 홍시 곶감 대추 밤 호두 잣 매실 살구 자두 앵두 체리 오디 산딸기 라즈베리 블랙베리 크랜베리 무화과 멜론 참외 키위 망고 망고스틴 두리안 리치 용과 코코넛 파파야 구아바 패션프루트 패션후르츠 스타프루트 스타후르츠 람부탄 롱안 잭프루트 아사이베리 모과 유자 천혜향 레드향 황금향 청견 감귤 탱자 금귤 유자 비파 석류 포멜로 천도복숭아 백도 황도 납작복숭아 샤인머스캇 샤인머스켓 거봉 캠벨 청포도 적포도 건포도 곶감 말린망고 말린과일 딸기잼 사과잼 블루베리잼 오렌지잼]],
    ['열대과일']=W[[바나나 파인애플 망고 망고스틴 두리안 리치 용과 코코넛 파파야 구아바 패션프루트 패션후르츠 스타프루트 스타후르츠 람부탄 롱안 잭프루트 아사이베리 아보카도 키위 오렌지 레몬 라임 자몽 포멜로 비파 야자 대추야자 무화과 타마린드 사포딜라 체리모야 커스터드애플 소르소프 두리안 코코넛워터 멜론 수박 한라봉]],
    ['견과류']=W[[호두 아몬드 땅콩 캐슈넛 피스타치오 마카다미아 헤이즐넛 피칸 브라질너트 잣 밤 은행 해바라기씨 호박씨 아마씨 치아씨드 참깨 들깨 캐슈 밤콩 땅콩버터 아몬드버터 코코넛 개암 도토리 은행알 군밤 볶은콩 검은콩 서리태 완두콩 강낭콩 렌틸콩 병아리콩 쥐눈이콩 호랑이콩 율무 마카다미아넛 피스타치오넛 건과일 믹스넛]],
    ['요일']=W[[월요일 화요일 수요일 목요일 금요일 토요일 일요일]],
    ['계절']=W[[봄 여름 가을 겨울 환절기 우기 건기 장마철 간절기 늦봄 초여름 한여름 늦여름 초가을 늦가을 초겨울 한겨울 입춘 우수 경칩 춘분 청명 곡우 입하 소만 망종 하지 소서 대서 입추 처서 백로 추분 한로 상강 입동 소설 대설 동지 소한 대한 새봄 봄철 여름철 가을철 겨울철 사계절 춘하추동 봄날 여름날 가을날 겨울날]],
    ['색']=W[[빨간색 주황색 노란색 초록색 파란색 남색 보라색 분홍색 하늘색 갈색 검은색 흰색 회색 연두색 청록색 자주색 금색 은색 베이지 살구색 감색 카키 네이비 민트 인디고 마젠타 시안 코랄 라벤더 버건디 올리브 터콰이즈 빨강 주황 노랑 초록 파랑 보라 분홍 하늘 갈색 검정 하양 회색 연두 청록 자주 금 은 갈 흑 백 적 청 황 녹 자 크림색 아이보리 와인색 보르도 카멜 차콜 쪽빛 비취색 옥색 밤색 쑥색 겨자색 레몬색 오렌지색 핑크 블루 레드 그린 옐로 블랙 화이트 그레이 브라운 퍼플 골드 실버 브론즈 에메랄드색 코발트블루 로열블루 스카이블루 베이비핑크 핫핑크 샐몬핑크 로즈 체리레드 토마토색 진홍 주홍 담홍 연분홍]],
    ['무지개색']=W[[빨강 주황 노랑 초록 파랑 남색 보라 빨간색 주황색 노란색 초록색 파란색 보라색 남 적 등 황 녹 청 람 자 무지개 적색 등색 황색 녹색 청색 남색 자색]],
    ['방향']=W[[동 서 남 북 동쪽 서쪽 남쪽 북쪽 동북 동남 서북 서남 위 아래 앞 뒤 왼쪽 오른쪽 안 밖 가운데 중앙 좌 우 상 하 전 후 동북쪽 동남쪽 서북쪽 서남쪽 북동 북서 남동 남서 위쪽 아래쪽 앞쪽 뒤쪽 안쪽 바깥쪽 옆 곁 가장자리 모퉁이 구석 한가운데 정중앙 중심 중간]],
    ['숫자']=W[[하나 둘 셋 넷 다섯 여섯 일곱 여덟 아홉 열 스물 서른 마흔 쉰 예순 일흔 여든 아흔 영 일 이 삼 사 오 육 칠 팔 구 십 백 천 만 억 조 첫째 둘째 셋째 넷째 다섯째 여섯째 일곱째 여덟째 아홉째 열째 한 두 세 네 반 절반 곱 배 홀수 짝수 정수 분수 소수 자연수 약수 배수 소인수 제곱 세제곱 루트 합 차 곱 몫 나머지 영점]],
    ['가족']=W[[아버지 어머니 아빠 엄마 할아버지 할머니 형 누나 오빠 언니 동생 삼촌 이모 고모 외삼촌 큰아버지 작은아버지 사촌 조카 며느리 사위 아들 딸 손자 손녀 남편 아내 시부모 장인 장모 부모 자식 형제 자매 남매 쌍둥이 친척 외할아버지 외할머니 친할아버지 친할머니 이모부 고모부 큰어머니 작은어머니 외숙모 시어머니 시아버지 처남 처제 형부 제부 매형 매제 올케 형수 제수 시누이 시동생 시숙 동서 의붓아버지 의붓어머니 계모 계부 양아버지 양어머니 양자 양녀 입양아 외손자 외손녀 증조할아버지 증조할머니 고조할아버지]],
    ['학교']=W[[선생님 학생 교장 교감 반장 부반장 급식 교과서 칠판 분필 운동장 시험 숙제 소풍 운동회 방학 졸업 입학 개학 쉬는시간 교실 복도 교무실 도서관 급식실 매점 강당 체육관 과학실 음악실 미술실 컴퓨터실 보건실 상담실 방송실 화장실 교문 학년 반 번호 출석 결석 지각 조퇴 수업 점심시간 청소시간 조회 종례 전학 졸업식 입학식 수학여행 현장학습 학예회 체육대회 합창대회 백일장 사생대회 글쓰기 받아쓰기 암기 복습 예습 필기 노트 공책 시간표 성적표 통지표 생활기록부 반배정 짝꿍 단짝 친구 동기 선배 후배 급우 동창 담임 부담임 교사 교수 강사 조교 학부모 학교폭력]],
    ['의성어']=W[[멍멍 야옹 꿀꿀 음메 꽥꽥 짹짹 개굴개굴 맴맴 졸졸 쨍쨍 퐁당 퐁당퐁당 철썩 쾅 쿵 쿵쿵 탕 탕탕 똑똑 딩동 째깍째깍 부릉부릉 빵빵 삐약삐약 꼬끼오 꽥 까악까악 깍깍 구구 뻐꾹 뻐꾹뻐꾹 부엉부엉 윙윙 붕붕 앵앵 쌩쌩 휙휙 쿨쿨 드르렁 으르렁 어흥 히힝 매애 메에 음매 찍찍 쪽쪽 쩝쩝 후루룩 꿀꺽 와작와작 아삭아삭 바삭바삭 오독오독 쫄깃쫄깃 보글보글 지글지글 보슬보슬 후두둑 주룩주룩 솨솨 쏴아 우르르 우르르쾅쾅 번쩍 번쩍번쩍]],
    ['의태어']=W[[반짝반짝 데굴데굴 아장아장 깡충깡충 엉금엉금 살금살금 두근두근 콩닥콩닥 와글와글 빙글빙글 팔랑팔랑 헐레벌떡 허둥지둥 우물쭈물 꾸물꾸물 느릿느릿 어슬렁어슬렁 터벅터벅 뚜벅뚜벅 성큼성큼 총총 사뿐사뿐 비틀비틀 휘청휘청 흔들흔들 하늘하늘 나풀나풀 한들한들 살랑살랑 간들간들 번쩍번쩍 깜박깜박 반들반들 매끈매끈 보들보들 말랑말랑 몰랑몰랑 쫀득쫀득 촉촉 끈적끈적 눅눅 뽀송뽀송 포근포근 따끈따끈 후끈후끈 으슬으슬 오들오들 부들부들 덜덜 벌벌 바들바들 울퉁불퉁 들쭉날쭉 올망졸망 옹기종기 다닥다닥 빽빽 드문드문 군데군데 구불구불 꼬불꼬불 삐죽삐죽 뾰족뾰족 둥글둥글 동글동글 길쭉길쭉 짤막짤막]],
    ['공휴일']=W[[설날 추석 어린이날 광복절 개천절 한글날 삼일절 현충일 성탄절 크리스마스 부처님오신날 석가탄신일 신정 제헌절 식목일 어버이날 스승의날 발렌타인데이 화이트데이 빼빼로데이 칠석 단오 정월대보름 동지 한식 입춘 대체공휴일 임시공휴일 근로자의날 노동절 국군의날 만우절 광복 건군 현충 개천 한글 삼일 어린이 설 추석연휴 새해 새해첫날 성년의날 부부의날 세계여성의날 지구의날 환경의날 법의날 정보통신의날 체육의날 문화의날 청년의날 노인의날 장애인의날 원주민의날 독도의날 순국선열의날 6월항쟁 4월혁명 5월광주 3월1일 8월15일]],
    ['한국을 빛낸 100명의 위인들']=W[[강감찬 계백 곽재우 관창 광개토대왕 권율 김대건 김두한 김부식 김삿갓 김시민 김옥균 김유신 김정호 김홍도 논개 단군 단군왕검 단군할아버지 단종 대조영 동명왕 맹사성 문무왕 문익점 문종 박문수 박혁거세 방정환 백결 백결선생 사육신 삼학사 생육신 서희 세조 세종 세종대왕 손병희 신사임당 신숙주 심순애 안중근 안창호 영조 온조왕 원효 원효대사 유관순 윤동주 율곡 의자왕 의천 이사부 이상 이수일 이순신 이완용 이종무 이중섭 일연 임꺽정 장보고 장영실 전봉준 정몽주 정약용 정조 정종 정중부 죽림칠현 지눌 지석영 최무선 최영 최충 태조 태종 퇴계 한명회 한석봉 혜초 홍경래 홍길동 황진이 황희 황희정승]],
    ['위인']=W[[세종대왕 이순신 안중근 유관순 김구 신사임당 정약용 장영실 광개토대왕 을지문덕 강감찬 김유신 왕건 이성계 정조 허준 김정호 윤동주 한용운 안창호 서재필 윤봉길 이봉창 홍범도 김좌진 최무선 이황 이이 정몽주 장보고 허균 박지원 김홍도 신윤복 한석봉 아인슈타인 뉴턴 에디슨 갈릴레오 다윈 파스퇴르 모차르트 베토벤 바흐 피카소 고흐 레오나르도다빈치 셰익스피어 나폴레옹 링컨 간디 마더테레사 넬슨만델라 퀴리부인 노벨 라이트형제 벨 스티븐호킹 테슬라 마리퀴리 아리스토텔레스 소크라테스 플라톤 공자 맹자 석가모니 예수 무함마드 칭기즈칸 알렉산더대왕 시저 클레오파트라 워싱턴 케네디 처칠 루스벨트 헬렌켈러 나이팅게일 슈바이처 안네프랑크 마틴루터킹 체게바라 단군 주몽 박혁거세 선덕여왕 연개소문 김춘추 의상 원효 최치원 대조영 계백 성삼문 사육신 조광조 퇴계 율곡 이몽룡 홍길동 임꺽정 논개 황진이 허난설헌 김만덕 이상재 주시경 방정환 김소월 이상 윤봉길 나혜석 안익태 백남준 이중섭 박수근 김환기 전형필 간송 정주영 이병철]],
    ['조선 왕']=W[[태조 정종 태종 세종 문종 단종 세조 예종 성종 연산군 중종 인종 명종 선조 광해군 인조 효종 현종 숙종 경종 영조 정조 순조 헌종 철종 고종 순종 이성계 이방과 이방원 이도 이향 이홍위 이유 이황 이융 이역 이혁 이종 이환 이연 이혼 이종 이호 이연 이순 이현 이균 이금 이행 이원범 이재황 이척 이방석]],
    ['계급']=W[[이병 일병 상병 병장 하사 중사 상사 원사 소위 중위 대위 소령 중령 대령 준장 소장 중장 대장 원수 준위 부사관 장교 사병 용사 훈련병 사관생도 장성 영관 위관 군인 병사 간부 사령관 참모 연대장 대대장 중대장 소대장 분대장 사단장 군단장 여단장 총장 합참의장 국방장관 순경 경장 경사 경위 경감 경정 총경 경무관 치안감 치안정감 치안총감 소방사 소방교 소방장 소방위 소방경 소방령 소방정 소방준감 소방감 소방정감 소방총감 사원 주임 대리 과장 차장 부장 이사 상무 전무 부사장 사장 회장 대표 팀장 실장 본부장 센터장 사무관 서기관 부이사관 이사관 차관보 차관 장관]],
    ['한글 자음']=W[[ㄱ ㄴ ㄷ ㄹ ㅁ ㅂ ㅅ ㅇ ㅈ ㅊ ㅋ ㅌ ㅍ ㅎ ㄲ ㄸ ㅃ ㅆ ㅉ 기역 니은 디귿 리을 미음 비읍 시옷 이응 지읒 치읓 키읔 티읕 피읖 히읗 쌍기역 쌍디귿 쌍비읍 쌍시옷 쌍지읒]],
    ['한글 모음']=W[[ㅏ ㅑ ㅓ ㅕ ㅗ ㅛ ㅜ ㅠ ㅡ ㅣ ㅐ ㅒ ㅔ ㅖ ㅘ ㅙ ㅚ ㅝ ㅞ ㅟ ㅢ 아 야 어 여 오 요 우 유 으 이 애 얘 에 예 와 왜 외 워 웨 위 의]],
    ['우주']=W[[태양 달 지구 수성 금성 화성 목성 토성 천왕성 해왕성 명왕성 별 은하수 혜성 유성 소행성 위성 블랙홀 성운 은하 우주선 인공위성 망원경 로켓 우주정거장 중력 일식 월식 오로라 북극성 초신성 퀘이사 암흑물질 암흑에너지 빅뱅 태양계 외계인 우주인 우주복 우주비행사 나로호 누리호 아폴로 보이저 허블 제임스웹 스푸트니크 가가린 암스트롱 달착륙 화성탐사 큐리오시티 퍼서비어런스 국제우주정거장 적색거성 백색왜성 중성자별 쌍성 변광성 구상성단 산개성단 안드로메다 대마젤란은하 소마젤란은하 오리온성운 게성운 카이퍼벨트 오르트구름 케레스 에리스 하우메아 마케마케]],
    ['공룡']=W[[티라노사우루스 트리케라톱스 스테고사우루스 브라키오사우루스 벨로시랩터 프테라노돈 안킬로사우루스 디플로도쿠스 스피노사우루스 이구아노돈 알로사우루스 파라사우롤로푸스 케라토사우루스 아파토사우루스 마이아사우라 에드몬토사우루스 파키케팔로사우루스 갈리미무스 딜로포사우루스 유타랍토르 브론토사우루스 기가노토사우루스 카르노타우루스 콤프소그나투스 오비랍토르 프로토케라톱스 람베오사우루스 코리토사우루스 사우롤로푸스 모사사우루스 플레시오사우루스 익티오사우루스 아르젠티노사우루스 티타노사우루스 쥐라기 백악기 트라이아스기 화석 공룡알 공룡뼈 익룡 수장룡 어룡 매머드 검치호랑이 삼엽충 암모나이트 시조새 아키오프테릭스]],
    ['게임']=W[[마인크래프트 로블록스 포트나이트 리그오브레전드 오버워치 배틀그라운드 마리오 젤다 포켓몬스터 별의커비 스타크래프트 디아블로 메이플스토리 던전앤파이터 어몽어스 앵그리버드 쿠키런 서든어택 카트라이더 크레이지아케이드 닌텐도 플레이스테이션 엑스박스 스위치 와이 스팀 롤 오버워치2 발로란트 피파 위닝일레븐 동물의숲 스플래툰 슈퍼마리오 소닉 팩맨 테트리스 갤러가 보글보글 스트리트파이터 철권 쿠키런킹덤 브롤스타즈 클래시로얄 클래시오브클랜 모두의마블 윷놀이 바람의나라 리니지 마비노기 로스트아크 검은사막 월드오브워크래프트 하스스톤 갓오브워 라스트오브어스 젤다의전설 파이널판타지 드래곤퀘스트 몬스터헌터 어쌔신크리드 콜오브듀티 GTA 레드데드리댐션 사이버펑크 엘든링 다크소울 스타듀밸리 테라리아 포탈 하프라이프 카운터스트라이크 도타2 로켓리그 폴가이즈 같이펀딩]],
    ['보드게임']=W[[체스 바둑 장기 오목 윷놀이 윷 모노폴리 부루마블 젠가 루미큐브 할리갈리 우노 트럼프 화투 포커 블랙잭 도미노 틱택토 체커 마작 딱지치기 공기놀이 제기차기 팽이치기 비석치기 술래잡기 숨바꼭질 스크래블 카탄 팬데믹 디크릿 스플렌더 카르카손 티켓투라이드 도블 쿼리도 스트라티고 리스크 클루 다빈치코드 젠가 뱀주사위 뱀사다리 주사위 보드게임 카드게임 방탈출 마피아 라이어게임 쥬만지 보글 요트다이스 야찌 카멜업 로스트시티 페이퍼 아줄 윙스팬]],
    ['자동차브랜드']=W[[현대 기아 제네시스 쌍용 르노 쉐보레 토요타 혼다 닛산 마쯔다 렉서스 스바루 미쓰비시 벤츠 비엠더블유 BMW 아우디 폭스바겐 포르쉐 볼보 사브 페라리 람보르기니 마세라티 롤스로이스 벤틀리 부가티 맥라렌 애스턴마틴 재규어 랜드로버 미니 푸조 시트로엥 피아트 알파로메오 포드 캐딜락 링컨 지프 닷지 테슬라 크라이슬러 허머 비야디 KGM 르노코리아 한국GM 이스즈 다이하쓰 스즈키 인피니티 어큐라 폴스타 리비안 루시드 로터스 코닉세그 파가니 쿠프라 스코다 세아트 오펠 다치아 랜치아 시트로앵 DS 마힌드라 타타 체리 지리 창안 BYD 니오 샤오펑]],
    ['IT기업']=W[[삼성 애플 구글 마이크로소프트 아마존 메타 페이스북 네이버 카카오 라인 쿠팡 배달의민족 토스 당근 넷플릭스 유튜브 틱톡 트위터 엑스 인스타그램 링크드인 엔비디아 인텔 AMD 퀄컴 소니 닌텐도 삼성전자 LG전자 SK하이닉스 현대자동차 테슬라 오픈AI 앤트로픽 딥마인드 화웨이 샤오미 알리바바 텐센트 바이두 우버 에어비앤비 스포티파이 디스코드 슬랙 줌 드롭박스 깃허브 노션 피그마 어도비 오라클 IBM 시스코 델 HP 레노버 에이수스 에이서 로지텍 레이저 시게이트 웨스턴디지털 마이크론 TSMC]],
    ['스마트폰']=W[[갤럭시 아이폰 픽셀 샤오미 화웨이 오포 비보 원플러스 모토로라 소니엑스페리아 노키아 LG 팬택 스카이 베가 갤럭시S 갤럭시노트 갤럭시Z 폴드 플립 아이폰프로 아이폰맥스 아이폰SE 갤럭시A 갤럭시M 레드미 포코 리얼미 아너 트랜션 잇츠 에이수스ROG 블랙샤크 누비아 갤럭시탭 아이패드 에어팟 갤럭시버즈 애플워치 갤럭시워치]],
    ['컴퓨터']=W[[컴퓨터 노트북 키보드 마우스 모니터 프린터 스피커 이어폰 헤드폰 스마트폰 태블릿 충전기 배터리 메모리 하드디스크 와이파이 블루투스 인터넷 이메일 앱 소프트웨어 하드웨어 서버 클라우드 인공지능 로봇 드론 해킹 바이러스 백신 암호 비밀번호 파일 폴더 바탕화면 마우스패드 웹캠 마이크 USB SSD CPU GPU RAM 메인보드 파워서플라이 쿨러 케이스 그래픽카드 사운드카드 랜카드 공유기 모뎀 스위치 허브 라우터 서버실 데이터센터 프로그래머 코딩 알고리즘 데이터베이스 네트워크 프로토콜 브라우저 검색엔진 운영체제 윈도우 맥 리눅스 안드로이드 iOS 크롬 엣지 파이어폭스 사파리]],
    ['프로그래밍 언어']=W[[파이썬 자바 자바스크립트 루아 루비 러스트 코틀린 스위프트 타입스크립트 파스칼 코볼 포트란 펄 하스켈 스칼라 씨언어 씨플러스플러스 씨샵 고 다트 엘릭서 클로저 어셈블리 베이직 비주얼베이직 델파이 매트랩 알 줄리아 스크래치 엔트리 SQL HTML CSS PHP 자바스크립트 리액트 뷰 앵귤러 노드 장고 플라스크 스프링 라라벨 레일즈]],
    ['편의점']=W[[CU GS25 세븐일레븐 이마트24 미니스톱 씨유 지에스이십오 위드미 바이더웨이 패밀리마트 훼미리마트 로손 하이마트 롯데슈퍼 홈플러스익스프레스 GS더프레시 노브랜드 올리브영 다이소 이마트 롯데마트 홈플러스 코스트코 트레이더스 하나로마트 농협마트 메가마트 탑마트 아크로마트]],
    ['패스트푸드']=W[[맥도날드 버거킹 롯데리아 KFC 맘스터치 파파이스 서브웨이 도미노피자 피자헛 파파존스 미스터피자 쉑쉑버거 프랭크버거 노브랜드버거 맥도날 웬디스 타코벨 칙필레이 파이브가이즈 인앤아웃 다이어트버거 한솥 본도시락 김밥천국 신전떡볶이 엽기떡볶이 죠스떡볶이 국대떡볶이 청년다방 응급실국물떡볶이 명랑핫도그 이삭토스트 에그드랍 맘스터치 크라이치즈버거 햄버거 치킨버거 새우버거 불고기버거 치즈버거 빅맥 와퍼 상하이스파이시치킨버거]],
    ['커피 브랜드']=W[[스타벅스 이디야 투썸플레이스 메가커피 컴포즈커피 빽다방 할리스 엔제리너스 탐앤탐스 폴바셋 커피빈 매머드커피 더벤티 공차 파스쿠찌 카페베네 카페드롭탑 드롭탑 요거프레소 하삼동커피 아티제 블루보틀 맥카페 맥커피 바나프레소 달콤커피 카페마마스 커피베이 토프레소 올래커피 감성커피 이디야커피 커피니 카페게이트 테라로사 앤트러사이트 프릳츠 커피리브레 나무사이로 빈브라더스 스타벅스리저브 블랙업 커피나무]],
    ['치킨집']=W[[교촌치킨 BBQ bhc 굽네치킨 네네치킨 페리카나 처갓집양념치킨 푸라닭 노랑통닭 맥시칸치킨 멕시카나 호식이두마리치킨 60계치킨 바른치킨 지코바 자담치킨 오븐에빠진닭 후라이드참잘하는집 교촌 비비큐 비에이치씨 굽네 네네 페리카나치킨 처갓집 호식이 치킨마루 치킨플러스 땅땅치킨 오구쌀통닭 가마로강정 쌀통닭 또래오래 꾸브라꼬 치킨매니아 깐부치킨 부어치킨 부자피자 치킨신화 교촌레드 허니콤보 레드콤보 황금올리브 뿌링클 맛초킹 쇼킹핫 간장치킨 양념치킨 후라이드치킨 반반치킨 파닭 마늘치킨 순살치킨 닭강정 닭다리 닭날개 닭봉 닭똥집]],
    ['아이스크림']=W[[배스킨라빈스 베스킨라빈스 나뚜루 하겐다즈 설빙 투게더 월드콘 메로나 비비빅 죠스바 스크류바 누가바 부라보콘 쌍쌍바 수박바 보석바 구구콘 빵빠레 설레임 폴라포 탱크보이 더위사냥 아맛나 뽕따 캔디바 쥬시쿨 밀크바 바밤바 엑설런트 옥동자 와일드바디 슈퍼콘 슈팅스타 체리쥬빌레 엄마는외계인 초코나무숲 민트초코 바닐라 초코 딸기 녹차 쿠키앤크림 레인보우샤베트 슈팅스타 아몬드봉봉 이상한나라의솜사탕 엄마는외계인 바나나 망고 요거트 피스타치오 베리베리스트로베리 뉴욕치즈케이크 초콜릿무스 사랑에빠진딸기 오레오쿠키앤크림]],
    ['라면']=W[[신라면 진라면 너구리 안성탕면 짜파게티 불닭볶음면 삼양라면 육개장 열라면 비빔면 팔도비빔면 오징어짬뽕 참깨라면 컵누들 틈새라면 스낵면 김치라면 공화춘 팔도도시락 컵라면 육개장사발면 신라면블랙 진짬뽕 진짜장 짜왕 쫄병스낵 새우탕 꼬꼬면 나가사끼짬뽕 사리곰탕 해물라면 맛있는라면 순한맛 매운맛 불닭 까르보불닭 치즈불닭 핵불닭 쇠고기라면 오뚜기라면 진비빔면 쫄면 냉면 열무비빔면 비빔냉면 왕뚜껑 튀김우동 오동통면 비빔장 라볶이 부대라면 치즈라면 떡라면 만두라면 계란라면 짜장라면 짬뽕라면 우동라면 소고기라면 해장라면 라면사리 면 건면 생면 숙면]],
    ['햄버거']=W[[빅맥 와퍼 불고기버거 치즈버거 더블치즈버거 새우버거 치킨버거 베이컨버거 아보카도버거 비건버거 쉑버거 스모크쉑 쿼터파운더 맥치킨 맥스파이시 상하이버거 싸이버거 통새우버거 리아미라클 한우불고기버거 데리버거 리브레 하와이안버거 미트볼버거 에그버거 모짜렐라인더버거 트러플버거 파인애플버거 크리스피버거 폭탄버거 타워버거 번 패티 양상추 토마토 피클 양파 치즈 베이컨 소스 케첩 머스터드 마요네즈 감자튀김 콜라 너겟 어니언링 치킨텐더 윙 쉐이크 선데이]],
    ['피자 토핑']=W[[페퍼로니 치즈 모짜렐라 베이컨 햄 소시지 불고기 새우 오징어 파인애플 올리브 양파 피망 파프리카 버섯 양송이 토마토 바질 마늘 고구마 옥수수 감자 브로콜리 시금치 고르곤졸라 리코타 체다 파마산 크림치즈 스위트콘 할라피뇨 닭고기 치킨 쇠고기 스테이크 바비큐 하와이안 콤비네이션 슈프림 고구마무스 갈릭 트러플 루꼴라 프로슈토 살라미 안초비 아티초크 가지 호박 대파 청양고추 베이컨칩 치킨텐더 포테이토 콘 크림소스 토마토소스 바비큐소스 허니머스타드]],
    ['소고기']=W[[등심 안심 채끝 갈비 차돌박이 양지 사태 우둔 설도 목심 앞다리 뒷사태 부채살 살치살 갈비살 토시살 안창살 제비추리 업진살 치마살 아롱사태 홍두깨살 보섭살 삼각살 꾸리살 앞치마살 갈빗대 꼬리 우족 도가니 곱창 대창 막창 양 천엽 지라 간 허파 혀 우설 사골 잡뼈 스지 힘줄 선지 육회 불고기 장조림 육포 한우 육우 수입소고기 미국산 호주산 와규 안심스테이크 립아이 티본 토마호크 서로인 필레미뇽]],
    ['돼지고기']=W[[삼겹살 목살 항정살 가브리살 갈매기살 앞다리살 뒷다리살 등갈비 목전지 갈비 안심 등심 돈까스 오겹살 껍데기 족발 순대 머릿고기 귀 돼지껍데기 곱창 막창 순대국 수육 보쌈 제육 폭립 베이컨 햄 소시지 햄버그 탕수육 김치찌개 두루치기 동그랑땡 돼지갈비 돼지불백 불고기 앞사태 뒷사태 홍두깨살 도가니 사골 오돌뼈 오소리감투 돈마호크 한돈 흑돼지 제주흑돼지 이베리코 삼겹 목살구이 항정구이 갈매기구이]],
    ['닭고기']=W[[닭가슴살 닭다리 닭날개 닭봉 닭똥집 닭발 닭목 닭꼬치 닭갈비 닭강정 닭볶음탕 찜닭 삼계탕 백숙 치킨 프라이드치킨 양념치킨 닭죽 닭곰탕 닭칼국수 닭개장 닭한마리 닭도리탕 닭튀김 닭안심 닭다리살 닭정육 통닭 영계 토종닭 오골계 씨암탉 수탉 암탉 병아리 닭껍질 닭내장 닭간 닭염통 닭모래집 치킨너겟 치킨텐더 치킨스테이크 치킨가스 치킨윙 치킨샐러드 닭가슴살샐러드 훈제닭 로스트치킨 바비큐치킨 탄두리치킨 버팔로윙 후라이드 양념반후라이드반]],
    ['요리']=W[[볶음 구이 찜 조림 튀김 무침 전 부침 국 탕 찌개 전골 죽 밥 면 비빔 냉채 샐러드 수프 스튜 그라탱 리조또 파스타 덮밥 볶음밥 주먹밥 김밥 초밥 롤 샌드위치 토스트 팬케이크 와플 크레페 오믈렛 계란말이 계란찜 계란프라이 수란 삶은계란 훈제 숙성 발효 절임 장아찌 젓갈 김치 피클 잼 청 효소 식혜 수정과 막걸리 식초 간장 된장 고추장 쌈장]],
    ['요리 방법']=W[[볶다 굽다 찌다 삶다 튀기다 끓이다 졸이다 무치다 부치다 데치다 지지다 볶음 구이 찜 삶음 튀김 조림 무침 부침 데침 지짐 절임 훈제 숙성 발효 건조 냉동 해동 반죽 숙성 재우다 썰다 다지다 갈다 으깨다 섞다 젓다 거품내다 체치다 우리다 불리다 헹구다 씻다 껍질벗기다 손질하다 간하다 양념하다 버무리다 볶아내다 익히다 굽기 찌기 삶기 튀기기 끓이기 졸이기 무치기 부치기 데치기 지지기]],
    ['색깔']=W[[빨간색 주황색 노란색 초록색 파란색 남색 보라색 분홍색 하늘색 갈색 검은색 흰색 회색 연두색 청록색 자주색 금색 은색 베이지 살구색 감색 카키 네이비 민트 인디고 마젠타 시안 코랄 라벤더 버건디 올리브 터콰이즈 빨강 주황 노랑 초록 파랑 보라 분홍 하늘 갈색 검정 하양]],
    ['교통수단']=W[[자동차 버스 지하철 기차 비행기 헬리콥터 배 자전거 오토바이 택시 트럭 소방차 구급차 경찰차 열기구 로켓 우주선 잠수함 요트 유람선 케이블카 트램 킥보드 인라인스케이트 스케이트보드 모노레일 KTX 전동킥보드 자기부상열차 고속버스 시내버스 마을버스 광역버스 시외버스 심야버스 관광버스 전철 경전철 무궁화호 새마을호 ITX SRT 고속열차 화물열차 여객선 카페리 쾌속선 나룻배 곤돌라 리프트 에스컬레이터 엘리베이터 무빙워크 비행선 경비행기 여객기 전투기]],
    ['직장']=W[[회사 사무실 공장 은행 병원 학교 관공서 시청 구청 동사무소 우체국 경찰서 소방서 법원 검찰청 국회 청와대 대기업 중소기업 스타트업 벤처 공기업 외국계 프리랜서 자영업 가게 상점 식당 카페 편의점 마트 백화점 공사장 농장 어장 광산 연구소 실험실 스튜디오 방송국 신문사 출판사 도서관 박물관 미술관 극장 영화관 호텔 리조트 공항 항만 철도 지하철 버스회사 택시회사 물류센터 창고 택배 배달]],
    ['속담']=W[[가는말이고와야오는말이곱다 낮말은새가듣고밤말은쥐가듣는다 아니땐굴뚝에연기날까 뿌린대로거둔다 호랑이도제말하면온다 원숭이도나무에서떨어진다 소잃고외양간고친다 엎지른물 하늘의별따기 누워서침뱉기 우물안개구리 고래싸움에새우등터진다 가재는게편 개구리올챙이적생각못한다 금강산도식후경 천리길도한걸음부터 티끌모아태산 쇠귀에경읽기 백지장도맞들면낫다 식은죽먹기 땅짚고헤엄치기 누워서떡먹기 꿩먹고알먹기 도랑치고가재잡기 일석이조 우이독경 사필귀정 인과응보 자업자득 새옹지마 전화위복 칠전팔기 대기만성 유비무환 동문서답 이심전심 일편단심 과유불급 오비이락 호사다마 설상가상 금상첨화 아전인수 역지사지 백문이불여일견 고진감래 시작이반이다]],
}
mergeWords(more)
-- Built-in examples; each game decides which dictionary entries it accepts.
bank['훈민정음']={'상의','상어','사원','수영','서울','성인','생일','소원','소음','시인','시월','새우','수업','선언','손익','사이','속옷','스윙','가방','가위','고기','공원','기차','기분','나무','노래','다리','도시','도로','라면','마음','모자','바다','버스','사과','수박','시계','시장','아침','여름','연필','오늘','우유','의자','자동차','자전거','지구','참새','커피','토끼','학교','하늘','호수','화분','휴지','낙엽','눈물','담요','달빛','바람','비누','소금','소리','음악','이불','이름','장미','전화','친구','코끼리','태양','풍선'}
-- Two-syllable dictionary-style noun candidates for initial-consonant rounds.
local hunminWords=[[
가게 가격 가구 가락 가루 가마 가면 가문 가슴 가을 가족 가지 간식 간장 감기 감동 감자 강물 강의 강철
거리 거미 거울 거짓 건물 걸음 겨울 결심 경계 경제 경기 경험 계단 계절 고개 고래 고무 고전 고향 곡물 골목
공간 공기 공부 공장 과거 과일 과자 관리 관심 관찰 광장 교실 교통 구름 구멍 구역 구이 군대 권리 귀신 균형
그늘 그림 극장 근육 글씨 금액 금속 기계 기념 기름 기쁨 기억 기적 기후 길이 까치 꼬리 꽃잎 꿈속
나라 나비 나이 낙원 낮잠 내일 냄비 노을 노인 노력 녹음 농구 눈길 눈빛 느낌 늑대 능력
다음 단어 단추 달걀 달력 달리 답장 대답 대문 대화 도구 도서 도전 독서 동네 동물 동생 동전 두부 두통
마당 마늘 마법 마을 만남 만두 만화 말투 매력 맥주 머리 메달 메뉴 면접 명단 모래 모임 목욕 목적
무게 무늬 무덤 무릎 문제 문장 문화 물건 물결 미래 미소 미역 민요 밀가
바구 바늘 바닥 바람 바위 박수 반달 반지 발목 발자 방문 방법 방송 방향 배경 배달 배추 백성 버릇 벌레
벽돌 변화 병원 보석 보안 보리 복도 복숭 본능 봄날 부엌 부모 부담 부자 분노 분수 불꽃 불빛 비밀 비행
사람 사슴 사전 사탕 사진 산길 산책 살림 삼촌 상태 상자 새벽 생선 생활 서랍 서점 선물 선택 설탕 성격
세계 세상 소리 소문 소식 소원 손길 손님 수건 수도 수면 수업 수염 수저 숙제 순간 숲길 습관
시간 시골 시내 시작 시험 신발 신호 실내 실수 심장 싸움 쌀밥 아기 아이 악기 안경 안개 안전
약속 양말 양식 어깨 어른 언니 얼굴 여관 여권 여행 역사 열쇠 열차 영화 예술 예절 오리 오염 오전
온도 왕국 외국 요금 요리 욕심 용기 우산 우정 우주 운명 운동 원인 원칙 월급 위험 유리 유산 음악
의견 의료 의문 이별 이사 이익 인생 인형 일기 일상 입술 잎새
자국 자리 자석 자연 자유 작가 잔디 잠옷 장갑 장난 장소 장식 재능 재료 저녁 전기 전날 전설 전쟁
절약 점심 정답 정리 정보 정원 제도 제비 조각 조건 조명 조상 주말 주인 준비 중간 지갑 지름 지식 질문
차량 차이 찬물 창문 책장 철도 철학 청소 체력 초대 초록 촛불 추억 축구 출구 취미 친구 침대
카드 칼날 커튼 코끝 콩나 크기 큰길 타자 탄생 탑승 태도 토끼 통계 통로 투명 튼튼 특성
파도 파리 파악 파티 패배 편지 평화 포도 폭풍 표정 풍경 피부 피자 필요 필통
하교 하늘 하루 학급 학기 학생 한글 한복 한숨 함성 해답 해변 행복 향기 허리 현관 형제 호랑
화폐 한편 허파
호박 호수 혼자 화가 화단 화면 환경 환자 활기 회사 효과 후회 휴가 희망
]]
local hunminMore=[[
잡채 냉면 피자 치킨 초밥 우동 카레 호떡 와플 도넛 쿠키 순대 족발 보쌈 곰탕 쫄면 밀면 떡국
사자 기린 판다 늑대 여우 토끼 하마 표범 치타 낙타 펭귄 참새 가재 악어 거미 나비 꿀벌 수달 물개 노루 타조 제비 까치
부산 인천 대구 대전 광주 울산 수원 성남 고양 용인 청주 전주 천안 안산 경주 강릉 속초 춘천 여수 통영 포항 안동 목포
강남 잠실 홍대 명동 종묘 뉴욕 파리 런던 로마 발리 홍콩
농부 어부 해녀 목수 광부 탐정 사서 심판
야구 배구 탁구 골프 볼링 당구 요트 카누 조정 컬링 스키 루지 육상 역도 유도 검도 펜싱 복싱 씨름 양궁 사격 승마 체조 럭비 하키 족구 피구 카약 요가
골프 꼬깔 꼬마 꼭지 누나 나사 눈치 단풍 딸기 또래 떡살 로고 리본 로션 로켓 링크 루피 리필 문패 바퀴 비커 부피 빨강 새싹 스키 서핑 잉크 우표 조카 지폐 칠판 콧물 커브 키스 코치 커튼 타일 터빈 택시 토치 틴트 토핑 파문 파이 펀치 포크 폭포 하품
]]
-- Several options for the same initial pair, not one fixed answer per pair.
local hunminVariants=[[
기포 간판 거품 계피 꽃밭 꽃병 꽃술 꽃샘 꿀샘 꽃집 꽃전 꽃차 나날 내년 노동 농담 난동 낙지 남자 논쟁
낙찰 노출 눈총 노트 농토 녹턴 도둑 도덕 대두 동창 당첨 대책 대출 대추 동태 닥터 대패 동판 돌풍
대학 도형 동화 땅속 리그 레고 레슨 로스 렌즈 레저 루트 리터 렌트 메모 몸매 무명 문명 미모
명분 문법 물병 미터 민트 목탁 모터 발끝 바깥 볍쌀 반찬 부채 발표 반팔 별표 보폭 빼기
실크 소켓 스캔 쌈밥 쌍방 쌍벽 이끼 앵커 오크 잔치 주차 정치 지출 조커 정품 작품 지표 자판
조합 장화 정화 진흙 초청 철창 충치 초코 체크 찬탈 침투 철판 철폐 창포 철회 축하
코드 캔디 코믹 커버 콤보 코인 캐치 카트 키트 커터 카페 캠프 쿠폰 털끝 토대 탄도 특등
트럭 타령 탄력 탈모 톱밥 택배 탈출 퇴출 퇴치 터치 토큰 태클 태풍 투표 피로 폭력 풍랑
품목 표면 판매 풍차 포차 핑크 파크 화해 현황 호흡 항해
]]
local seenHunmin={}
for _,word in ipairs(bank['훈민정음']) do seenHunmin[word]=true end
for _,source in ipairs({hunminWords,hunminMore,hunminVariants}) do
    for word in source:gmatch('%S+') do
        if utf8.len(word)==2 and not seenHunmin[word] then
            table.insert(bank['훈민정음'],word)
            seenHunmin[word]=true
        end
    end
end
-- Long noun candidates are also available to the long-word chain mode.
bank['끝말잇기']={}
local chainWords=[[
가로등불빛 가스레인지 가족관계증명서 간이정류장 간이화장실 감자고로케 강아지풀 강원특별자치도
거리두기 거북목증후군 건축설계도 검은머리물떼새 겨울방학 고속도로 고슴도치 고용보험
공공도서관 공기청정기 과학기술원 국립공원 국제공항 국제우주정거장 군사훈련 기상관측소 기차역사
김치볶음밥 김치찌개 까치발걸음 꽃가루알레르기 나무젓가락 남극대륙 내비게이션 냉동식품
노랑가오리 녹색신호등 농구선수 다람쥐꼬리 다목적체육관 다용도보관함 단풍나무 달걀프라이
대기오염 대중교통 도서관장 도자기공예 동물원입구 동해안도로 두루마리휴지 땅콩버터
라디오방송 라면스프 마을버스 만년필잉크 머리카락 모래시계 목도리털 목요일아침 무선이어폰
물놀이공원 미끄럼틀 바다거북 바다표범 바람개비 바위틈새 반딧불이 발레리나 방송국직원
배드민턴 배추김치 백두대간 보건소장 봄나들이 부엌칼날 부동산중개사 불가사리
비빔국수 비상계단 사과나무 사계절날씨 사물인터넷 사회복지사 산딸기나무 산림보호구역
생활체육관 서해안고속도로 선인장꽃 소나무숲 소방자동차 손목시계 수영선수 스마트폰
승용자동차 시내버스 신문기자 실내수영장 아기고양이 아스파라거스 안데스산맥
알락꼬리여우원숭이 양념치킨 어린이집 에스컬레이터 연필깎이 오징어튀김 외국어사전
우거지해장국 우체국직원 운동화끈 원자력발전소 유리창문 음악교실 의사소통 인공지능
자동판매기 자전거도로 자연보호구역 전기자동차 전자레인지 전자우편 정기검진 주차관리인
지하철역 지하철노선도 직업상담사 참치김치찌개 천문관측소 초등학교 출입문손잡이
카시오페이아자리 컴퓨터과학 태양광발전소 태양계행성 통신위성 파인애플 포도주스
프로트악티늄 피스타치오우유 하늘다람쥐 학교도서관 한국어사전 해바라기씨 환경미화원
]]
local seenChain={}
for word in chainWords:gmatch('%S+') do
    if utf8.len(word)>=4 and not seenChain[word] then
        table.insert(bank['끝말잇기'],word)
        seenChain[word]=true
    end
end
-- Long words from every topic also feed the chain mode (full Hangul syllables only).
local function onlySyllables(word)
    for _,point in utf8.codes(word) do
        if point<0xAC00 or point>0xD7A3 then return false end
    end
    return true
end
for category,list in pairs(bank) do
    if category~='끝말잇기' and category~='훈민정음' then
        for _,word in ipairs(list) do
            local length=utf8.len(word)
            if length and length>=4 and not seenChain[word] and onlySyllables(word) then
                table.insert(bank['끝말잇기'],word)
                seenChain[word]=true
            end
        end
    end
end
-- End syllables with few or no dictionary continuations; game rules may differ.
local oneShots={
    '나트륨','리튬','우라늄','마그네슘','칼슘','세슘','라듐','알루미늄','헬륨',
    '티타늄','플루토늄','베릴륨','이트륨','칼륨','포타슘','코스튬',
    '티켓','슈퍼마켓','로켓','바스켓','줄무늬','꽃무늬','체크무늬',
    '그릇','버릇','물그릇','밥그릇','북녘','동녘','새벽녘','들녘',
    '기슭','산기슭','부엌','살갗','암탉','요즘','알고리즘','페미니즘','휴머니즘',
    '시럽','클럽','나이트클럽','팬클럽','기쁨','슬픔','아픔','무릎','시늉',
    '무늬','볼륨','논두렁','수렁','리듬','비듬','오믈렛','아웃렛',
    '치킨','냅킨','눈썹','속눈썹'
}

-- General candidates; not claimed to be extracted or accepted from YouTube.
mergeWords({
    ['자동차']=W[[승용차 승합차 경차 소형차 중형차 대형차 스포츠카 슈퍼카 전기차 하이브리드 수소차 세단 해치백 왜건 쿠페 컨버터블 SUV RV 리무진 픽업트럭 캠핑카]],
    ['자동차 모델']=W[[아반떼 쏘나타 그랜저 제네시스 팰리세이드 싼타페 투싼 코나 베뉴 캐스퍼 아이오닉 아이오닉파이브 아이오닉식스 스타리아 스타렉스 포터 모닝 레이 프라이드 K3 K5 K7 K8 K9 셀토스 니로 스포티지 쏘렌토 카니발 모하비 EV3 EV6 EV9 봉고 티볼리 토레스 렉스턴 코란도 트랙스 트레일블레이저 말리부 스파크 카마로 콜벳 머스탱 익스플로러 모델에스 모델쓰리 모델엑스 모델와이 사이버트럭 프리우스 캠리 코롤라 시빅 어코드 골프 티구안 파사트 비틀 카이엔 파나메라 타이칸 마칸 디펜더 디스커버리 레인지로버]],
    ['치킨집']=W[[기영이숯불두마리치킨 노랑통닭 자담치킨 푸라닭치킨 지코바치킨 숯불에닭 꾸브라꼬숯불두마리치킨 훌랄라참숯바베큐치킨 또봉이통닭 가마치통닭 오븐마루치킨 치킨플러스 치킨신드롬 치킨매니아 순살만공격 호식이두마리치킨 처갓집양념치킨 페리카나 멕시카나 멕시칸치킨 네네치킨 굽네치킨 교촌치킨 비비큐 비에이치씨]],
    ['치즈']=W[[파르미지아노레지아노 파르메산 모차렐라 모짜렐라 체더 고다 에멘탈 그뤼예르 브리 카망베르 고르곤졸라 로크포르 리코타 마스카르포네 페타 할루미 프로볼로네 페코리노로마노 몬터레이잭 콜비 크림치즈 스트링치즈 부라타 블루치즈 에담 뮌스터 스틸턴 아시아고 폰티나 라클레트]],
    ['무지개색']=W[[빨강 주황 노랑 초록 파랑 남색 보라 빨간색 주황색 노란색 초록색 파란색 보라색]],
    ['세계 수도']=W[[서울 도쿄 베이징 타이베이 울란바토르 하노이 방콕 프놈펜 비엔티안 네피도 쿠알라룸푸르 싱가포르 반다르스리브가완 마닐라 뉴델리 카트만두 팀푸 다카 이슬라마바드 카불 말레 아부다비 도하 리야드 무스카트 마나마 쿠웨이트 암만 베이루트 바그다드 테헤란 앙카라 아테네 로마 파리 런던 베를린 마드리드 리스본 브뤼셀 암스테르담 룩셈부르크 베른 빈 프라하 브라티슬라바 부다페스트 바르샤바 코펜하겐 오슬로 스톡홀름 헬싱키 레이캬비크 더블린 탈린 리가 빌뉴스 키이우 부쿠레슈티 소피아 베오그라드 자그레브 사라예보 류블랴나 스코페 티라나 포드고리차 키시너우 민스크 모스크바 트빌리시 예레반 바쿠 카이로 라바트 알제 튀니스 트리폴리 다카르 아부자 아크라 나이로비 캄팔라 키갈리 아디스아바바 루안다 하라레 루사카 킨샤사 프리토리아 워싱턴 오타와 멕시코시티 과테말라시티 산살바도르 테구시갈파 마나과 산호세 파나마시티 아바나 킹스턴 보고타 키토 리마 수크레 라파스 산티아고 부에노스아이레스 몬테비데오 아순시온 브라질리아 카라카스 조지타운 파라마리보 캔버라 웰링턴 포트모르즈비 수바 아피아 누쿠알로파]],
    ['훈민정음']=W[[가축 간호 감각 강사 개념 건축 견학 결말 계산 고장 곡식 공책 과학 관객 광고 구독 국수 군인 글자 기초 난방 날개 남매 냉장 녹차 단서 달성 대기 대회 덧셈 도로 독감 동시 등산 라면 만점 매실 멸치 명절 모금 무인 문구 물감 반장 발명 배구 백합 보건 복습 부품 분식 비율 사격 산소 상식 서명 성적 세금 소금 수학 순서 시청 신문 실험 안부 약품 양궁 예산 오답 온천 완성 운동 의사 의자 인구 자격 장마 저축 전철 접시 정류 조언 주제 증거 지리 진로 참외 책임 청년 초점 체험 축제 출발 칠월 타조 태양 통장 파장 편집 표현 해설 현미 화학 환율 회복 효도 후추]],
    ['끝말잇기']=W[[가족관계등록부 가상현실체험관 개인정보처리방침 건강검진센터 건축사사무소 고속버스터미널 공중전화부스 국제운전면허증 기초생활수급자 김치부침개 나무늘보 냉난방시스템 다문화가정지원센터 대한민국헌법 도로교통공단 동물보호단체 디지털카메라 마을회관 무인자동판매기 문화체육관광부 반도체집적회로 방과후돌봄교실 버스정류장 보조배터리 비디오게임 사물인터넷기술 소프트웨어개발자 스마트워치 식품의약품안전처 어린이보호구역 온라인도서관 우주정거장 유전자검사 의료보험증 인공위성통신 자원봉사센터 전자상거래 지방자치단체 초고속인터넷 컴퓨터프로그램 통신판매업 환경보호단체]],
    ['한방 단어']=W[[디스프로슘 홀뮴 툴륨 네오디뮴 프라세오디뮴 프로메튬 사마륨 가돌리늄 터븀 어븀 이터븀 루테튬 하프늄 니오븀 로듐 팔라듐 카드뮴 인듐 탈륨 비스무트 테크네튬 악티늄 프로트악티늄 넵투늄 아메리슘 퀴륨 버클륨 캘리포늄 페르뮴 노벨륨 로렌슘]],
})
-- 1950.mp4: successful words read from result rows (not chat or captions).
-- These are observations for this recording, not a universal server guarantee.
local videoWords={
    ['KBO 한국프로야구']=W[[KIA타이거즈 KiA타이거즈 kiA타이거즈 Kia타이거즈 kIa타이거즈 삼성라이온즈]],
    ['원소']=W[[아인슈타이늄 이리듐 프로트악티늄 세륨 몰리브데넘 프라세오디뮴 다름슈타튬]],
    ['무지개색']=W[[남색 파란색 빨간색 노란색]],
    ['북아메리카']=W[[세인트빈센트그레나딘 세인트키츠네비스 트리니다드토바고]],
    ['포유류']=W[[태즈메이니아데빌 아프리카코끼리]],
    ['라면 재료']=W[[새송이버섯 느타리버섯]],
    ['군사 계급']=W[[일등병 상등병]],
    ['캠핑용품']=W[[두루마리휴지 숯 아이스박스 보조배터리]],
    ['햄버거 재료']=W[[타르타르소스 치즈 홀그레인머스타드 모짜렐라치즈]],
    ['관악기']=W[[오카리나 소프라노색소폰 베이스클라리넷 리코더]],
    ['국내 섬']=W[[좌사리제도 독도 고군산군도 격렬비열도 제주도 십이동파도]],
    ['별자리']=W[[카시오페이아자리 황소자리 공기펌프자리 안드로메다자리]],
    ['튀김']=W[[후라이드치킨 새우튀김 오징어튀김 아스파라거스튀김]],
    ['아시아']=W[[키르기스스탄 투르크메니스탄 대한민국 사우디아라비아]],
}
mergeWords(videoWords)

-- build 24: extra words for thin topics.
local more22={
    ['떡']=W[[가래떡 절편 인절미 송편 백설기 시루떡 팥시루떡 무지개떡 개떡 쑥떡 쑥개떡 바람떡 꿀떡 경단 증편 오메기떡 찹쌀떡 모찌 떡국떡 떡볶이떡 술떡 기정떡 단자 두텁떡 화전 주악 부꾸미 호박떡 콩떡 수수팥떡 쌀떡 흑임자떡 깨떡 영양떡 팥떡 모시송편 쑥인절미 구름떡 콩설기 단호박설기 쑥설기 꿀설기 무설기 대추단자 밤단자 쑥굴리 상화병 석탄병 잡과병 느티떡 약식 인절미]],
    ['국밥']=W[[순대국밥 돼지국밥 소머리국밥 콩나물국밥 소고기국밥 따로국밥 선지국밥 내장국밥 우거지국밥 장터국밥 황태국밥 굴국밥 갈비국밥 암뽕순대국밥 수구레국밥]],
    ['남미']=W[[브라질 아르헨티나 칠레 페루 콜롬비아 베네수엘라 에콰도르 볼리비아 파라과이 우루과이 가이아나 수리남]],
    ['북미']=W[[미국 캐나다 멕시코 과테말라 쿠바 자메이카 아이티 도미니카공화국 파나마 코스타리카 온두라스 니카라과 엘살바도르 벨리즈 바하마 바베이도스 트리니다드토바고]],
    ['북아메리카']=W[[미국 캐나다 멕시코 과테말라 쿠바 자메이카 아이티 도미니카공화국 파나마 코스타리카 온두라스 니카라과 엘살바도르 벨리즈 바하마 바베이도스 트리니다드토바고]],
    ['유럽']=W[[영국 프랑스 독일 이탈리아 스페인 포르투갈 네덜란드 벨기에 스위스 오스트리아 스웨덴 노르웨이 덴마크 핀란드 아이슬란드 아일랜드 폴란드 체코 슬로바키아 헝가리 루마니아 불가리아 그리스 크로아티아 세르비아 슬로베니아 우크라이나 벨라루스 리투아니아 라트비아 에스토니아 룩셈부르크 몰타 알바니아 보스니아헤르체고비나 북마케도니아 몬테네그로 몰도바 모나코 안도라 리히텐슈타인 산마리노 바티칸]],
    ['오세아니아']=W[[오스트레일리아 뉴질랜드 파푸아뉴기니 피지 사모아 통가 바누아투 솔로몬제도 키리바시 투발루 나우루 팔라우 마셜제도 미크로네시아]],
    ['아시아']=W[[한국 일본 중국 몽골 인도 파키스탄 방글라데시 네팔 스리랑카 부탄 몰디브 태국 베트남 라오스 캄보디아 미얀마 말레이시아 싱가포르 인도네시아 필리핀 브루나이 동티모르 카자흐스탄 우즈베키스탄 타지키스탄 아프가니스탄 이란 이라크 시리아 요르단 레바논 이스라엘 사우디아라비아 아랍에미리트 카타르 쿠웨이트 바레인 오만 예멘 북한]],
    ['마인크래프트']=W[[크리퍼 좀비 스켈레톤 엔더맨 거미 슬라임 위더 엔더드래곤 블레이즈 가스트 마녀 약탈자 철골렘 다이아몬드 에메랄드 레드스톤 청금석 흑요석 네더라이트 곡괭이 작업대 화로 침대 횃불 방패 도끼 삽 괭이 양동이 마을주민]],
    ['만두']=W[[군만두 찐만두 물만두 왕만두 김치만두 고기만두 새우만두 야채만두 갈비만두 튀김만두 납작만두 손만두 개성만두 편수 딤섬 교자 샤오룽바오 고추만두 해물만두 부추만두 감자만두]],
    ['조개']=W[[바지락 모시조개 백합 가리비 전복 소라 키조개 홍합 꼬막 피조개 대합 재첩 동죽 개조개 가막조개 맛조개 굴 오분자기 새조개]],
    ['욕실 용품']=W[[샴푸 린스 비누 칫솔 치약 수건 샤워기 욕조 변기 세면대 거울 샤워커튼 욕실화 바디워시 폼클렌징 면도기 화장지 바가지 때수건 샤워볼 바디로션 칫솔꽂이 비누받침 샤워타월 욕실매트 배수구 수도꼭지 휴지걸이]],
    ['중국집']=W[[짜장면 짬뽕 탕수육 볶음밥 짬짜면 깐풍기 깐쇼새우 유린기 마파두부 양장피 팔보채 고추잡채 꿔바로우 유산슬 라조기 울면 군만두 멘보샤 차돌짬뽕 쟁반짜장 간짜장 삼선짜장 삼선짬뽕 동파육 난자완스 어향가지 꽃빵]],
    ['군사 계급']=W[[이병 일병 상병 병장 하사 중사 상사 원사 준위 소위 중위 대위 소령 중령 대령 준장 소장 중장 대장 원수]],
    ['라면 재료']=W[[계란 파 김치 치즈 떡 만두 콩나물 어묵 햄 소시지 마늘 청양고추 고추 양파 버섯 대파 숙주 스팸 참치 김 두부 쑥갓 고춧가루 후추 깻잎 라면사리 당면 오뎅 새우 오징어 낙지 조개]],
    ['라면재료']=W[[계란 파 김치 치즈 떡 만두 콩나물 어묵 햄 소시지 마늘 청양고추 고추 양파 버섯 대파 숙주 스팸 참치 김 두부 쑥갓 고춧가루 후추 깻잎 라면사리 당면 오뎅 새우 오징어 낙지 조개]],
    ['무술과 격투기']=W[[태권도 유도 검도 합기도 가라테 쿵푸 복싱 레슬링 주짓수 무에타이 킥복싱 우슈 택견 씨름 펜싱 크라브마가 종합격투기 삼보 시스테마 카포에이라]],
    ['우유']=W[[딸기우유 바나나우유 초코우유 커피우유 흰우유 저지방우유 두유 아몬드우유 오트밀크 멸균우유 가공우유 락토프리우유 분유 연유 생크림 요거트 요구르트 치즈 버터]],
    ['체스']=W[[킹 퀸 룩 비숍 나이트 폰 체크 체크메이트 캐슬링 앙파상 프로모션 스테일메이트 오프닝 엔드게임 체스판]],
    ['초밥']=W[[연어초밥 새우초밥 광어초밥 참치초밥 유부초밥 장어초밥 문어초밥 오징어초밥 계란초밥 성게알초밥 연어알초밥 전복초밥 도미초밥 방어초밥 가리비초밥 소고기초밥 불초밥 고등어초밥 회전초밥]],
    ['태양계']=W[[태양 수성 금성 지구 화성 목성 토성 천왕성 해왕성 명왕성 달 소행성 혜성 유성 운석 소행성대 카이퍼벨트 오르트구름 위성 왜행성 세레스 에리스 하우메아 마케마케 이오 유로파 가니메데 칼리스토 타이탄 트리톤 포보스 데이모스]],
    ['방']=W[[안방 작은방 건넌방 거실 주방 부엌 화장실 욕실 서재 침실 다락방 창고 베란다 현관 옷방 드레스룸 아이방 놀이방 공부방 지하실 보일러실 세탁실 다용도실]],
    ['손가락']=W[[엄지 검지 중지 약지 새끼손가락 엄지손가락 집게손가락 가운뎃손가락 무명지 장지 식지 소지 무지]],
    ['마라탕']=W[[마라탕 마라샹궈 꿔바로우 당면 푸주 숙주 청경채 소고기 곱창 목이버섯 건두부 옥수수면 분모자 양고기 새우 고수 배추 팽이버섯 감자 넓은당면 유부]],
    ['튀김']=W[[새우튀김 오징어튀김 고구마튀김 야채튀김 김말이튀김 치킨 돈가스 탕수육 감자튀김 어묵튀김 깻잎튀김 고추튀김 가지튀김 호박튀김 연근튀김 닭강정 프라이드치킨 양념치킨 크로켓 고로케 핫도그 만두튀김 치즈스틱 어니언링 전복튀김]],
    ['햄버거 재료']=W[[빵 패티 양상추 토마토 치즈 양파 피클 소스 베이컨 계란 번 머스타드 케첩 마요네즈 할라피뇨 아보카도 버섯 닭가슴살 새우패티 쇠고기패티]],
    ['캠핑용품']=W[[텐트 침낭 랜턴 버너 코펠 화로대 타프 매트 의자 테이블 아이스박스 쿨러 랜턴 망치 팩 쿠션 장작 토치 라이터 캠핑카 해먼 해먹 아이젠 스토브 물통 부탄가스 그릴 숯 모닥불 두루마리휴지]],
    ['KBO']=W[[두산 LG 키움 SSG KT 롯데 삼성 한화 NC KIA 기아 두산베어스 LG트윈스 키움히어로즈 SSG랜더스 KT위즈 롯데자이언츠 삼성라이온즈 한화이글스 NC다이노스 KIA타이거즈]],
    ['KBO 한국프로야구']=W[[두산 LG 키움 SSG KT 롯데 삼성 한화 NC KIA 기아 두산베어스 LG트윈스 키움히어로즈 SSG랜더스 KT위즈 롯데자이언츠 삼성라이온즈 한화이글스 NC다이노스 KIA타이거즈]],
    ['공항']=W[[인천공항 김포공항 김해공항 제주공항 청주공항 대구공항 광주공항 무안공항 양양공항 여수공항 울산공항 포항공항 사천공항 군산공항 원주공항 제주국제공항 김포국제공항 광주국제 여수국제 울산국제 포항국제]],
    ['국내 섬']=W[[제주도 울릉도 독도 거제도 강화도 진도 완도 남해도 흑산도 백령도 연평도 영종도 안면도 거문도 마라도 가파도 우도 추자도 소록도 관매도 비금도 도초도 안좌도 청산도 보길도 선재도 대부도 위도 외연도 교동도 석모도 영흥도 지심도 욕지도 사량도 장사도 매물도 한산도 연화도]],
    ['오대양']=W[[태평양 대서양 인도양 북극해 남극해 남빙양 북빙양]],
    ['원소']=W[[수소 헬륨 리튬 베릴륨 붕소 탄소 질소 산소 플루오린 네온 나트륨 마그네슘 알루미늄 규소 인 황 염소 아르곤 칼륨 칼슘 철 구리 아연 은 금 수은 납 우라늄 라듐 요오드 주석 니켈 코발트 망가니즈 티타늄 백금 텅스텐 라돈 제논 크립톤 플루토늄 브로민 크로뮴]],
    ['식물']=W[[장미 튤립 국화 코스모스 개나리 진달래 철쭉 목련 벚꽃 해바라기 민들레 백합 카네이션 라벤더 선인장 고무나무 소나무 잣나무 전나무 참나무 느티나무 은행나무 대나무 버드나무 단풍나무 자작나무 감나무 사과나무 벼 보리 밀 옥수수 콩 팥 이끼 고사리 연꽃 수련 무궁화 나팔꽃 봉선화 채송화 맨드라미 데이지 제비꽃 클로버 로즈마리 바질 민트 알로에 몬스테라 아이비 쑥 냉이 달래]],
    ['동물']=W[[코뿔소 얼룩말 표범 치타 늑대 여우 곰 판다 코알라 캥거루 원숭이 침팬지 고릴라 오랑우탄 너구리 오소리 족제비 수달 비버 사슴 노루 멧돼지 고라니 토끼 쥐 소 돼지 양 염소 낙타 라마 알파카 돌고래 고래 상어 물개 바다사자 펭귄 독수리 부엉이 올빼미 앵무새 오리 거위 닭 공작 악어 거북이 뱀 도마뱀 개구리 두꺼비 박쥐 두더지 햄스터]],
    ['물건']=W[[컵 접시 숟가락 젓가락 포크 칼 가위 풀 테이프 자 공책 필통 시계 거울 우산 열쇠 지갑 안경 모자 장갑 양말 신발 이불 베개 침대 소파 선풍기 청소기 세탁기 텔레비전 컴퓨터 노트북 키보드 마우스 충전기 리모컨 책장 서랍 옷걸이 달력 화분 램프 전구 건전지 라이터]],
}
mergeWords(more22)
-- Olympic discipline names: Olympics.com sports lists; game acceptance remains separate.
local requested25={
    ['동계 올림픽']=W[[노르딕복합 루지 바이애슬론 봅슬레이 쇼트트랙 쇼트트랙스피드스케이팅 스노보드 스켈레톤 스키점프 스피드스케이팅 아이스하키 알파인스키 컬링 크로스컨트리스키 프리스타일스키 피겨스케이팅 산악스키 스키마운티니어링]],
    ['하계 올림픽']=W[[육상 수영 경영 다이빙 수구 아티스틱스위밍 마라톤수영 양궁 기계체조 리듬체조 트램펄린 배드민턴 농구 비치발리볼 복싱 카누 카누슬라럼 카누스프린트 사이클 도로사이클 트랙사이클 산악자전거 승마 펜싱 축구 골프 핸드볼 하키 유도 근대5종 조정 럭비 사격 스케이트보드 스포츠클라이밍 서핑 탁구 태권도 테니스 트라이애슬론 배구 역도 레슬링 요트 브레이킹 야구 소프트볼]],
    ['음악 장르']=W[[팝 발라드 힙합 재즈 록 댄스 클래식 트로트 알앤비 포크 레게 블루스]],
}
mergeWords(requested25)

-- build 49: common + standard-name words (no regional/ingredient detail variants).
local more36={
    ['햄버거 재료']=W[[홀그레인머스타드 디종머스타드 머스타드 케첩 마요네즈 바비큐소스 불고기소스 타르타르소스 사우전아일랜드소스 체다치즈 모짜렐라치즈 슬라이스치즈 아메리칸치즈 스위스치즈 블루치즈 고르곤졸라치즈 양상추 로메인 적양파 양파 토마토 피클 할라피뇨 베이컨 소고기패티 치킨패티 새우패티 계란후라이 아보카도 번 브리오슈번 참깨빵 콜슬로 버섯 빵 패티 치즈 소스]],
    ['피자 토핑']=W[[고르곤졸라치즈 모짜렐라치즈 체다치즈 파르메산치즈 리코타치즈 페타치즈 크림치즈 페퍼로니 살라미 불고기 베이컨 햄 소시지 치킨 새우 오징어 홍합 파인애플 올리브 블랙올리브 그린올리브 양파 피망 파프리카 버섯 양송이버섯 토마토 방울토마토 토마토소스 바질 바질페스토 루꼴라 마늘 감자 고구마 옥수수 스위트콘 할라피뇨 브로콜리 시금치 가지 호박 아보카도 트러플오일 올리브오일 핫소스 치즈]],
    ['소스']=W[[케첩 마요네즈 머스타드 홀그레인머스타드 디종머스타드 와사비 간장 고추장 된장 쌈장 초고추장 칠리소스 핫소스 타바스코 바비큐소스 데리야끼소스 굴소스 우스터소스 돈가스소스 타르타르소스 토마토소스 크림소스 알프레도소스 볼로네제소스 페스토소스 발사믹소스 오리엔탈소스 시저소스 랜치소스 사우전아일랜드소스 어니언소스 갈릭소스 두반장 춘장 피쉬소스 쯔유 폰즈소스 참기름 들기름 식초 설탕 소금 액젓]],
    ['치즈']=W[[모짜렐라치즈 체다치즈 파르메산치즈 파마산치즈 고르곤졸라치즈 까망베르치즈 브리치즈 리코타치즈 크림치즈 에멘탈치즈 그뤼에르치즈 마스카포네치즈 페타치즈 고다치즈 에담치즈 스위스치즈 블루치즈 프로볼로네치즈 부라타치즈 스트링치즈 슬라이스치즈 가공치즈 할루미치즈]],
    ['중식']=W[[짜장면 짬뽕 탕수육 깐풍기 깐쇼새우 유린기 마파두부 양장피 팔보채 고추잡채 꿔바로우 유산슬 라조기 멘보샤 동파육 난자완스 어향가지 춘권 딤섬 샤오롱바오 훠궈 마라탕 마라샹궈 북경오리 베이징덕 크림새우 칠리새우 볶음밥 짬짜면 쟁반짜장 간짜장 울면 잡채밥 꽃빵 탄탄면 완탕 오향장육 양꼬치 군만두 물만두]],
    ['일식']=W[[초밥 스시 사시미 우동 소바 라멘 돈카츠 가츠동 규동 텐동 오야코동 가라아게 야키토리 오코노미야끼 타코야끼 샤브샤브 스키야키 나베 오뎅 오니기리 미소시루 낫토 덮밥 장어덮밥 우나기동 텐푸라 카레우동 츠케멘 가이센동 사케동 하이라이스 회덮밥 유부초밥]],
    ['양식']=W[[스테이크 파스타 리조또 피자 라자냐 오믈렛 샐러드 수프 크림수프 토마토수프 카프레제 브루스케타 알리오올리오 까르보나라 볼로네제 봉골레 아라비아따 뇨끼 필라프 함박스테이크 폭립 바비큐립 에그베네딕트 프렌치토스트 감바스 그라탕 빠에야 클램차우더 시저샐러드]],
    ['분식']=W[[떡볶이 순대 튀김 김밥 라볶이 어묵 오뎅 핫도그 치즈스틱 쫄면 라면 우동 만두 김말이 오징어튀김 새우튀김 야채튀김 떡꼬치 닭꼬치 순대볶음 참치김밥 충무김밥 치즈김밥 즉석떡볶이 순대국 어묵탕]],
    ['디저트']=W[[티라미수 마카롱 에클레어 밀푀유 크렘브륄레 판나코타 파르페 빙수 팥빙수 젤라또 소르베 스무디 쿠키 브라우니 케이크 치즈케이크 가나슈 푸딩 크레페 츄러스 호떡 붕어빵 계란빵 와플 도라야끼 모찌 몽블랑 타르트 파운드케이크 마들렌 휘낭시에 까눌레 약과]],
    ['아이스크림']=W[[바닐라 초코 딸기 민트초코 쿠키앤크림 녹차 바나나 망고 메로나 월드콘 부라보콘 스크류바 죠스바 수박바 비비빅 쌍쌍바 누가바 설레임 보석바 더위사냥 투게더 엑설런트 빵빠레 구구콘 엄마는외계인 슈팅스타 아몬드봉봉 폴라포 아맛나 캔디바 탱크보이]],
    ['과자']=W[[새우깡 감자깡 양파링 꼬깔콘 포카칩 프링글스 홈런볼 초코파이 오예스 몽쉘 빼빼로 칙촉 쫀디기 오징어땅콩 고래밥 쌀과자 맛동산 오감자 꿀꽈배기 쿠크다스 빈츠 마이쭈 칸쵸 프렌치파이 자유시간 가나초콜릿 아이셔 하리보 콘칩 치토스 사브레 다이제 초코송이 감자칩 고구마깡 죠리퐁 뻥튀기 오레오 인디안밥 에이스]],
    ['음료']=W[[콜라 사이다 환타 스프라이트 펩시 코카콜라 칠성사이다 밀키스 암바사 웰치스 포카리스웨트 게토레이 파워에이드 박카스 비타500 핫식스 레드불 델몬트 쌕쌕 미닛메이드 허니부시 코코팜 데미소다 탐스 옥수수수염차 헛개차 보리차 녹차 홍차 아이스티 에이드 레몬에이드 오렌지주스 식혜 수정과 미숫가루 탄산수 바나나우유 딸기우유 초코우유]],
    ['커피 브랜드']=W[[스타벅스 이디야 투썸플레이스 메가커피 컴포즈커피 빽다방 할리스 카페베네 엔제리너스 탐앤탐스 폴바셋 커피빈 파스쿠찌 매머드커피 더벤티 공차 요거프레소 드롭탑 달콤커피 만랩커피 커피스미스 블루보틀 카페노티드]],
    ['치킨 브랜드']=W[[교촌치킨 비비큐 BBQ bhc 굽네치킨 네네치킨 푸라닭 처갓집양념치킨 페리카나 멕시카나 노랑통닭 맘스터치 호식이두마리치킨 자담치킨 지코바 오븐에빠진닭 청년치킨 60계치킨 치킨플러스 바른치킨 KFC 또래오래 맥시칸치킨 부어치킨 가마치통닭 깐부치킨]],
    ['패스트푸드']=W[[맥도날드 버거킹 롯데리아 KFC 맘스터치 서브웨이 파파이스 쉐이크쉑 프랭크버거 노브랜드버거 파이브가이즈 도미노피자 피자헛 미스터피자 파파존스 피자알볼로 반올림피자 오구피자 빅맥 와퍼 불고기버거 치즈버거 감자튀김 치킨너겟 콜라]],
    ['한식']=W[[김치찌개 된장찌개 순두부찌개 부대찌개 감자탕 갈비탕 삼계탕 설렁탕 곰탕 육개장 비빔밥 불고기 제육볶음 닭갈비 찜닭 닭볶음탕 보쌈 족발 간장게장 양념게장 김치전 부추전 감자전 녹두전 파전 해물파전 육전 아귀찜 갈치조림 고등어조림 매운탕 대구탕 알탕 동태탕 도가니탕 해장국 낙지볶음 쭈꾸미볶음 오징어볶음 김치볶음밥 비빔냉면 물냉면 칼국수 수제비 떡국 잡채 갈비찜 순대국 곱창전골 쇠고기뭇국]],
    ['과일']=W[[샤인머스캣 블루베리 라즈베리 크랜베리 아보카도 망고스틴 드래곤후르츠 파인애플 오렌지 한라봉 천혜향 참외 수박 딸기 복숭아 자두 살구 체리 키위 바나나 사과 배 감 귤 포도 석류 무화과 멜론 자몽 레몬 라임 유자 대추 곶감 망고 용과 리치 두리안 파파야 구아바]],
    ['채소']=W[[양배추 방울토마토 청경채 알배추 브로콜리 콜리플라워 아스파라거스 파프리카 주키니호박 애호박 단호박 오이 당근 양파 대파 쪽파 마늘 생강 고추 깻잎 상추 시금치 부추 콩나물 숙주 감자 고구마 무 배추 열무 쑥갓 미나리 가지 우엉 연근 도라지 더덕 고사리 취나물 냉이 달래 쑥]],
    ['고기']=W[[삼겹살 목살 항정살 가브리살 갈매기살 앞다리살 뒷다리살 등심 안심 채끝 부채살 살치살 차돌박이 업진살 제비추리 토시살 안창살 치마살 오겹살 갈비 불고기 주물럭 닭가슴살 닭다리살 오리고기 양고기 곱창 대창 막창]],
    ['소고기']=W[[등심 안심 채끝 부채살 살치살 차돌박이 업진살 제비추리 토시살 안창살 치마살 갈비 불고기 양지 사태 우둔 홍두깨 설도 목심 꾸리살 아롱사태 한우]],
    ['돼지고기']=W[[삼겹살 목살 항정살 가브리살 갈매기살 앞다리살 뒷다리살 오겹살 갈비 등갈비 사태 안심 등심 족발 보쌈 순대 돈까스 제육 막창]],
    ['김치']=W[[배추김치 포기김치 깍두기 총각김치 알타리김치 열무김치 파김치 갓김치 깻잎김치 오이소박이 나박김치 물김치 동치미 백김치 보쌈김치 겉절이 묵은지 석박지 부추김치 무말랭이 고들빼기김치 굴김치 장김치]],
    ['오세아니아']=W[[오스트레일리아 호주 뉴질랜드 파푸아뉴기니 피지 사모아 통가 바누아투 솔로몬제도 키리바시 투발루 나우루 팔라우 마셜제도 미크로네시아연방 미크로네시아 쿡제도 니우에 뉴칼레도니아 프랑스령폴리네시아 북마리아나제도 아메리칸사모아 괌 타히티 하와이 오스트레일리아연방 사이판 웨이크섬 이스터섬 갈라파고스제도 피지공화국 사모아독립국 통가왕국 바누아투공화국 키리바시공화국 나우루공화국 팔라우공화국 마셜제도공화국 파푸아뉴기니독립국]],
    ['아시아']=W[[대한민국 조선민주주의인민공화국 중화인민공화국 일본 몽골 인도 파키스탄 방글라데시 네팔 스리랑카 부탄 몰디브 태국 베트남 라오스 캄보디아 미얀마 말레이시아 싱가포르 인도네시아 필리핀 브루나이 동티모르 카자흐스탄 우즈베키스탄 투르크메니스탄 키르기스스탄 타지키스탄 아프가니스탄 이란 이라크 시리아 요르단 레바논 이스라엘 팔레스타인 사우디아라비아 아랍에미리트 카타르 쿠웨이트 바레인 오만 예멘 아제르바이잔 아르메니아 조지아 키프로스 대만 홍콩 마카오 타이완 중화민국 인도공화국 파키스탄이슬람공화국 방글라데시인민공화국 네팔연방민주공화국 스리랑카민주사회주의공화국 부탄왕국 태국왕국 캄보디아왕국 말레이시아연방 싱가포르공화국 인도네시아공화국 필리핀공화국 베트남사회주의공화국 라오스인민민주공화국 미얀마연방공화국 이란이슬람공화국 이라크공화국 시리아아랍공화국 요르단하심왕국 사우디아라비아왕국 아랍에미리트연합 카타르국 쿠웨이트국 바레인왕국 오만술탄국 예멘공화국]],
    ['아프리카']=W[[남아프리카공화국 중앙아프리카공화국 콩고민주공화국 콩고공화국 적도기니 상투메프린시페 카보베르데 시에라리온 코트디부아르 부르키나파소 에스와티니 기니비사우 모리셔스 세이셸 코모로 지부티 에리트레아 소말리아 에티오피아 탄자니아 모잠비크 마다가스카르 짐바브웨 잠비아 말라위 보츠와나 나미비아 앙골라 가봉 카메룬 나이지리아 가나 토고 베냉 니제르 말리 모리타니 세네갈 감비아 기니 라이베리아 차드 수단 남수단 이집트 리비아 튀니지 알제리 모로코 우간다 케냐 르완다 부룬디 레소토 사하라아랍민주공화국 서사하라 소말릴란드 레위니옹 마요트 세인트헬레나 이집트아랍공화국 탄자니아연합공화국 에스와티니왕국 레소토왕국 모로코왕국 중앙아프리카 동아프리카 서아프리카 북아프리카 남아프리카 사하라 사헬 아프리카연합 가봉공화국 기니공화국 적도기니공화국 감비아공화국 앙골라공화국]],
    ['유럽']=W[[보스니아헤르체고비나 북마케도니아 리히텐슈타인 룩셈부르크 산마리노 바티칸시국 몰도바 몬테네그로 슬로바키아 슬로베니아 크로아티아 에스토니아 라트비아 리투아니아 아일랜드 아이슬란드 노르웨이 스웨덴 핀란드 덴마크 네덜란드 벨기에 스위스 오스트리아 체코 폴란드 헝가리 루마니아 불가리아 세르비아 알바니아 그리스 이탈리아 스페인 포르투갈 프랑스 독일 영국 우크라이나 벨라루스 러시아 모나코 안도라 몰타 코소보 잉글랜드 스코틀랜드 웨일스 북아일랜드 지브롤터 건지섬 저지섬 맨섬 페로제도 올란드제도 그린란드 코소보공화국 아일랜드공화국 체코공화국 슬로바키아공화국 크로아티아공화국 세르비아공화국 폴란드공화국 헝가리공화국 오스트리아공화국 핀란드공화국 프랑스공화국 이탈리아공화국 포르투갈공화국 그리스공화국 영국연합왕국]],
    ['북미']=W[[도미니카공화국 도미니카연방 세인트빈센트그레나딘 세인트키츠네비스 세인트루시아 앤티가바부다 트리니다드토바고 그레나다 바베이도스 바하마 쿠바 자메이카 아이티 파나마 코스타리카 니카라과 온두라스 엘살바도르 과테말라 벨리즈 멕시코 캐나다 미국 푸에르토리코 버뮤다 케이맨제도 몬트세랫 앵귈라 아루바 퀴라소 신트마르턴 생마르탱 과들루프 마르티니크 터크스케이커스제도 영국령버진아일랜드 미국령버진아일랜드 생피에르미클롱 아메리카합중국 캐나다연방 멕시코합중국]],
    ['북아메리카']=W[[도미니카공화국 도미니카연방 세인트빈센트그레나딘 세인트키츠네비스 세인트루시아 앤티가바부다 트리니다드토바고 그레나다 바베이도스 바하마 쿠바 자메이카 아이티 파나마 코스타리카 니카라과 온두라스 엘살바도르 과테말라 벨리즈 멕시코 캐나다 미국 푸에르토리코 버뮤다 케이맨제도 몬트세랫 앵귈라 아루바 퀴라소 신트마르턴 생마르탱 과들루프 마르티니크 터크스케이커스제도 영국령버진아일랜드 미국령버진아일랜드 생피에르미클롱 아메리카합중국 캐나다연방 멕시코합중국]],
    ['남미']=W[[베네수엘라 콜롬비아 에콰도르 볼리비아 파라과이 우루과이 아르헨티나 브라질 칠레 페루 가이아나 수리남 포클랜드제도 프랑스령기아나 브라질연방공화국 아르헨티나공화국 칠레공화국 페루공화국 콜롬비아공화국 베네수엘라볼리바르공화국 에콰도르공화국 볼리비아다민족국 파라과이공화국 우루과이동방공화국 가이아나협동공화국 수리남공화국]],
    ['남아메리카']=W[[베네수엘라 콜롬비아 에콰도르 볼리비아 파라과이 우루과이 아르헨티나 브라질 칠레 페루 가이아나 수리남 포클랜드제도 프랑스령기아나 브라질연방공화국 아르헨티나공화국 칠레공화국 페루공화국 콜롬비아공화국 베네수엘라볼리바르공화국 에콰도르공화국 볼리비아다민족국 파라과이공화국 우루과이동방공화국 가이아나협동공화국 수리남공화국]],
    ['나라']=W[[오스트레일리아 호주 뉴질랜드 파푸아뉴기니 피지 사모아 통가 바누아투 솔로몬제도 키리바시 투발루 나우루 팔라우 마셜제도 미크로네시아연방 미크로네시아 쿡제도 니우에 뉴칼레도니아 프랑스령폴리네시아 북마리아나제도 아메리칸사모아 괌 타히티 하와이 대한민국 조선민주주의인민공화국 중화인민공화국 일본 몽골 인도 파키스탄 방글라데시 네팔 스리랑카 부탄 몰디브 태국 베트남 라오스 캄보디아 미얀마 말레이시아 싱가포르 인도네시아 필리핀 브루나이 동티모르 카자흐스탄 우즈베키스탄 투르크메니스탄 키르기스스탄 타지키스탄 아프가니스탄 이란 이라크 시리아 요르단 레바논 이스라엘 팔레스타인 사우디아라비아 아랍에미리트 카타르 쿠웨이트 바레인 오만 예멘 아제르바이잔 아르메니아 조지아 키프로스 대만 남아프리카공화국 중앙아프리카공화국 콩고민주공화국 콩고공화국 적도기니 상투메프린시페 카보베르데 시에라리온 코트디부아르 부르키나파소 에스와티니 기니비사우 모리셔스 세이셸 코모로 지부티 에리트레아 소말리아 에티오피아 탄자니아 모잠비크 마다가스카르 짐바브웨 잠비아 말라위 보츠와나 나미비아 앙골라 가봉 카메룬 나이지리아 가나 토고 베냉 니제르 말리 모리타니 세네갈 감비아 기니 라이베리아 차드 수단 남수단 이집트 리비아 튀니지 알제리 모로코 우간다 케냐 르완다 부룬디 레소토 보스니아헤르체고비나 북마케도니아 리히텐슈타인 룩셈부르크 산마리노 바티칸시국 몰도바 몬테네그로 슬로바키아 슬로베니아 크로아티아 에스토니아 라트비아 리투아니아 아일랜드 아이슬란드 노르웨이 스웨덴 핀란드 덴마크 네덜란드 벨기에 스위스 오스트리아 체코 폴란드 헝가리 루마니아 불가리아 세르비아 알바니아 그리스 이탈리아 스페인 포르투갈 프랑스 독일 영국 우크라이나 벨라루스 러시아 모나코 안도라 몰타 코소보 도미니카공화국 도미니카연방 세인트빈센트그레나딘 세인트키츠네비스 세인트루시아 앤티가바부다 트리니다드토바고 그레나다 바베이도스 바하마 쿠바 자메이카 아이티 파나마 코스타리카 니카라과 온두라스 엘살바도르 과테말라 벨리즈 멕시코 캐나다 미국 베네수엘라 콜롬비아 에콰도르 볼리비아 파라과이 우루과이 아르헨티나 브라질 칠레 페루 가이아나 수리남]],
    ['세계 수도']=W[[서울 도쿄 베이징 평양 울란바토르 뉴델리 이슬라마바드 다카 카트만두 콜롬보 팀푸 방콕 하노이 비엔티안 프놈펜 네피도 쿠알라룸푸르 싱가포르 자카르타 마닐라 반다르스리브가와 딜리 알마티 아스타나 타슈켄트 아시가바트 비슈케크 두샨베 카불 테헤란 바그다드 다마스쿠스 암만 베이루트 예루살렘 리야드 아부다비 도하 마나마 쿠웨이트시티 무스카트 사나 앙카라 바쿠 예레반 트빌리시 헬싱키 스톡홀름 오슬로 코펜하겐 레이캬비크 더블린 런던 파리 브뤼셀 암스테르담 룩셈부르크 베를린 베른 빈 프라하 바르샤바 부다페스트 부쿠레슈티 소피아 베오그라드 자그레브 류블랴나 사라예보 스코페 티라나 아테네 로마 마드리드 리스본 발레타 니코시아 키이우 민스크 모스크바 빌뉴스 리가 탈린 키시너우 포드고리차 프리슈티나 워싱턴 오타와 멕시코시티 아바나 킹스턴 파나마시티 산호세 마나과 테구시갈파 과테말라시티 산살바도르 벨모판 브라질리아 부에노스아이레스 산티아고 리마 보고타 카라카스 키토 라파스 수크레 몬테비데오 아순시온 캔버라 웰링턴 수바 아피아 누쿠알로파 카이로 트리폴리 튀니스 알제 라바트 나이로비 아디스아바바 도도마 프리토리아 케이프타운 아부자 아크라 다카르 아비잔 야무수크로 루사카 하라레 윈드후크 가보로네 마푸투 루안다 킨샤사 브라자빌 리브르빌 말라보 야운데 하르툼 쥬바]],
    ['수도']=W[[서울 도쿄 베이징 평양 울란바토르 뉴델리 이슬라마바드 다카 카트만두 콜롬보 팀푸 방콕 하노이 비엔티안 프놈펜 네피도 쿠알라룸푸르 싱가포르 자카르타 마닐라 반다르스리브가와 딜리 알마티 아스타나 타슈켄트 아시가바트 비슈케크 두샨베 카불 테헤란 바그다드 다마스쿠스 암만 베이루트 예루살렘 리야드 아부다비 도하 마나마 쿠웨이트시티 무스카트 사나 앙카라 바쿠 예레반 트빌리시 헬싱키 스톡홀름 오슬로 코펜하겐 레이캬비크 더블린 런던 파리 브뤼셀 암스테르담 룩셈부르크 베를린 베른 빈 프라하 바르샤바 부다페스트 부쿠레슈티 소피아 베오그라드 자그레브 류블랴나 사라예보 스코페 티라나 아테네 로마 마드리드 리스본 발레타 니코시아 키이우 민스크 모스크바 빌뉴스 리가 탈린 키시너우 포드고리차 프리슈티나 워싱턴 오타와 멕시코시티 아바나 킹스턴 파나마시티 산호세 마나과 테구시갈파 과테말라시티 산살바도르 벨모판 브라질리아 부에노스아이레스 산티아고 리마 보고타 카라카스 키토 라파스 수크레 몬테비데오 아순시온 캔버라 웰링턴 수바 아피아 누쿠알로파 카이로 트리폴리 튀니스 알제 라바트 나이로비 아디스아바바 도도마 프리토리아 케이프타운 아부자 아크라 다카르 아비잔 야무수크로 루사카 하라레 윈드후크 가보로네 마푸투 루안다 킨샤사 브라자빌 리브르빌 말라보 야운데 하르툼 쥬바]],
    ['직업']=W[[소프트웨어개발자 정보보안전문가 항공교통관제사 응급구조사 방사선사 물리치료사 작업치료사 임상병리사 영양사 사회복지사 변리사 공인회계사 세무사 감정평가사 손해사정사 소방관 경찰관 군인 간호사 의사 치과의사 한의사 약사 수의사 변호사 판사 검사 교사 교수 과학자 연구원 엔지니어 건축가 건축설계사 인테리어디자이너 그래픽디자이너 웹디자이너 패션디자이너 헤어디자이너 메이크업아티스트 바리스타 제빵사 요리사 조리사 파티시에 소믈리에 승무원 항공정비사 파일럿 기관사 택시기사 버스기사 화물차기사 배달원 택배기사 농부 어부 광부 목수 전기기사 배관공 용접공 미용사 사진작가 영화감독 시나리오작가 웹툰작가 만화가 소설가 시인 기자 아나운서 성우 가수 배우 모델 개그맨 유튜버 프로게이머 운동선수 코치 심판 통역사 번역가 사서 학예사 큐레이터 공무원 외교관 정치인]],
    ['포유류']=W[[오랑우탄 침팬지 고릴라 하마 코뿔소 얼룩말 캥거루 코알라 오리너구리 아르마딜로 개미핥기 천산갑 날다람쥐 고슴도치 미어캣 순록 바다코끼리 북극곰 재규어 치타 퓨마 스라소니 하이에나 늑대 여우 너구리 수달 족제비 오소리 흰긴수염고래 향유고래 혹등고래 돌고래 바다사자 물개 해달 매너티 듀공 카피바라 호랑이 사자 표범 기린 낙타 라마 알파카 라쿤 판다 레서판다 나무늘보]],
    ['의류']=W[[후드티 맨투맨 카디건 점퍼 패딩 롱패딩 트렌치코트 청바지 레깅스 슬랙스 멜빵바지 원피스 투피스 점프수트 오버올 와이셔츠 티셔츠 폴로셔츠 조끼 스웨터 니트 잠옷 속옷 수영복 한복 교복 바람막이 가죽재킷 청재킷 패딩조끼 플리스 블라우스 미니스커트 롱스커트 치마 바지 반바지]],
    ['가전제품']=W[[냉장고 김치냉장고 세탁기 건조기 에어컨 선풍기 공기청정기 가습기 제습기 청소기 로봇청소기 전기밥솥 전자레인지 에어프라이어 식기세척기 정수기 비데 텔레비전 컴퓨터 노트북 태블릿 스피커 헤어드라이어 다리미 전기장판 전기포트 토스터 믹서기 인덕션 가스레인지 오븐]],
    ['건물']=W[[아파트 빌라 주택 단독주택 다세대주택 오피스텔 고층빌딩 학교 도서관 박물관 미술관 체육관 경기장 영화관 백화점 대형마트 편의점 병원 약국 은행 우체국 경찰서 소방서 시청 구청 도청 법원 교회 성당 사찰 절 공연장 수영장 놀이공원 주유소 공항 기차역 버스터미널 지하철역]],
    ['탈것']=W[[자동차 오토바이 자전거 전동킥보드 킥보드 스케이트보드 인라인스케이트 롤러스케이트 기차 고속열차 지하철 경전철 모노레일 케이블카 곤돌라 버스 트럭 택시 앰뷸런스 소방차 경찰차 헬리콥터 비행기 열기구 요트 잠수함 우주선 구급차 레미콘 굴착기 지게차 크레인 트랙터]],
    ['교통수단']=W[[자동차 오토바이 자전거 전동킥보드 킥보드 스케이트보드 인라인스케이트 롤러스케이트 기차 고속열차 지하철 경전철 모노레일 케이블카 곤돌라 버스 트럭 택시 앰뷸런스 소방차 경찰차 헬리콥터 비행기 열기구 요트 잠수함 우주선 구급차 레미콘 굴착기 지게차 크레인 트랙터]],
    ['운동']=W[[달리기 마라톤 줄넘기 윗몸일으키기 팔굽혀펴기 스쿼트 플랭크 런지 요가 필라테스 수영 등산 자전거타기 배드민턴 탁구 테니스 골프 볼링 당구 양궁 사격 검도 태권도 유도 복싱 레슬링 씨름 역도 스키 스노보드 스케이트 서핑 클라이밍 승마 펜싱 럭비 야구 축구 농구 배구 핸드볼 하키 크리켓]],
    ['악기']=W[[바이올린 비올라 첼로 콘트라베이스 하프 기타 베이스기타 우쿨렐레 만돌린 피아노 오르간 아코디언 하모니카 플루트 오보에 클라리넷 바순 색소폰 트럼펫 트롬본 튜바 호른 드럼 심벌즈 실로폰 마림바 트라이앵글 탬버린 캐스터네츠 가야금 거문고 해금 대금 소금 단소 피리 장구 북 꽹과리 징]],
    ['학용품']=W[[연필 샤프 볼펜 형광펜 사인펜 색연필 크레파스 물감 붓 지우개 연필깎이 자 각도기 컴퍼스 삼각자 가위 풀 테이프 스테이플러 호치키스 클립 공책 노트 필통 책가방 수정테이프 포스트잇 칼 샤프심 파스텔]],
    ['우주']=W[[태양계 은하계 은하수 안드로메다은하 블랙홀 화이트홀 웜홀 중성자별 백색왜성 적색거성 초신성 성운 성단 혜성 유성 운석 소행성 소행성대 카이퍼벨트 오르트구름 국제우주정거장 인공위성 우주왕복선 허블우주망원경 우주선 달 태양 지구 화성 금성]],
    ['보석']=W[[다이아몬드 사파이어 루비 에메랄드 아쿠아마린 토파즈 자수정 석류석 오팔 진주 산호 호박 비취 옥 터키석 지르콘 페리도트 가넷 앰버 문스톤 월장석 흑요석 청금석 수정]],
    ['꽃']=W[[해바라기 코스모스 튤립 장미 국화 백합 카네이션 라벤더 개나리 진달래 철쭉 목련 벚꽃 무궁화 수선화 팬지 프리지아 안개꽃 수국 동백꽃 연꽃 나팔꽃 봉선화 채송화 맨드라미 데이지 제비꽃 민들레 금잔화 작약 모란 아네모네]],
    ['나무']=W[[소나무 잣나무 전나무 가문비나무 은행나무 느티나무 참나무 단풍나무 자작나무 벚나무 버드나무 대나무 감나무 사과나무 배나무 복숭아나무 동백나무 오동나무 밤나무 호두나무 포플러 플라타너스 메타세쿼이아 팽나무 회화나무 이팝나무 배롱나무 무궁화나무]],
    ['조류']=W[[독수리 올빼미 부엉이 앵무새 펭귄 타조 에뮤 홍학 두루미 황새 백조 기러기 갈매기 제비 참새 까치 까마귀 비둘기 딱따구리 꾀꼬리 뻐꾸기 소쩍새 왜가리 백로 청둥오리 원앙 앨버트로스 펠리컨 카나리아 칠면조 공작새 키위새 물수리 매 송골매]],
    ['곤충']=W[[장수풍뎅이 사슴벌레 하늘소 무당벌레 잠자리 사마귀 방아깨비 베짱이 귀뚜라미 매미 개미 꿀벌 말벌 나비 나방 파리 모기 바퀴벌레 하루살이 반딧불이 풍뎅이 노린재 진딧물 메뚜기 여치 쇠똥구리 지네]],
    ['신체']=W[[머리카락 이마 눈썹 속눈썹 눈동자 콧구멍 광대뼈 턱수염 목젖 어깨 겨드랑이 팔꿈치 손목 손바닥 손등 손톱 엄지손가락 허벅지 종아리 정강이 무릎 발목 발등 발바닥 발뒤꿈치 발톱 척추 갈비뼈 쇄골]],
    ['신체 부위']=W[[머리카락 이마 눈썹 속눈썹 눈동자 콧구멍 광대뼈 턱수염 목젖 어깨 겨드랑이 팔꿈치 손목 손바닥 손등 손톱 엄지손가락 허벅지 종아리 정강이 무릎 발목 발등 발바닥 발뒤꿈치 발톱 척추 갈비뼈 쇄골]],
    ['생선']=W[[고등어 갈치 삼치 꽁치 정어리 멸치 청어 대구 명태 동태 황태 북어 광어 우럭 도미 농어 방어 참치 연어 송어 장어 붕어 잉어 메기 미꾸라지 가자미 복어 오징어 문어 낙지 주꾸미 한치 쥐치 임연수어 노가리]],
    ['게임']=W[[리그오브레전드 오버워치 배틀그라운드 마인크래프트 로블록스 메이플스토리 던전앤파이터 리니지 바람의나라 카트라이더 서든어택 스타크래프트 워크래프트 디아블로 포켓몬스터 슈퍼마리오 젤다의전설 동물의숲 별의커비 어몽어스 포트나이트 발로란트 철권 스트리트파이터 테트리스 팩맨 오목 바둑 장기 체스]],
    ['프로그래밍 언어']=W[[자바스크립트 타입스크립트 파이썬 자바 코틀린 스위프트 러스트 루비 펄 하스켈 스칼라 클로저 엘릭서 얼랭 오브젝티브씨 비주얼베이직 어셈블리 포트란 코볼 파스칼 에이다 줄리아 루아 고 씨 씨플러스플러스 씨샵]],
    ['도형']=W[[정삼각형 이등변삼각형 직각삼각형 정사각형 직사각형 평행사변형 마름모 사다리꼴 오각형 육각형 팔각형 원 타원 부채꼴 원기둥 원뿔 구 정육면체 직육면체 삼각기둥 사각뿔 삼각뿔 구체]],
    ['감정']=W[[기쁨 슬픔 분노 두려움 놀람 혐오 행복 사랑 외로움 그리움 설렘 질투 부끄러움 자랑스러움 감사 미안함 후회 불안 걱정 지루함 편안함 만족감 열등감 우월감 죄책감]],

    ['공룡']=W[[티라노사우루스 트리케라톱스 스테고사우루스 브라키오사우루스 벨로키랍토르 안킬로사우루스 파라사우롤로푸스 스피노사우루스 알로사우루스 디플로도쿠스 프테라노돈 이구아노돈 아파토사우루스 파키케팔로사우루스 코엘로피시스 딜로포사우루스 기가노토사우루스 카르노타우루스 데이노니쿠스 오비랍토르]],
    ['별자리']=W[[큰곰자리 작은곰자리 카시오페이아자리 오리온자리 전갈자리 사수자리 염소자리 물병자리 물고기자리 양자리 황소자리 쌍둥이자리 게자리 사자자리 처녀자리 천칭자리 백조자리 거문고자리 독수리자리 북두칠성 남십자성 안드로메다자리 페가수스자리 헤라클레스자리 큰개자리 작은개자리 용자리 케페우스자리 페르세우스자리 마차부자리 뱀주인자리]],
    ['단위']=W[[킬로그램 킬로미터 센티미터 밀리미터 밀리리터 킬로바이트 메가바이트 기가바이트 테라바이트 마이크로미터 나노미터 제곱미터 세제곱미터 헥타르 에이커 킬로와트 메가와트 기가와트 마일 야드 피트 인치 파운드 온스 갤런 리터 헤르츠 킬로헤르츠 메가헤르츠 기가헤르츠 뉴턴 줄 와트 암페어 볼트 옴]],
    ['영화 장르']=W[[로맨틱코미디 블랙코미디 슈퍼히어로 포스트아포칼립스 사이버펑크 스팀펑크 다큐멘터리 뮤지컬 느와르 하이스트 로드무비 디스토피아 타임루프 재난영화 법정드라마 의학드라마 청춘영화 성장영화 스포츠영화 전쟁영화 서부극 사극 시대극 첩보영화 괴수영화 슬래셔 스릴러 미스터리 판타지 애니메이션]],
    ['컴퓨터']=W[[운영체제 마더보드 그래픽카드 중앙처리장치 하드디스크 솔리드스테이트드라이브 메모리 키보드 마우스 모니터 프린터 스캐너 공유기 케이블 외장하드 파워서플라이 쿨러 방화벽 백신프로그램 브라우저 데이터베이스 서버 클라우드 소프트웨어 하드웨어 응용프로그램]],
    ['스마트폰']=W[[갤럭시 아이폰 갤럭시플립 갤럭시폴드 픽셀 샤오미 화웨이 노트 액정 배터리 충전기 무선충전기 이어폰 블루투스 와이파이 지문인식 얼굴인식 카메라 앱스토어 플레이스토어 알림 잠금화면 홈화면 위젯]],
    ['가구']=W[[침대 소파 책상 의자 옷장 서랍장 화장대 책장 신발장 식탁 안락의자 흔들의자 협탁 거실장 티비장 행거 파티션 수납장 선반 스툴 벤치 사이드테이블 커피테이블 장식장 붙박이장 매트리스 이층침대]],
    ['가족']=W[[외할아버지 외할머니 친할아버지 친할머니 증조할아버지 증조할머니 고모부 이모부 삼촌 외삼촌 사촌 처남 형수 제수 시아버지 시어머니 장인어른 장모님 며느리 사위 조카 손자 손녀 외손자 외손녀 의붓아버지 의붓어머니]],
    ['산']=W[[백두산 한라산 지리산 설악산 북한산 태백산 덕유산 오대산 소백산 계룡산 속리산 월출산 에베레스트산 킬리만자로산 몽블랑 후지산 알프스산맥 히말라야산맥 로키산맥 안데스산맥 마터호른 엘브루스산 아콩카과산 케이투 매킨리산 칸첸중가]],
    ['강']=W[[한강 낙동강 금강 영산강 섬진강 임진강 압록강 두만강 대동강 아마존강 나일강 미시시피강 양쯔강 황허 갠지스강 도나우강 라인강 센강 템스강 콩고강 메콩강 인더스강 볼가강 유프라테스강 티그리스강 오리노코강 라플라타강]],
    ['호수']=W[[바이칼호 빅토리아호 슈피리어호 티티카카호 탕가니카호 카스피해 아랄해 미시간호 휴런호 이리호 온타리오호 레만호 보덴호 로몬드호 네스호 태호 시호 백두산천지 소양호 충주호 안동호 대청호 팔당호]],
    ['바다']=W[[동해 서해 남해 지중해 카리브해 홍해 흑해 발트해 북해 사해 아라비아해 베링해 오호츠크해 동중국해 남중국해 태즈먼해 베링해협 말라카해협 도버해협 지브롤터해협 태평양 대서양 인도양 북극해 남극해]],
    ['섬']=W[[제주도 거제도 강화도 진도 완도 울릉도 독도 마라도 가파도 하와이 괌 사이판 발리 보라카이 세부 푸켓 오키나와 홋카이도 시코쿠 규슈 타이완 하이난 마다가스카르 그린란드 뉴기니 보르네오 수마트라 자바 스리랑카 시칠리아 사르데냐 코르시카 크레타 키프로스 아이슬란드 아일랜드 영국 쿠바 자메이카 아이티]],
    ['날씨']=W[[맑음 흐림 구름조금 소나기 장마 폭풍우 태풍 폭설 폭우 우박 안개 서리 이슬 천둥 번개 무지개 회오리바람 열대야 한파 폭염 황사 미세먼지 눈보라 가랑비 이슬비 보슬비 함박눈 진눈깨비 폭풍]],
    ['계절']=W[[봄 여름 가을 겨울 초봄 늦봄 초여름 한여름 늦여름 초가을 늦가을 초겨울 한겨울 늦겨울 장마철 환절기 입춘 입하 입추 입동 춘분 하지 추분 동지]],
    ['학교']=W[[초등학교 중학교 고등학교 대학교 대학원 유치원 어린이집 특수학교 외국어고등학교 과학고등학교 예술고등학교 체육고등학교 교실 운동장 급식실 도서관 교무실 교장실 보건실 체육관 강당 매점 복도 계단]],
    ['과목']=W[[국어 영어 수학 과학 사회 역사 도덕 음악 미술 체육 기술 가정 정보 한문 통합사회 통합과학 물리학 화학 생명과학 지구과학 한국사 세계사 경제 정치와법 사회문화 윤리와사상 제2외국어 중국어 일본어 독일어 프랑스어 스페인어]],
    ['IT기업']=W[[삼성전자 엘지전자 에스케이하이닉스 네이버 카카오 쿠팡 배달의민족 토스 당근마켓 넥슨 엔씨소프트 넷마블 크래프톤 구글 애플 마이크로소프트 아마존 메타 테슬라 엔비디아 인텔 퀄컴 오픈에이아이 앤트로픽 알리바바 텐센트 바이두 소니 닌텐도 에이엠디 시스코 오라클 아이비엠 어도비 스포티파이 넷플릭스 우버 에어비앤비]],}
mergeWords(more36)

-- build 49: ramen name topics.
mergeWords({['라면 이름']=W[[신라면 진라면 너구리 안성탕면 짜파게티 불닭볶음면 삼양라면 육개장 열라면 비빔면 팔도비빔면 오징어짬뽕 참깨라면 컵누들 틈새라면 스낵면 김치라면 공화춘 팔도도시락 컵라면 육개장사발면 신라면블랙 진짬뽕 진짜장 짜왕 쫄병스낵 새우탕 꼬꼬면 나가사끼짬뽕 사리곰탕 해물라면 맛있는라면 순한맛 매운맛 불닭 까르보불닭 치즈불닭 핵불닭 쇠고기라면 오뚜기라면 진비빔면 쫄면 냉면 열무비빔면 비빔냉면 왕뚜껑 튀김우동 오동통면 비빔장 라볶이 부대라면 치즈라면 떡라면 만두라면 계란라면 짜장라면 짬뽕라면 우동라면 소고기라면 해장라면 라면사리 면 건면 생면 숙면 신라면툼바 신라면컵 진라면매운맛 진라면순한맛 순한너구리 올리브짜파게티 짜짜로니 짜파구리 까르보불닭볶음면 치즈불닭볶음면 핵불닭볶음면 도시락 사리곰탕면 해물짬뽕 남자라면 새우탕면 우육탕면 김치사발면 무파마탕면 신볶면 볶음너구리 간짬뽕 짜장범벅 봉지라면]],['라면이름']=W[[신라면 진라면 너구리 안성탕면 짜파게티 불닭볶음면 삼양라면 육개장 열라면 비빔면 팔도비빔면 오징어짬뽕 참깨라면 컵누들 틈새라면 스낵면 김치라면 공화춘 팔도도시락 컵라면 육개장사발면 신라면블랙 진짬뽕 진짜장 짜왕 쫄병스낵 새우탕 꼬꼬면 나가사끼짬뽕 사리곰탕 해물라면 맛있는라면 순한맛 매운맛 불닭 까르보불닭 치즈불닭 핵불닭 쇠고기라면 오뚜기라면 진비빔면 쫄면 냉면 열무비빔면 비빔냉면 왕뚜껑 튀김우동 오동통면 비빔장 라볶이 부대라면 치즈라면 떡라면 만두라면 계란라면 짜장라면 짬뽕라면 우동라면 소고기라면 해장라면 라면사리 면 건면 생면 숙면 신라면툼바 신라면컵 진라면매운맛 진라면순한맛 순한너구리 올리브짜파게티 짜짜로니 짜파구리 까르보불닭볶음면 치즈불닭볶음면 핵불닭볶음면 도시락 사리곰탕면 해물짬뽕 남자라면 새우탕면 우육탕면 김치사발면 무파마탕면 신볶면 볶음너구리 간짬뽕 짜장범벅 봉지라면]],['라면 종류']=W[[신라면 진라면 너구리 안성탕면 짜파게티 불닭볶음면 삼양라면 육개장 열라면 비빔면 팔도비빔면 오징어짬뽕 참깨라면 컵누들 틈새라면 스낵면 김치라면 공화춘 팔도도시락 컵라면 육개장사발면 신라면블랙 진짬뽕 진짜장 짜왕 쫄병스낵 새우탕 꼬꼬면 나가사끼짬뽕 사리곰탕 해물라면 맛있는라면 순한맛 매운맛 불닭 까르보불닭 치즈불닭 핵불닭 쇠고기라면 오뚜기라면 진비빔면 쫄면 냉면 열무비빔면 비빔냉면 왕뚜껑 튀김우동 오동통면 비빔장 라볶이 부대라면 치즈라면 떡라면 만두라면 계란라면 짜장라면 짬뽕라면 우동라면 소고기라면 해장라면 라면사리 면 건면 생면 숙면 신라면툼바 신라면컵 진라면매운맛 진라면순한맛 순한너구리 올리브짜파게티 짜짜로니 짜파구리 까르보불닭볶음면 치즈불닭볶음면 핵불닭볶음면 도시락 사리곰탕면 해물짬뽕 남자라면 새우탕면 우육탕면 김치사발면 무파마탕면 신볶면 볶음너구리 간짬뽕 짜장범벅 봉지라면]]})

local familiarTopics27={
    ['오대양']=W[[태평양 대서양 인도양 북극해 남극해]],
    ['SNS']=W[[인스타그램 유튜브 틱톡 페이스북 트위터 카카오톡 블로그 디스코드 스레드]],
    ['아프리카']=W[[이집트 케냐 가나 모로코 남아프리카공화국 나이지리아 에티오피아 알제리 튀니지 탄자니아]],
    ['육하원칙']=W[[누가 언제 어디서 무엇을 어떻게 왜]],
    ['현악기']=W[[기타 바이올린 비올라 첼로 콘트라베이스 하프 가야금 거문고 해금 우쿨렐레]],
    ['분식']=W[[김밥 떡볶이 순대 어묵 라면 튀김 쫄면 핫도그 라볶이 떡꼬치]],
    ['버섯']=W[[표고버섯 팽이버섯 느타리버섯 양송이버섯 새송이버섯 송이버섯 목이버섯]],
    ['태양계의 행성과 위성']=W[[수성 금성 지구 화성 목성 토성 천왕성 해왕성 달]],
    ['동물']=W[[개 고양이 사자 호랑이 코끼리 기린 하마 곰 토끼 여우 늑대 원숭이 다람쥐 고슴도치]],
    ['음식']=W[[밥 김밥 비빔밥 불고기 떡볶이 김치찌개 된장찌개 잡채 만두 라면 돈가스 볶음밥]],
    ['과일']=W[[사과 배 바나나 포도 수박 딸기 복숭아 귤 오렌지 파인애플 자두 참외 감 키위 망고]],
    ['나라']=W[[한국 일본 중국 미국 영국 프랑스 독일 이탈리아 스페인 캐나다 호주 인도 브라질 베트남 태국]],
    ['직업']=W[[의사 교사 경찰관 소방관 간호사 요리사 가수 배우 운동선수 변호사 판사 기자 농부 군인]],
    ['운동']=W[[축구 야구 농구 배구 탁구 테니스 수영 달리기 배드민턴 태권도 유도 양궁 골프 체조]],
    ['식물']=W[[소나무 대나무 장미 해바라기 민들레 무궁화 튤립 은행나무 단풍나무 벚나무 고사리 선인장]],
    ['물건']=W[[책 연필 지우개 공책 가방 의자 책상 시계 휴대폰 우산 컵 신발 모자 안경]],
    ['포유류']=W[[개 고양이 토끼 곰 호랑이 사자 코끼리 기린 하마 여우 늑대 다람쥐 고래 돌고래 박쥐]],
    ['햄버거']=W[[불고기버거 치즈버거 치킨버거 새우버거 햄버거 빅맥 와퍼 베이컨버거]],
    ['피자 토핑']=W[[치즈 페퍼로니 햄 베이컨 소시지 양파 피망 버섯 올리브 옥수수 파인애플 새우 감자 불고기]],
    ['섬']=W[[제주도 독도 울릉도 거제도 진도 강화도 남해도 완도 백령도 대마도 하와이]],
    ['도시']=W[[서울 부산 대구 인천 광주 대전 울산 수원 용인 고양 성남 부천 청주 전주 제주 서귀포 춘천 강릉 포항 경주]],
    ['공항']=W[[인천국제공항 김포국제공항 김해국제공항 제주국제공항 청주국제공항 대구국제공항 무안국제공항 양양국제공항]],
    ['커피']=W[[아메리카노 카페라테 카푸치노 에스프레소 카페모카 바닐라라테 콜드브루 아이스아메리카노]],
    ['영화 장르']=W[[액션 코미디 공포 로맨스 판타지 스릴러 드라마 애니메이션 다큐멘터리 뮤지컬 전쟁]],
    ['욕실 용품']=W[[수건 비누 샴푸 린스 칫솔 치약 휴지 세면대 변기 욕조 샤워기 면도기 바디워시]],
    ['캠핑용품']=W[[텐트 침낭 돗자리 랜턴 손전등 버너 코펠 의자 테이블 아이스박스 그릴 담요]],
    ['나무']=W[[소나무 은행나무 단풍나무 벚나무 대나무 참나무 느티나무 버드나무 사과나무 감나무 잣나무]],
    ['자동차브랜드']=W[[현대 기아 벤츠 BMW 아우디 도요타 혼다 테슬라 볼보 포르쉐 페라리 람보르기니]],
    ['한식']=W[[김치 비빔밥 불고기 갈비 잡채 김밥 떡볶이 된장찌개 김치찌개 삼계탕 냉면 삼겹살 파전]],
    ['과목']=W[[국어 영어 수학 과학 사회 도덕 음악 미술 체육 실과 역사 기술 가정 정보]],
    ['음악 장르']=W[[팝 발라드 힙합 재즈 록 댄스 클래식 트로트 알앤비 포크 레게 블루스]],
    ['OECD 국가']=W[[한국 일본 미국 캐나다 영국 프랑스 독일 이탈리아 스페인 호주 뉴질랜드 멕시코 튀르키예 스웨덴 스위스]],
    ['태양계']=W[[태양 수성 금성 지구 화성 목성 토성 천왕성 해왕성 달]],
    ['타악기']=W[[북 장구 꽹과리 징 드럼 실로폰 탬버린 트라이앵글 캐스터네츠 마라카스 심벌즈]],
    ['관악기']=W[[리코더 플루트 클라리넷 색소폰 트럼펫 트롬본 호른 튜바 오보에 하모니카 오카리나 단소]],
    ['고기']=W[[소고기 돼지고기 닭고기 양고기 오리고기 삼겹살 목살 갈비 등심 안심]],
    ['초밥']=W[[연어초밥 참치초밥 새우초밥 계란초밥 유부초밥 장어초밥 광어초밥 문어초밥]],
    ['탄생석']=W[[가넷 자수정 아쿠아마린 다이아몬드 에메랄드 진주 루비 페리도트 사파이어 오팔 토파즈 터키석]],
    ['포켓몬']=W[[피카츄 라이츄 파이리 꼬부기 이상해씨 이브이 잠만보 뮤 뮤츠 리자몽 고라파덕 푸린 나옹]],
    ['무술과 격투기']=W[[태권도 유도 검도 복싱 레슬링 씨름 가라테 합기도 킥복싱 주짓수]],
    ['화폐 단위']=W[[원 달러 엔 유로 위안 파운드 루블 페소 루피 바트 볼리비아노]],
    ['조개']=W[[바지락 홍합 굴 전복 가리비 꼬막 키조개 대합 소라 맛조개]],
    ['소스']=W[[케첩 마요네즈 머스터드 간장 고추장 쌈장 돈가스소스 굴소스 칠리소스 데리야키소스]],
    ['치즈']=W[[체더치즈 모차렐라치즈 크림치즈 슬라이스치즈 고다치즈 파르메산치즈 브리치즈]],
    ['치킨집']=W[[교촌치킨 BBQ BHC 굽네치킨 네네치킨 처갓집양념치킨 페리카나 호식이두마리치킨 노랑통닭 푸라닭]],
    ['생선']=W[[고등어 갈치 참치 연어 꽁치 조기 명태 대구 광어 우럭 삼치 멸치]],
    ['하계']=W[[수영 육상 체조 축구 농구 배구 양궁 탁구 배드민턴 테니스 유도 태권도 펜싱 역도 사격]],
    ['동계']=W[[스키 스노보드 스케이트 피겨스케이팅 쇼트트랙 스피드스케이팅 아이스하키 컬링 봅슬레이 루지 스켈레톤 바이애슬론]],
    ['구기종목']=W[[축구 야구 농구 배구 탁구 테니스 배드민턴 골프 핸드볼 럭비 하키 피구 족구]],
    ['공휴일']=W[[설날 추석 어린이날 현충일 광복절 개천절 한글날 삼일절 성탄절 부처님오신날]],
    ['맛']=W[[단맛 짠맛 신맛 쓴맛 감칠맛 매운맛]],
    ['주기율표']=W[[수소 헬륨 리튬 탄소 질소 산소 나트륨 마그네슘 알루미늄 규소 황 염소 칼륨 칼슘 철 구리 은 금 아연]],
    ['김치']=W[[배추김치 깍두기 열무김치 총각김치 파김치 갓김치 백김치 동치미 오이소박이 나박김치]],
    ['학용품']=W[[연필 지우개 공책 볼펜 샤프 필통 자 가위 풀 색연필 사인펜 크레파스 형광펜 수정테이프 연필깎이 도화지 스케치북 수첩 파일 클립 스테이플러 컴퍼스 각도기 삼각자 붓 물감]],
    ['별자리']=W[[큰곰자리 작은곰자리 북두칠성 오리온자리 카시오페이아자리 사자자리 황소자리 쌍둥이자리 전갈자리 처녀자리 물병자리 물고기자리]],
    ['튀김']=W[[새우튀김 오징어튀김 고구마튀김 감자튀김 김말이 야채튀김 돈가스 치킨]],
    ['국밥']=W[[돼지국밥 순대국밥 소머리국밥 콩나물국밥 소고기국밥 선지국밥 굴국밥 따로국밥]],
    ['만두']=W[[고기만두 김치만두 물만두 군만두 찐만두 왕만두 새우만두 갈비만두 돼지고기만두]],
    ['중국집']=W[[짜장면 짬뽕 탕수육 볶음밥 군만두 울면 유산슬 팔보채 깐풍기 마파두부 콩나물해장짬뽕]],
    ['수도']=W[[서울 도쿄 베이징 런던 파리 베를린 로마 워싱턴 방콕 하노이 캔버라 오타와 마드리드 모스크바 뉴델리]],
    ['북미']=W[[미국 캐나다 멕시코 쿠바 자메이카 파나마 코스타리카 과테말라 아이티]],
    ['남미']=W[[아르헨티나 베네수엘라 브라질 칠레 페루 콜롬비아 볼리비아 에콰도르 우루과이 파라과이 가이아나 수리남]],
    ['남아메리카']=W[[아르헨티나 베네수엘라 브라질 칠레 페루 콜롬비아 볼리비아 에콰도르 우루과이 파라과이 가이아나 수리남]],
    ['오세아니아']=W[[호주 뉴질랜드 피지 파푸아뉴기니 사모아 통가]],
    ['아시아']=W[[한국 일본 중국 인도 태국 베트남 필리핀 몽골 인도네시아 말레이시아 싱가포르 네팔 투르크메니스탄 사우디아라비아]],
    ['유럽']=W[[영국 프랑스 독일 이탈리아 스페인 포르투갈 네덜란드 벨기에 스위스 오스트리아 그리스 스웨덴 노르웨이 핀란드]],
    ['빵']=W[[초코소라빵 소보로빵 단팥빵 크림빵 슈크림빵 마늘빵 모닝빵 식빵 소시지빵 피자빵 초코빵 메론빵 소라빵 팥빵 꽈배기 도넛 베이글 크루아상 바게트 카스텔라 찐빵 호빵 고로케 모카빵 맘모스빵 옥수수빵 연유빵 밤식빵]],
    ['요일']=W[[월요일 화요일 수요일 목요일 금요일 토요일 일요일]],
    ['계절']=W[[봄 여름 가을 겨울]],
    ['계이름']=W[[도 레 미 파 솔 라 시]],
    ['손가락']=W[[엄지 검지 중지 약지 소지]],
    ['KBO']=W[[두산베어스 롯데자이언츠 삼성라이온즈 한화이글스 LG트윈스 KT위즈 SSG랜더스 NC다이노스 키움히어로즈 KIA타이거즈]],
    ['견과류']=W[[호두 땅콩 아몬드 잣 밤 피스타치오 캐슈너트 마카다미아 브라질너트]],
    ['대륙']=W[[아시아 아프리카 유럽 북아메리카 남아메리카 오세아니아 남극]],
    ['라면']=W[[신라면 진라면 너구리 안성탕면 삼양라면 짜파게티 불닭볶음면 팔도비빔면 육개장사발면 열라면 참깨라면]],
    ['라면재료']=W[[면 스프 물 계란 파 치즈 떡 만두 김치 콩나물 숙주 햄 소시지]],
    ['조선 왕']=W[[태조 정종 태종 세종 문종 단종 세조 예종 성종 연산군 중종 인종 명종 선조 광해군 인조 효종 현종 숙종 경종 영조 정조 순조 헌종 철종 고종 순종]],
    ['마라탕']=W[[숙주 청경채 배추 당면 두부 푸주 건두부 소고기 양고기 어묵 분모자 팽이버섯 옥수수면]],
    ['체스']=W[[킹 퀸 룩 비숍 나이트 폰]],
    ['체스 기물']=W[[킹 퀸 룩 비숍 나이트 폰]],
    ['체스 말']=W[[킹 퀸 룩 비숍 나이트 폰]],
    ['방']=W[[거실 안방 침실 부엌 주방 욕실 화장실 공부방 다용도실]],
    ['떡']=W[[가래떡 인절미 송편 백설기 시루떡 꿀떡 절편 경단 찹쌀떡 무지개떡 쑥떡 떡국떡 떡볶이떡 약식]],
    ['열대과일']=W[[바나나 파인애플 망고 코코넛 파파야 두리안 망고스틴 리치 용과 패션후르츠 구아바]],
    ['계급']=W[[이병 일병 상병 병장 하사 중사 상사 원사 소위 중위 대위 소령 중령 대령 준장 소장 중장 대장]],
    ['위인']=W[[이순신 세종대왕 유관순 안중근 김구 윤봉길 신사임당 장영실 정약용 이황 이이 강감찬 을지문덕 광개토대왕]],
    ['한글 자음']=W[[ㄱ ㄲ ㄴ ㄷ ㄸ ㄹ ㅁ ㅂ ㅃ ㅅ ㅆ ㅇ ㅈ ㅉ ㅊ ㅋ ㅌ ㅍ ㅎ]],
    ['한글 모음']=W[[ㅏ ㅑ ㅓ ㅕ ㅗ ㅛ ㅜ ㅠ ㅡ ㅣ ㅐ ㅒ ㅔ ㅖ ㅘ ㅙ ㅚ ㅝ ㅞ ㅟ ㅢ]],
    ['색']=W[[빨강 주황 노랑 초록 파랑 남색 보라 검정 하양 분홍 갈색 회색]],
    ['무지개색']=W[[빨강 주황 노랑 초록 파랑 남색 보라]],
    ['세계수']=W[[이그드라실]],
    ['마인크래프트']=W[[흙 돌 나무 잔디 모래 유리 철 금 다이아몬드 석탄 레드스톤 크리퍼 좀비 스켈레톤 엔더맨 돼지 소 양 닭]],
    ['탈것']=W[[자동차 버스 택시 기차 지하철 비행기 배 자전거 오토바이 트럭 헬리콥터]],
    ['우유']=W[[흰우유 초코우유 딸기우유 바나나우유 커피우유 저지방우유 무지방우유]],
    ['MBTI']=W[[ISTJ ISFJ INFJ INTJ ISTP ISFP INFP INTP ESTP ESFP ENFP ENTP ESTJ ESFJ ENFJ ENTJ]],
    ['소수']=W[[2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97]],
    ['부족수']=W[[1 2 3 4 5 7 8 9 10 11 13 14 15 16 17 19 21 22 23 25 26 27 29 31 33 34 35 37 38 39 41 43 45 46 47 49 50 51 53 55 57 58 59 61 62 63 65 67 69 70 71 73 74 75 77 79 81 82 83 85 86 87 89 91 93 94 95 97 98 99]],
    ['부족수 (1~100)']=W[[1 2 3 4 5 7 8 9 10 11 13 14 15 16 17 19 21 22 23 25 26 27 29 31 33 34 35 37 38 39 41 43 45 46 47 49 50 51 53 55 57 58 59 61 62 63 65 67 69 70 71 73 74 75 77 79 81 82 83 85 86 87 89 91 93 94 95 97 98 99]],
    ['알파벳']=W[[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]],
    ['조류']=W[[참새 비둘기 까치 까마귀 독수리 매 올빼미 부엉이 오리 닭 타조 펭귄 제비 기러기]],
    ['곤충']=W[[개미 나비 벌 모기 파리 잠자리 무당벌레 사마귀 메뚜기 매미 귀뚜라미 장수풍뎅이 사슴벌레]],
    ['파충류']=W[[뱀 거북 악어 도마뱀 이구아나 카멜레온 코브라 비단뱀]],
    ['채소']=W[[배추 무 당근 양파 대파 상추 오이 호박 감자 고구마 시금치 브로콜리 가지 고추 마늘]],
    ['음료']=W[[물 우유 주스 콜라 사이다 커피 녹차 홍차 보리차 식혜 수정과 탄산수 이온음료]],
    ['디저트']=W[[케이크 쿠키 아이스크림 푸딩 마카롱 초콜릿 도넛 와플 팥빙수 타르트]],
    ['과자']=W[[새우깡 감자깡 고구마깡 양파링 포카칩 꼬깔콘 홈런볼 초코파이 빼빼로 오레오 맛동산]],
    ['꽃']=W[[장미 튤립 백합 국화 해바라기 민들레 무궁화 벚꽃 진달래 개나리 코스모스 수국 카네이션]],
    ['보석']=W[[다이아몬드 루비 사파이어 에메랄드 진주 자수정 오팔 토파즈 옥 호박]],
    ['광물']=W[[석영 장석 운모 금 은 구리 철 다이아몬드 흑연 암염]],
    ['악기']=W[[피아노 기타 바이올린 첼로 드럼 플루트 리코더 트럼펫 장구 가야금 실로폰]],
    ['건반악기']=W[[피아노 오르간 전자피아노 키보드 아코디언 멜로디언]],
    ['놀이기구']=W[[회전목마 바이킹 롤러코스터 관람차 범퍼카 회전그네 자이로드롭]],
    ['가전제품']=W[[냉장고 세탁기 청소기 전자레인지 텔레비전 에어컨 선풍기 전기밥솥 다리미 헤어드라이어]],
    ['가구']=W[[책상 의자 침대 소파 옷장 책장 식탁 서랍장 신발장 화장대]],
    ['의류']=W[[티셔츠 바지 치마 원피스 코트 재킷 점퍼 셔츠 잠옷 양말 속옷 한복]],
    ['신발']=W[[운동화 구두 슬리퍼 샌들 장화 등산화 부츠 실내화]],
    ['건물']=W[[학교 병원 아파트 빌딩 도서관 은행 우체국 경찰서 소방서 박물관 백화점 영화관]],
    ['신체']=W[[머리 얼굴 눈 코 입 귀 목 어깨 팔 손 손가락 배 허리 다리 무릎 발 발가락]],
    ['장기']=W[[심장 폐 간 위 대장 소장 신장 췌장 뇌 담낭]],
    ['띠']=W[[쥐 소 호랑이 토끼 용 뱀 말 양 원숭이 닭 개 돼지]],
    ['감정']=W[[기쁨 슬픔 분노 행복 사랑 미움 두려움 놀라움 외로움 설렘 후회]],
    ['날씨']=W[[맑음 흐림 비 눈 우박 안개 바람 태풍 소나기 장마 번개 천둥]],
    ['도형']=W[[삼각형 사각형 오각형 육각형 원 타원 정사각형 직사각형 마름모 사다리꼴]],
    ['단위']=W[[미터 센티미터 킬로미터 그램 킬로그램 리터 밀리리터 초 분 시간 도 킬로와트]],
    ['산']=W[[한라산 지리산 설악산 북한산 백두산 금강산 태백산 소백산 속리산 에베레스트산 후지산]],
    ['강']=W[[한강 낙동강 금강 영산강 섬진강 압록강 두만강 나일강 아마존강 양쯔강]],
    ['바다']=W[[동해 서해 남해 지중해 홍해 흑해 카리브해 북해 베링해]],
    ['호수']=W[[백록담 천지 소양호 충주호 대청호 청평호 바이칼호 카스피해 빅토리아호]],
    ['양식']=W[[스테이크 파스타 피자 햄버거 샐러드 리소토 오믈렛 수프]],
    ['일식']=W[[초밥 우동 돈가스 라멘 소바 덮밥 규동 오니기리 타코야키 오코노미야키]],
    ['중식']=W[[짜장면 짬뽕 탕수육 볶음밥 군만두 유산슬 팔보채 깐풍기 마파두부]],
    ['방향']=W[[동 서 남 북 동쪽 서쪽 남쪽 북쪽 위 아래 왼쪽 오른쪽 앞 뒤]],
    ['숫자']=W[[0 1 2 3 4 5 6 7 8 9 10]],
    ['가족']=W[[아버지 어머니 아빠 엄마 형 누나 오빠 언니 동생 할아버지 할머니 아들 딸]],
    ['학교']=W[[교실 운동장 급식실 도서관 강당 보건실 교무실 과학실 음악실 미술실 체육관]],
    ['의성어']=W[[멍멍 야옹 꿀꿀 음메 짹짹 꼬끼오 개굴개굴 똑똑 쿵쿵 딩동 짝짝 부릉부릉]],
    ['의태어']=W[[반짝반짝 살금살금 엉금엉금 아장아장 뒤뚱뒤뚱 데굴데굴 빙글빙글 주렁주렁 쑥쑥]],
    ['한국을 빛낸 100명의 위인들']=W[[단군 동명왕 온조왕 박혁거세 광개토대왕 이사부 백결선생 의자왕 계백 관창 김유신 문무왕 원효 혜초 장보고 대조영 강감찬 서희 정중부 최무선 죽림칠현 김부식 지눌국사 김대성 일연 김정호 장영실 정약용 이순신 황희 맹사성 조광조 주시경 유관순 안중근 윤봉길 김구]],
    ['우주']=W[[태양 달 별 지구 행성 위성 혜성 은하 우주선 로켓 우주정거장 블랙홀]],
    ['공룡']=W[[티라노사우루스 트리케라톱스 스테고사우루스 브라키오사우루스 벨로키랍토르 안킬로사우루스 파키케팔로사우루스 파키케팔로사우루스 파키케팔로사우루스]],
    ['게임']=W[[마인크래프트 로블록스 테트리스 리그오브레전드 오버워치 배틀그라운드 메이플스토리 카트라이더]],
    ['보드게임']=W[[체스 바둑 장기 오목 윷놀이 부루마블 할리갈리 루미큐브 젠가]],
    ['IT기업']=W[[삼성전자 애플 구글 마이크로소프트 네이버 카카오 아마존 메타 인텔 엔비디아]],
    ['스마트폰']=W[[아이폰 갤럭시 휴대폰 충전기 케이스 액정 배터리 카메라 유심]],
    ['컴퓨터']=W[[모니터 키보드 마우스 본체 프린터 스피커 메모리 그래픽카드 하드디스크]],
    ['프로그래밍 언어']=W[[파이썬 자바 자바스크립트 C C++ C샵 코틀린 스위프트 루비 PHP]],
    ['편의점']=W[[CU GS25 세븐일레븐 이마트24]],
    ['패스트푸드']=W[[햄버거 피자 치킨 감자튀김 핫도그 샌드위치 너겟]],
    ['커피 브랜드']=W[[스타벅스 이디야 투썸플레이스 메가커피 컴포즈커피 빽다방 할리스 탐앤탐스 파스쿠찌]],
    ['아이스크림']=W[[바닐라아이스크림 초코아이스크림 딸기아이스크림 메로나 비비빅 돼지바 수박바 누가바 월드콘 붕어싸만코]],
    ['소고기']=W[[등심 안심 갈비 채끝 양지 사태 우둔 차돌박이 부채살 살치살]],
    ['돼지고기']=W[[삼겹살 목살 앞다리살 뒷다리살 갈비 등심 안심 항정살 가브리살]],
    ['닭고기']=W[[닭다리 닭가슴살 닭날개 닭봉 닭안심 닭발]],
    ['요리']=W[[볶음밥 김치찌개 된장찌개 비빔밥 불고기 잡채 계란말이 카레 돈가스 스파게티]],
    ['요리 방법']=W[[굽기 볶기 삶기 찌기 튀기기 끓이기 무치기 데치기 조리기 졸이기]],
    ['직장']=W[[회사 사무실 공장 학교 병원 은행 가게 식당 방송국]],
    ['속담']=W[[가는말이고와야오는말이곱다 고래싸움에새우등터진다 등잔밑이어둡다 소잃고외양간고친다 티끌모아태산 누워서떡먹기 꿩먹고알먹기 우물안개구리]],
    ['자동차 모델']=W[[쏘나타 아반떼 그랜저 모닝 레이 K3 K5 K7 K8 쏘렌토 스포티지 카니발 투싼 싼타페 아이오닉 코나]],
    ['햄버거 재료']=W[[빵 패티 치즈 양상추 토마토 피클 양파 케첩 마요네즈 베이컨 소스]],
    ['국내 섬']=W[[제주도 독도 울릉도 거제도 진도 강화도 남해도 완도 백령도]],
    ['태양계 행성과 위성']=W[[수성 금성 지구 화성 목성 토성 천왕성 해왕성 달]],
    ['초중고 과목']=W[[국어 영어 수학 과학 사회 도덕 음악 미술 체육 실과 역사 기술 가정 정보]],
    ['세계수도']=W[[서울 도쿄 베이징 런던 파리 베를린 로마 워싱턴 방콕 하노이 캔버라 오타와 마드리드 모스크바 뉴델리]],
    ['세계 수도']=W[[서울 도쿄 베이징 런던 파리 베를린 로마 워싱턴 방콕 하노이 캔버라 오타와 마드리드 모스크바 뉴델리]],
    ['북아메리카']=W[[미국 캐나다 멕시코 쿠바 자메이카 파나마 코스타리카 과테말라 아이티]],
    ['하계 올림픽']=W[[수영 육상 체조 축구 농구 배구 양궁 탁구 배드민턴 테니스 유도 태권도 펜싱 역도 사격]],
    ['동계 올림픽']=W[[스키 스노보드 스케이트 피겨스케이팅 쇼트트랙 스피드스케이팅 아이스하키 컬링 봅슬레이 루지 스켈레톤 바이애슬론]],
    ['자동차']=W[[현대 기아 벤츠 BMW 아우디 도요타 혼다 테슬라 볼보 포르쉐 페라리 람보르기니]],
    ['신체 부위']=W[[머리 얼굴 눈 코 입 귀 목 어깨 팔 손 손가락 배 허리 다리 무릎 발 발가락]],
    ['12간지']=W[[쥐 소 호랑이 토끼 용 뱀 말 양 원숭이 닭 개 돼지]],
    ['색깔']=W[[빨강 주황 노랑 초록 파랑 남색 보라 검정 하양 분홍 갈색 회색]],
    ['교통수단']=W[[자동차 버스 택시 기차 지하철 비행기 배 자전거 오토바이 트럭 헬리콥터]],
    ['KBO 한국프로야구']=W[[두산베어스 롯데자이언츠 삼성라이온즈 한화이글스 LG트윈스 KT위즈 SSG랜더스 NC다이노스 키움히어로즈 KIA타이거즈]],
    ['원소']=W[[수소 헬륨 리튬 탄소 질소 산소 나트륨 마그네슘 알루미늄 규소 황 염소 칼륨 칼슘 철 구리 은 금 아연]],
    ['군사 계급']=W[[이병 일병 상병 병장 하사 중사 상사 원사 소위 중위 대위 소령 중령 대령 준장 소장 중장 대장]],
    ['라면 재료']=W[[면 스프 물 계란 파 치즈 떡 만두 김치 콩나물 숙주 햄 소시지]],
    ['욕실용품']=W[[수건 비누 샴푸 린스 칫솔 치약 휴지 세면대 변기 욕조 샤워기 면도기 바디워시]],
    ['게이름']=W[[도 레 미 파 솔 라 시]],
}
for name,words in pairs(familiarTopics27) do
    local allowed={};for _,word in ipairs(words) do allowed[word]=true end
    familiarSets27[familiarKey27(name)]=allowed
end

-- Other visible topics have no clear successful answer rows in this recording.
-- Keep their names available; do not promote failed attempts to verified words.
for _,name in ipairs({'중국집','욕실용품','게이름'}) do bank[name]=bank[name] or {} end

local deletedTopics={}
local savePath='WordStackHub_CustomWords.json'

local function saveWords()
    if type(writefile)~='function' then return false end
    local basic={}
    for category,list in pairs(bank) do
        if category~='훈민정음' and category~='끝말잇기' and category~='한방 단어' then basic[category]=list end
    end
    local ok=pcall(function() writefile(savePath,HttpService:JSONEncode({version=5,deletedWords=wordDelete45.data,userWords=userWords40,deletedTopics=deletedTopics,modes={basic=basic,hunmin=bank['훈민정음'],chain={long=bank['끝말잇기'],oneShot=bank['한방 단어'] or {}}}})) end)
    return ok
end
if type(readfile)=='function' and type(isfile)=='function' then
    pcall(function()
        if isfile(savePath) then
            local data=HttpService:JSONDecode(readfile(savePath))
            if type(data)=='table' then
                if type(data.userWords)=='table' then
                    for category,words in pairs(type(data.userWords.basic)=='table' and data.userWords.basic or {}) do
                        if type(words)=='table' then for _,word in ipairs(words) do rememberBasic40(category,word) end end
                    end
                    for _,mode in ipairs({'hunmin','chain','oneShot'}) do
                        local words=data.userWords[mode]
                        if type(words)=='table' then for _,word in ipairs(words) do
                            if validUserText40(word) and onlySyllables(word) and
                                ((mode=='hunmin' and utf8.len(word)==2) or (mode~='hunmin' and utf8.len(word)>=2)) then
                                local seen=false
                                for _,old in ipairs(userWords40[mode]) do if old==word then seen=true;break end end
                                if not seen then userWords40[mode][#userWords40[mode]+1]=word end
                            end
                        end end
                    end
                end
                if type(data.deletedWords)=='table' then
                    local source=data.deletedWords
                    for key,words in pairs(type(source.basic)=='table' and source.basic or {}) do
                        if type(key)=='string' and type(words)=='table' then
                            wordDelete45.data.basic[key]={}
                            for word,removed in pairs(words) do
                                if type(word)=='string' and removed==true then wordDelete45.data.basic[key][word]=true end
                            end
                        end
                    end
                    for _,mode in ipairs({'hunmin','chain','oneShot'}) do
                        for word,removed in pairs(type(source[mode])=='table' and source[mode] or {}) do
                            if type(word)=='string' and removed==true then wordDelete45.data[mode][word]=true end
                        end
                    end
                end
                local sources=data
                if (data.version==2 or data.version==3 or data.version==4 or data.version==5) and type(data.modes)=='table' then
                    if type(data.deletedTopics)=='table' then
                        for key,removed in pairs(data.deletedTopics) do
                            if type(key)=='string' and removed==true then deletedTopics[key]=true end
                        end
                    end
                    sources={}
                    for category,list in pairs(data.modes.basic or {}) do sources[category]=list end
                    sources['훈민정음']=data.modes.hunmin or {}
                    local chain=data.modes.chain or {}
                    sources['끝말잇기']=chain.long or {}
                    sources['한방 단어']=chain.oneShot or {}
                end
                for category,list in pairs(sources) do
                    if type(category)=='string' and type(list)=='table' then
                        bank[category]=bank[category] or {}
                        local seen={}
                        for _,old in ipairs(bank[category]) do seen[old]=true end
                        for _,word in ipairs(list) do
                            if type(word)=='string' and utf8.len(word) and utf8.len(word)>=1 and utf8.len(word)<=40 then
                                if not seen[word] then
                                    table.insert(bank[category],word)
                                    seen[word]=true
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
end
-- Clean persisted data too, so a previous save cannot restore removed candidates.
for category,list in pairs(bank) do
    local cleaned={}
    for _,word in ipairs(list) do
        if permittedBasicWord(category,word) then table.insert(cleaned,word) end
    end
    if weekdayTopic(category) then
        cleaned={};for _,word in ipairs(weekdayWords) do table.insert(cleaned,word) end
    end
    local common=commonTopicKey(category)
    if common then
        cleaned={};for _,word in ipairs(commonTopicLists[common]) do table.insert(cleaned,word) end
    end
    bank[category]=cleaned
end
for _,name in ipairs({'동계올림픽','하계올림픽','음악장르','요일'}) do deletedTopics[name]=nil end
for _,word in ipairs(bank['한방 단어'] or {}) do table.insert(oneShots,word) end
-- build27: enforce the familiar defaults after loading old custom data.
for name,words in pairs(familiarTopics27) do
    bank[name]={};for _,word in ipairs(words) do table.insert(bank[name],word) end
end
local everydayChain27=W[[가방 가게 가구 가위 가을 가정 가족 가지 간식 간장 감기 감자 강물 강아지 개구리 개나리 거미 거북이 거울 건강 건물 검사 게임 겨울 경치 고구마 고기 고래 고무 고무줄 고양이 고추 공기 공부 공원 공책 공항 과일 과자 과학 구두 구름 구슬 국수 군인 귀걸이 그림 그릇 기계 기린 기름 기쁨 기차 기침 길거리 김밥 김치 까마귀 꼬리 꼬마 꽃게 나무 나비 나팔 낚시 나라 나물 날개 날씨 남자 냄비 냉장고 너구리 노래 노을 놀이터 놀이 농구 눈물 눈사람 느낌 다람쥐 다리 단추 달걀 달력 달빛 담요 당근 대나무 대문 도깨비 도로 도마 도서관 도장 도시 도시락 동굴 동물 동생 동전 두꺼비 두부 라디오 라면 로봇 마늘 마당 마루 마음 만두 만화 망치 매미 머리 먹이 먼지 메뚜기 모기 모래 모자 목걸이 목소리 무게 무릎 무지개 문어 문장 물감 물고기 물방울 미로 미술 바구니 바나나 바늘 바다 바닥 바람 바위 바지 박수 반지 발자국 밤하늘 밥그릇 방울 배추 백조 버스 버섯 벌레 벽돌 별빛 병원 보리 보물 보석 복숭아 봄비 봉투 부엌 부채 북극 불꽃 불빛 비누 비둘기 비밀 비행기 빗물 빙수 사과 사다리 사슴 사자 사진 산책 살구 상자 새벽 새우 생선 선물 선생님 설탕 세수 세탁기 소금 소나기 소나무 소리 소방관 소방차 손님 손수건 솜사탕 수건 수박 수영 수영장 수첩 숟가락 숲길 시계 시골 시소 시장 신문 신발 신호등 실내화 심장 싸움 아기 아빠 아침 안개 안경 안전 약속 양말 양파 어깨 어머니 어부 얼굴 얼음 엄마 여름 여행 연못 연필 열매 염소 영수증 영화 예술 오리 오이 오징어 옥수수 옷장 왕관 요리 우산 우유 우정 우주 우체국 운동 운동장 원숭이 유리 유치원 음악 의사 의자 이불 이야기 이웃 인사 인형 일기 자동차 자두 자라 자물쇠 자석 자전거 장갑 장난감 장미 장수풍뎅이 재료 저녁 저울 전구 전화 전화기 정원 제비 조개 조각 조명 종이 종이컵 주머니 주방 주사위 주전자 줄넘기 지갑 지구 지렁이 지도 지붕 지우개 지하철 참새 책상 천둥 체육 초콜릿 촛불 추억 축구 친구 침대 칫솔 카메라 커피 코끼리 코스모스 콩나물 쿠키 타조 태양 텃밭 토끼 토마토 통장 튤립 트럭 파도 파랑 파리 파스타 편지 포도 풍선 피아노 학교 하늘 하마 할머니 할아버지 해바라기 햇빛 행복 향기 허리 호랑이 호박 호수 화분 화장실 휴지 희망 흰색]]
local chainSet27={}
local chainPool27={}
local function addEveryday27(word)
    local length=utf8.len(word)
    if length and length>=2 and onlySyllables(word) and not chainSet27[word] then
        chainSet27[word]=true;table.insert(chainPool27,word)
    end
end
for _,word in ipairs(everydayChain27) do addEveryday27(word) end
for _,words in pairs(familiarTopics27) do for _,word in ipairs(words) do addEveryday27(word) end end
bank['끝말잇기']=chainPool27
oneShots=W[[기쁨 슬픔 무릎 부엌 그릇 기슭]]
bank['한방 단어']=oneShots
-- Seed two-syllable Hunmin entries without importing multi-syllable candidates.
local twoWords27={}
for _,word in ipairs(bank['훈민정음']) do if utf8.len(word)==2 and onlySyllables(word) then twoWords27[word]=true end end
for _,word in ipairs(chainPool27) do if utf8.len(word)==2 then twoWords27[word]=true end end
bank['훈민정음']={};for word in pairs(twoWords27) do table.insert(bank['훈민정음'],word) end
-- Restore explicit additions AFTER built-in reset/rebuild, not before it.
local function appendUserWords40(list,extra)
    local seen={};for _,word in ipairs(list) do seen[word]=true end
    for _,word in ipairs(extra) do if not seen[word] then list[#list+1]=word;seen[word]=true end end
end
for category,words in pairs(userWords40.basic) do
    bank[category]=bank[category] or {}
    appendUserWords40(bank[category],words)
end
appendUserWords40(bank['훈민정음'],userWords40.hunmin)
appendUserWords40(bank['끝말잇기'],userWords40.chain)
appendUserWords40(bank['한방 단어'],userWords40.oneShot)
-- build44: more everyday words for Hunmin (exactly two syllables) and Chain (two or more).
do
    local hunmin44=W[[
가게 가격 가구 가난 가뭄 가방 가사 가수 가스 가슴 가위 가을 가정 가죽 가지 각도
간식 간장 간판 갈대 감기 감자 감사 감옥 감정 강당 강물 강변 강산 강풍 개념 개미
개발 개성 개울 거리 거미 거북 거울 거품 건강 건물 걸음 검사 겨울 결과 결심 결혼
경기 경찰 경치 계단 계란 계절 고기 고래 고무 고민 고집 고추 고통 고향 곡식 골목
공기 공부 공원 공장 공주 공책 공포 공항 과일 과자 과학 관객 관심 광장 교실 교사
교통 교회 구경 구두 구름 구멍 구슬 국물 국수 군대 군인 굴뚝 궁궐 권리 귀신 규칙
그늘 그릇 그림 그물 극장 근육 글씨 글자 금속 기계 기관 기름 기쁨 기술 기억 기온
기차 기침 기회 기후 긴장 길이 김밥 김치 깃발 까치 꼬리 꽃밭 꽃병 꽃잎 꿀벌 꿈속
나이 나비 나사 나라 낙엽 난로 난방 난초 날개 날씨 날짜 남매 남자 남쪽 낭비 낮잠
내일 냄비 냄새 냉면 냉장 노동 노랑 노래 노력 노선 노을 노인 녹차 논문 논쟁 농구
농담 농민 농부 농사 농장 눈물 눈빛 눈썹 느낌 늑대 능력 다리 다음 단어 단위 단점
단추 단체 단풍 달걀 달력 달빛 담요 담장 당근 대문 대답 대화 대학 대신 대표 도구
도둑 도로 도마 도서 도시 도장 도전 독서 돌담 동굴 동네 동물 동생 동시 동양 동전
동화 돼지 두부 두통 등산 등대 딸기 땅콩 떡국 램프 레몬 레일 로봇 로켓 리듬 리본
마당 마늘 마법 마을 마음 마차 막대 만남 만두 만점 만화 말투 맛집 망치 매력 매미
매일 맥주 머리 먼지 메달 메모 메뉴 면도 면접 명단 명령 명절 모기 모래 모양 모음
모임 모자 목욕 목적 목표 무게 무기 무늬 무대 무덤 무릎 무리 무지 문구 문명 문서
문장 문제 문화 물가 물감 물건 물결 물음 물질 미국 미래 미소 미술 미역 미용 민요
민족 믿음 바늘 바다 바닥 바람 바위 박수 반대 반복 반장 반지 반찬 발견 발목 발표
밥상 방문 방법 방석 방송 방학 방향 배경 배구 배낭 배달 배추 백성 버릇 버섯 버스
번개 번호 벌금 벌레 범인 법률 법칙 벚꽃 변화 별명 별빛 병원 보물 보석 보험 복도
복사 본문 볼펜 봄날 봉지 부담 부모 부분 부엌 부자 부족 부채 북극 북쪽 분노 분수
분야 불꽃 불빛 불안 불편 비누 비늘 비닐 비밀 비용 비행 빗물 빙수 빛깔 사건 사과
사극 사냥 사랑 사막 사물 사실 사업 사용 사원 사이 사인 사자 사장 사전 사진 사탕
사회 산길 산맥 산불 산소 산업 산책 살구 살림 삼각 삼촌 상대 상상 상식 상업 상자
상점 상처 상태 상표 상품 새벽 새우 새해 색깔 샌들 생각 생강 생물 생선 생일 생활
서랍 서류 서점 서쪽 석유 석탄 선거 선물 선배 선생 선수 선택 설날 설명 설탕 섬유
성격 성공 성당 성별 성분 성인 성적 성질 세계 세금 세대 세상 세수 세월 세탁 소개
소금 소독 소리 소문 소방 소설 소식 소원 소음 소재 소주 소풍 속담 속도 속옷 손님
손목 손발 솜씨 송이 수건 수고 수단 수도 수레 수리 수면 수명 수박 수사 수술 수업
수염 수영 수입 수저 수준 수집 수첩 수출 수학 숙녀 숙제 순간 순서 순위 술집 숨결
숫자 쉼터 스님 스승 스키 슬픔 습관 승객 승리 시각 시간 시계 시골 시내 시대 시도
시력 시민 시선 시설 시소 시야 시월 시인 시작 시장 시절 시청 시험 식당 식물 식사
식초 식탁 신고 신문 신발 신분 신비 신호 실력 실수 실습 실험 심장 심판 십자 싸움
쌀밥 아기 아내 아들 아래 아빠 아침 악기 악몽 악수 안개 안경 안내 안방 안전 앞길
앞날 애정 야구 야생 약국 약속 약점 약초 양말 양보 양식 양파 어깨 어른 어부 어휘
언니 언덕 언어 얼굴 얼음 엄마 업무 여관 여권 여름 여론 여성 여왕 여우 여자 여행
역사 역할 연구 연극 연기 연락 연료 연말 연못 연설 연습 연필 열매 열쇠 열정 열차
염소 영감 영국 영상 영양 영어 영웅 영화 옆집 예감 예금 예보 예산 예술 예약 예의
예절 오늘 오락 오리 오빠 오이 오전 오해 온도 온몸 올해 옷장 완성 왕관 왕국 외국
외출 요금 요리 요일 요즘 용기 용돈 용서 우리 우산 우선 우승 우연 우유 우정 우주
운동 운명 운전 울음 웃음 원고 원료 원리 원인 원칙 월급 위기 위로 위반 위생 위치
위험 유래 유리 유물 유월 유적 유행 육지 은행 음료 음성 음식 음악 의견 의논 의무
의문 의미 의사 의자 의지 이것 이끼 이날 이론 이름 이마 이모 이민 이별 이불 이사
이상 이웃 이유 이익 이전 이해 인간 인구 인기 인내 인류 인사 인상 인생 인쇄 인연
인정 인형 일곱 일기 일꾼 일몰 일부 일상 일생 일출 일행 임금 입구 입력 입술 입장
입학 자국 자녀 자동 자료 자루 자리 자막 자석 자신 자연 자원 자유 자전 자존 작가
작곡 작년 작문 작품 잔디 잔치 잠깐 잠옷 장갑 장군 장난 장래 장르 장마 장면 장미
장사 장소 장식 장애 장점 재능 재료 재미 재산 재판 쟁반 저금 저녁 저울 저장 적성
전교 전국 전기 전달 전등 전략 전망 전문 전설 전쟁 전체 전통 전화 절대 절반 절약
점수 점심 점검 접시 정답 정리 정말 정면 정보 정부 정성 정신 정원 정의 정지 정직
정치 제과 제목 제비 제안 제일 제품 조각 조건 조개 조금 조명 조사 조상 조선 조심
조용 조절 조직 조카 존경 졸업 종교 종류 종이 좌석 주간 주먹 주문 주민 주소 주스
주의 주인 주장 주제 주차 죽음 준비 줄기 중간 중요 중심 지갑 지구 지금 지도 지름
지방 지붕 지식 지역 지원 지위 지진 지하 지혜 직업 직장 직접 진동 진료 진실 진짜
진흙 질문 질병 집안 집중 짝꿍 쪽지 차량 차례 차이 차별 착각 참가 참고 참새 참외
창가 창고 창문 창작 채널 채소 책방 책임 책장 처음 천국 천둥 천막 천재 철도 철봉
철학 첫째 청소 청년 체력 체온 체육 체험 초대 초록 초밥 초보 초원 촛불 총각 최고
최근 최선 추석 추억 추위 추천 축구 축제 축하 출구 출발 출석 출신 출판 충격 취미
취소 취직 치료 치마 치약 치즈 친구 친절 친척 침대 침묵 칭찬 카드 카페 칼날 캠핑
커튼 커피 코끝 콩밭 쿠키 크기 크림 타국 타령 타월 탁구 탄생 탈출 탐구 탐험 태극
태도 태양 태풍 택배 택시 터널 토끼 토론 통계 통로 통신 통일 통증 통학 퇴근 퇴원
투명 투표 트럭 특기 특별 특성 특징 틈새 파도 파랑 파리 파악 파일 파티 판단 판매
판결 팔찌 패션 팬티 편견 편리 편의 편지 평가 평균 평등 평범 평생 평소 평야 평일
평화 포도 포장 포함 폭력 폭탄 폭포 폭풍 표현 표면 표정 표지 풍경 풍선 풍습 풍차
피로 피부 피자 필기 필수 필요 필통 핑계 하나 하늘 하루 하품 학교 학급 학년 학문
학부 학생 학습 학원 학자 한계 한글 한복 한숨 한옥 할인 함께 함성 합격 합계 합창
항구 항상 항의 해결 해군 해답 해마 해변 해산 해석 해설 해안 해외 해초 핵심 햇빛
행동 행복 행사 행운 행진 향기 향수 허락 허리 현관 현금 현대 현상 현실 현장 혈액
형광 형사 형식 형제 형태 호기 호수 호흡 혹시 혼자 홍수 홍차 화가 화면 화분 화산
화상 화장 화재 화초 확률 확인 환경 환영 환자 활동 활용 황금 황사 회견 회관 회복
회사 회색 회원 회의 효과 효도 후반 후식 후추 후회 훈련 휴가 휴식 휴일 흑백 흔적
희망 희생 흰색
]]
    local chain44=W[[
가로등 가습기 가오리 가이드 가정집 가죽옷 감나무 감독관 강아지 강낭콩 개구리 개나리 개미핥기 거미줄 거북이 건전지
겨드랑이 계산기 계산서 고구마 고드름 고등어 고속도로 고슴도치 고양이 고춧가루 골동품 공깃돌 공무원 공룡알 공작새 과수원
관광지 교과서 교통사고 구급차 구두쇠 구렁이 구름다리 국립공원 국화빵 굴다리 귀뚜라미 귀걸이 그림자 그림책 기러기 기상청
기와집 기지개 기차역 길고양이 김치찌개 깍두기 꼬마전구 꽃다발 꽃샘추위 꾀꼬리 꿀단지 나뭇잎 나무꾼 나침반 나팔꽃 날다람쥐
남대문 낭떠러지 냉장고 너구리 널뛰기 노란색 노트북 놀이터 농구공 눈사람 눈송이 눈동자 능구렁이 다람쥐 다리미 다시마
다이아몬드 단무지 단팥죽 달팽이 닭갈비 담쟁이 대나무 대장간 도깨비 도라지 도마뱀 도서관 도시락 독수리 돋보기 돌고래
돌다리 동그라미 동물원 동화책 돼지고기 두꺼비 두더지 두루미 뒷마당 드라마 드라이기 들국화 딱따구리 딸꾹질 떡볶이 뚝배기
라디오 라일락 레모네이드 롤러코스터 리모컨 마라톤 마술사 마을버스 막걸리 만화책 말미잘 망아지 망원경 메뚜기 메아리 모기장
모닥불 모래성 목도리 목욕탕 무궁화 무지개 문방구 물고기 물방울 물수제비 미끄럼틀 미꾸라지 미역국 민들레 밀가루 밀짚모자
바가지 바구니 바나나 바느질 바다표범 바람개비 바지락 박물관 반딧불 발가락 발자국 밤나무 밥그릇 방울토마토 백두산 뱀장어
버드나무 번데기 벚나무 별똥별 병아리 보리차 보름달 복숭아 봉숭아 부엉이 부채꼴 북두칠성 분수대 불가사리 비둘기 비빔밥
비행기 빗자루 뻐꾸기 뼈다귀 사다리 사마귀 사슴벌레 사진기 산딸기 산신령 삼각형 삼겹살 삼륜차 샌드위치 서커스 선인장
선풍기 설거지 세탁기 소나기 소나무 소쿠리 소방차 속눈썹 손수건 송사리 쇠고기 수도꼭지 수영장 수족관 숟가락 스케치북
스키장 시금치 시계탑 신호등 실로폰 쌍둥이 쌀국수 아궁이 아기곰 아이스크림 아지랑이 안내판 앵무새 양치기 어린이 얼룩말
엄지손가락 엉겅퀴 연날리기 연필깎이 열기구 오렌지 오징어 오토바이 옥수수 올챙이 완두콩 우체통 운동장 원숭이 유리병 유채꽃
은행나무 이쑤시개 인형극 일기장 자동차 자전거 자판기 잔디밭 잠자리 장독대 장수풍뎅이 재봉틀 저금통 전봇대 전화기 젓가락
정류장 제비꽃 조개껍데기 종이배 주전자 줄넘기 쥐구멍 지게차 지우개 지팡이 지하철 진달래 진돗개 책가방 청개구리 청설모
체육관 초콜릿 축구공 카네이션 카메라 칼국수 캥거루 컴퓨터 코끼리 코스모스 콩나물 크레파스 크리스마스 탁상시계 탬버린 토마토
토끼풀 트럼펫 티셔츠 파인애플 팥빙수 편의점 포장마차 프라이팬 피아노 하모니카 한라산 할미꽃 해바라기 해파리 햄스터 헬리콥터
호랑이 홍당무 화장실 회전목마 휴지통
]]
    appendUserWords40(bank['훈민정음'],hunmin44)
    appendUserWords40(bank['끝말잇기'],chain44)
    -- Two-syllable Hunmin words are valid Chain words as well.
    appendUserWords40(bank['끝말잇기'],hunmin44)
end
-- oneShots and bank['한방 단어'] share the same table after initialization.
-- State
-- build49: additional two-syllable Hunmin candidates; deletions are applied below.
do
    local additions47=W[[
갈퀴 가결 가공 가난 가담 가동 가락 가마 가맹 가발 가설 가속 가압 가업 가요 가전 가정 가죽 가축 가출 가택 가파 가학 각광 각국 각도 각오 간격 간극 간뇌 간담 간부 간섭 간염 간첩 간판 간호 갈비 감각 감금 감면 감별 감상 감소 감염 감점 감찰 감촉 감회 강경 강국 강남 강도 강변 강사 강연 강점 강철 강화 개강 개국 개념 개방 개설 개업 개입 개정 개찰 개척 개천 개편 개항 개혁 거동 거래 거름 거부 거절 거탑 거품 거행 건국 건물 건설 건조 건축 검도 검사 검증 검찰 검토 격납 격돌 격리 견인 견학 결과 결말 결박 결의 결정 결탁 결판 결함 경고 경과 경로 경매 경사 경쟁 경축 경품 경호 고갈 고개 고고 고난 고뇌 고도 고독 고리 고막 고명 고백 고별 고사 고안 고전 고찰 고통 고향 곡괭 골리 공동 공모 공부 공사 공약 공채 공천 공판 공포 공학 과목 과정 과제 과학 관념 관람 관리 관문 관세 관절 관철 관측 관행 교양 교육 교정 교통 교환 구두 구매 구애 구조 구체 구토 구호 국경 국내 국민 국방 국어 국채 군내 군포 권력 귀국 귀성 기념 기능 기대 기도 기록 기린 기말 기법 기사 기원 기적 기체 기초 기타 기탁 기피 기한 까닭 까치 깡통 꼬리 꼬막 꼭지 꽃게 꽃길 꽃말 꽃밭 꽃병 꽃씨 꿀물 꿀벌 꿀잠 꿈결 꿈길 꿈속 끈기 끝말 끝물 나귀 나날 나라 나락 나무 나비 나사 나이 나팔 나흘 낙서 낙원 낙제 낙찰 낙타 낙폭 낙하 낙후 난관 난동 난로 난민 난세 난입 난제 난청 난투 난항 남극 남남 남녀 남매 남방 남부 남성 남아 남용 남자 남편 남한 납득 낭랑 낭만 낭비 낭송 내각 내공 내년 내력 내막 내분 내성 내외 내일 내장 내전 내측 내포 내항 냉대 냉면 냉방 냉수 냉장 냉채 냉탕 냉풍 냉해 노고 노년 노도 노령 노모 노비 노선 노안 노인 노점 노출 노크 노트 노화 논리 논설 논쟁 농가 농도 농락 농민 농부 농사 농업 농장 농촌 농토 농협 누각 누님 누대 누락 누이 누전 누추 눈금 눈독 눈물 눈발 눈살 눈앞 눈짓 눈치 늑대 능가 능동 능률 능멸 능변 능지 니켈 다각 다과 다년 다락 다방 다수 다양 다짐 다행 단가 단결 단골 단념 단독 단락 단면 단발 단서 단어 단위 단장 단체 단타 단풍 단합 달걀 달달 달력 달마 달밤 달성 달인 달집 달포 담금 담당 담력 담배 담소 담임 담장 담판 담화 당구 당뇨 당락 당면 당분 당선 당일 당장 당첨 당황 대가 대강 대결 대공 대구 대낮 대답 대대 대란 대로 대망 대변 대상 대안 대우 대장 대체 대출 대타 대통 대표 대학 대회 덩크 데크 도감 도공 도난 도달 도덕 도래 도로 도마 도망 도박 도배 도서 도심 도안 도입 도장 도전 도착 도쿄 도태 도포 도화 독감 독대 독립 독무 독방 독서 독일 독자 독창 독파 독학 동감 동굴 동네 동등 동료 동맥 동반 동사 동아 동의 동작 동창 동태 동포 동화 두근 두뇌 두둑 두루 두목 두부 두상 두유 두통 두피 두해 둔덕 둔치 뒷문 등교 등대 등락 등분 등산 등장 등호 딸기 땀샘 땃쥐 땅굴 땅콩 떡국 떡집 뚝심 뜀틀 뜨개 라거 라드 라면 라벨 라지 라치 라켓 라틴 락커 랄라 래퍼 랠리 램프 랭킹 러닝 러시 레고 레닌 레몬 레알 레어 레저 로고 로드 로마 로밍 로봇 로비 로스 로얄 로열 로즈 로커 로켓 로크 로터 롤러 루머 루비 루어 루저 루트 루프 리그 리더 리드 리듬 리모 리본 리셋 리스 리조 리치 리터 리프 릴리 마감 마개 마귀 마녀 마님 마당 마력 마루 마마 마법 마술 마약 마을 마음 마중 마차 마켓 마태 마포 마흔 막강 막내 막대 막막 막부 막사 막장 막차 막춤 막판 막후 만개 만기 만남 만담 만료 만물 만반 만세 만원 만족 만찬 만취 만평 만화 말기 말로 말미 말벗 말소 말일 말채 말총 말판 망각 망루 망언 매각 매국 매년 매도 매매 매번 매수 매일 매장 매체 매출 매표 매화 머리 먹보 먹이 메뉴 메모 메카 멘토 면담 면모 면박 면세 면역 면적 면허 명령 명목 명부 명사 명예 명절 명칭 명태 명품 명함 모금 모녀 모던 모래 모멸 모반 모순 모음 모자 모체 모친 모카 모터 모피 모험 목도 목록 목발 목사 목욕 목재 목차 목탁 목화 무게 무기 무늬 무대 무덤 무리 무명 무법 무사 무역 무장 무채 무척 무통 무패 무한 문구 문단 문란 문명 문법 문서 문의 문장 문체 문턱 문패 문학 물기 물독 물레 물망 물병 물소 물음 물질 물체 물통 물풀 물회 미각 미궁 미남 미녀 미달 미래 미모 미백 미소 미역 미장 미추 미터 미풍 미학 민간 민란 민망 민속 민원 민족 민폐 민화 밀도 밀밭 밀크 밀통 바구 바늘 바다 바람 바지 박격 박대 박람 박사 박자 반격 반납 반대 반란 반말 반복 반사 반영 반장 반찬 반팔 반항 발굴 발달 발령 발목 발병 발상 발음 발전 발차 발톱 발판 발행 방공 방뇨 방대 방류 방면 방범 방송 방어 방전 방청 방탄 방패 방학 배경 배낭 배달 배려 배면 배반 배수 배우 배정 배치 배탈 배포 배후 백금 백두 백미 백발 백성 백일 백지 백치 백태 백포 백합 뱅크 버금 버너 버스 버킷 번뇌 번역 번지 벌레 벙커 벤치 벽돌 변동 변비 변신 변압 변천 변태 변화 별명 병균 병렬 보강 보도 보리 보물 보복 보수 보안 보조 보충 보통 보편 보험 복구 복도 복면 복부 복사 복원 복지 복층 복통 복판 복학 본국 볼링 부각 부당 부리 부모 부문 부부 부사 부엌 부자 부채 부케 부품 부활 북극 북부 북서 북어 북풍 분교 분단 분리 분말 분배 분수 분양 분자 분출 분통 분포 분해 불가 불도 불량 불만 불법 불사 불안 불찰 불통 불편 불행 비극 비난 비단 비료 비밀 비방 비상 비유 비중 비축 비탄 비판 비행 빈곤 빈대 빈말 빈부 빈손 빈약 빈집 빈칸 빈틈 빈혈 빌라 빨강 빨대 빨래 빵집 뻐꾹 뼈대 뼛속 뽀뽀 뿌리 사각 사건 사격 사고 사과 사극 사기 사내 사단 사랑 사례 사막 사망 사발 사법 사선 사슴 사양 사위 사유 사자 사전 사찰 사탕 사표 사회 산길 산내 산란 산맥 산불 산소 산악 산적 산책 산타 산포 산하 살도 살림 살모 살벌 살수 살점 살충 살포 살해 삼각 삼대 삼림 삼매 삼복 삼선 삼월 삼중 삼촌 삼포 삼한 상가 상공 상대 상류 상모 상반 상식 상어 상자 상처 상태 상표 상회 생년 서기 서당 서랍 서명 서부 서식 서양 서점 서체 서해 석고 석유 선거 선두 선로 선물 선반 선수 선원 선장 선착 선택 선포 선호 설계 설득 설립 설명 설비 설사 설악 설정 설탕 설화 성과 성대 성립 성명 성별 성수 성악 성장 성찰 성패 성화 소각 소금 소녀 소년 소독 소라 소매 소방 소설 소원 소재 소총 소켓 소통 소파 소화 속도 수건 수고 수녀 수단 수도 수량 수리 수면 수박 수술 수업 수저 수첩 수컷 수통 수표 수학 숙고 숙달 숙명 숙박 숙소 숙제 숙취 순간 순대 순번 순서 순위 순종 순찰 순탄 순풍 순환 술래 스캔 스키 습격 시각 시간 시내 시대 시도 시력 시민 시범 시선 시인 시장 시청 시트 시편 시험 식기 식당 신경 신념 신도 신뢰 신문 신발 신선 신앙 신전 신체 신탁 신품 신화 실격 실내 실대 실력 실망 실비 실수 실업 실전 실천 실크 실태 실패 실험 심각 심도 심리 심문 심부 심사 심야 심정 심층 심통 심판 심화 싱크 싸움 쌀밥 쌀집 쌍수 쌍쌍 쐐기 쓰임 쓸개 씁쓸 씨름 씨앗 씨족 아귀 아내 아동 아래 아마 아사 아이 아직 아침 아크 아트 아편 아홉 악기 악당 악령 악몽 악보 악수 악의 악재 악취 악투 악평 악화 안개 안내 안녕 안대 안락 안목 안부 안색 안약 안전 안착 안타 안팎 알곡 알림 알몸 알밤 알선 알약 알집 알차 알토 알파 알현 암기 암내 암묵 암벽 암석 암자 암탉 암표 암호 압력 압축 앞니 앵커 양궁 양념 양도 양력 양모 양복 양식 양자 양초 양털 양파 양해 어금 어둠 어른 어미 어부 어서 어업 어제 어촌 어투 어포 어휘 에코 여객 여담 여름 여명 여백 여성 여유 여자 여친 여태 여파 여행 역경 역대 역량 역모 역법 역사 역임 역전 역투 역풍 역할 연극 연내 연대 연료 연못 연방 연설 연애 연장 연출 연탄 연필 연합 열기 열대 열량 열매 열병 열쇠 열애 열차 열흘 염가 염두 염려 염소 염원 염장 염치 염화 영국 영남 영도 영리 영문 영수 영양 영재 영토 영혼 예감 예년 예대 예리 예매 예방 예산 예외 예정 예찬 예탁 예행 오곡 오기 오년 오답 오류 오목 오븐 오수 오염 오전 오차 오크 오토 오판 오후 외교 외눈 외대 외래 외모 외박 외상 외양 외전 외출 외투 외환 요금 요도 요리 요망 요법 요소 요약 요점 요철 요트 요행 용기 용납 용도 용량 용모 용법 용서 용액 용접 용출 용퇴 용품 용해 우기 우뇌 우대 우려 우물 우박 우산 우유 우주 우측 우편 우회 워커 원금 원내 원동 원리 원망 원본 원소 원인 원점 원칙 원키 원통 원판 원형 월급 월동 월령 월말 월별 월세 월중 월초 위크 유골 유난 유도 유리 유머 유방 유산 유아 유전 유치 유통 유포 유행 육군 육도 육로 육묘 육박 육수 육아 육지 육체 육탄 육포 육회 은근 은닉 은둔 은밀 은색 은어 은전 은총 은퇴 은폐 은혜 음계 음독 음료 음모 음반 음식 음악 음절 음치 음탕 음표 음향 의거 의도 의뢰 의미 의복 의사 의자 의치 의탁 의표 의학 이국 이내 이동 이력 이마 이별 이사 이유 이전 이층 이탈 이해 인구 인내 인도 인력 인물 인부 인사 인원 인정 인체 인터 인파 인형 일기 일념 일단 일류 일몰 일반 일상 일원 일정 일출 일터 일품 일화 임금 임대 임란 임무 임박 임시 임원 임자 입구 입대 입력 입문 입법 입시 입원 입장 입찰 잉크 자각 자격 자국 자네 자녀 자동 자랑 자료 자막 자비 자석 자연 자유 자전 자취 자칼 자켓 자태 자학 작가 작동 작렬 작명 작법 작성 작용 작전 작태 작품 작화 잔금 잔돈 잔류 잔말 잔병 잔상 잔액 잔재 잔치 잔향 잠금 잠망 잠복 잠수 잠옷 잠재 잠행 장갑 장남 장독 장래 장모 장부 장소 장어 장점 장치 장터 장판 장화 재고 재난 재단 재료 재미 재배 재산 재앙 재정 재채 재킷 재택 재판 재회 저격 저녁 저당 저렴 저번 저수 저울 저자 저축 저택 저편 저하 적극 적대 적립 적막 적발 적성 적응 적자 적통 적합 전공 전날 전등 전력 전모 전부 전설 전원 전쟁 전차 전통 전파 전화 절개 절단 절로 절망 절반 절수 절약 절정 절차 절터 절판 절호 점검 점도 점령 점멸 점박 점수 점액 점자 점차 점토 점프 점화 정거 정도 정리 정면 정보 정성 정의 정전 정치 정통 정표 정화 젖니 조각 조건 조도 조리 조명 조별 조선 조언 조정 조차 조카 조커 조퇴 조판 조합 주걱 주도 주름 주말 주방 주사 주인 주제 주차 주택 주파 주황 중국 중년 중독 중력 중매 중반 중성 중앙 중점 중추 중퇴 중풍 중형 지갑 지난 지능 지도 지뢰 지명 지붕 지수 지역 지진 지체 지킴 지탱 지표 지하 직감 직무 직선 직업 직장 직파 직후 진급 진노 진도 진리 진보 진실 진주 진찰 진통 진품 진화 질감 질량 질문 질병 질서 질의 질주 질책 질투 질풍 질환 집게 집단 집락 집무 집밥 집사 집안 집중 집채 집필 집회 짜증 짝꿍 짝수 짬뽕 쪽문 쪽지 쫄면 찌개 찜닭 찜질 차고 차기 차녀 차도 차량 차별 차선 차액 차장 차차 차트 차표 차후 착각 착수 착지 찬가 찬동 찬밥 찬성 찬양 찬조 찬탈 찬포 찬합 찰기 찰칵 참여 창가 창녀 창단 창립 창문 창법 창살 창업 창작 창출 창피 창호 채굴 채무 채비 채소 채점 채취 채팅 채포 처가 처녀 처단 처럼 처마 처벌 처우 처지 처치 처형 천국 천년 천도 천리 천막 천벌 천사 천연 천재 천체 천태 천포 천하 철거 철도 철로 철망 철벽 철수 철제 철통 철판 철학 첨가 첨단 청각 청년 청동 청력 청명 청부 청소 청약 청자 청춘 청탁 청포 청혼 체크 초가 초년 초대 초래 초면 초보 초상 초원 초점 초청 초크 초토 초판 총각 총리 총무 총수 총알 총장 총포 총회 최고 추락 추모 추분 추석 추억 추적 추첨 추태 추풍 추행 출력 출마 출발 출석 출입 출장 출처 출토 출판 출하 취득 취재 치과 치대 치료 치약 치즈 치킨 치타 친구 친분 친애 친절 칠기 침구 침대 침략 침묵 침범 침수 침입 침전 침체 침투 침해 카누 카드 카레 카본 카스 카약 카트 카페 칵칵 칼라 캐치 캠프 캡처 커버 커서 커트 커피 컥컥 컬러 케이 케찹 켜기 코난 코너 코드 코란 코믹 코스 코어 코치 코트 코팅 콜라 콤보 콧김 콧대 콧물 콩콩 쾌감 쾌거 쿠키 쿠폰 쿼터 크기 크롬 크림 큰돈 큰방 큰형 클럽 키드 키스 키위 키즈 키트 킥킥 타개 타격 타고 타다 타당 타락 타령 타박 타사 타액 타인 타자 타투 타파 타협 탄내 탄력 탄막 탄복 탄성 탄압 탄창 탄탄 탄피 탄핵 탈곡 탈당 탈락 탈모 탈북 탈세 탈옥 탈주 탈출 탈퇴 탈피 탈환 탕감 탕도 태고 태극 태도 태몽 태반 태산 태양 태자 태초 태클 태풍 터널 터득 터키 테러 테마 토기 토너 토대 토론 토막 토박 토사 토양 토지 토착 토큰 토킹 토토 토핑 통계 통념 통닭 통로 통밀 통보 통신 통일 통장 통찰 통통 통풍 통행 퇴근 퇴학 투고 투덜 투명 투병 투수 투약 투쟁 투척 투톱 투표 투하 튜너 트럭 특공 특대 특례 특명 특보 특수 특약 특정 특채 특파 특허 티켓 파격 파견 파고 파도 파랑 파마 파벌 파손 파악 파업 파장 파초 파카 파탄 파편 파행 판결 판단 판로 판매 판별 판사 판이 판정 판촉 판타 판판 판형 팔각 팔도 팔방 팔순 팔월 팔자 팔촌 패널 패딩 패망 패배 패스 패인 패자 패치 패턴 패혈 펀드 펑크 페니 페루 편도 편리 편모 편법 편식 편의 편지 편차 편파 편향 평가 평등 평론 평면 평범 평소 평안 평정 평창 평탄 평판 평화 폐기 포고 포도 포로 포말 포부 포수 포옹 포장 포착 포커 포크 포탄 포피 포함 폭격 폭동 폭락 폭발 폭설 폭염 폭주 폭축 폭탄 폭포 폭행 표기 표류 표면 표본 표시 표어 표정 표창 표현 푸념 풀기 풍류 풍문 풍부 풍선 풍요 풍자 풍토 풍파 풍향 피고 피난 피대 피로 피막 피부 피서 피임 피자 피차 피켓 피토 피폭 피해 핑계 핑크 하강 하객 하교 하나 하녀 하단 하락 하마 하반 하수 하얀 하자 하차 하키 하트 하품 하하 학과 학대 학력 학문 학벌 학생 학업 학자 학파 학회 한강 한국 한낮 한도 한류 한문 한복 한숨 한약 한자 한철 한탄 한판 할당 할례 할멈 할부 할인 할증 할터 합격 합동 합류 합법 합산 합의 합작 합창 합판 항공 항등 항로 항목 항변 항소 항의 항전 항체 항포 항해 해고 해녀 해답 해류 해마 해변 해설 해안 해적 해체 해커 해탈 해풍 해협 허가 허니 허당 허리 허무 허브 허수 허용 허탈 허풍 허허 헐크 헬기 현관 현도 현란 현미 현수 현역 현장 현찰 현타 현판 현황 혈관 혈당 혈류 혈맥 혈변 혈색 혈액 혈전 혈청 혈통 혈흔 형광 형량 형벌 형사 형용 형제 형체 형태 형편 호감 호두 호령 호모 호박 호수 호의 호적 호출 호텔 호평 호흡 홍길 화가 화단 화력 화목 화법 화석 화음 화재 화초 화투 화폐 화학 환경 회계 회담 회로 회문 회복 회사 회의 회전 회차 회피 회화 효녀 휴가 휴대 휴면 휴식 휴일 휴전 휴학 흉내 흐름 흑곰 흑도 흑막 흑백 흑염 흑자 흑토 흑표 흑흑
]]
    appendUserWords40(bank['훈민정음'],additions47)
end
-- build49 source: https://m.blog.naver.com/gkfmvp/222254983889
-- Blog table includes archaic/dialect/proper-name candidates, not verified Roblox wins.
-- kkukowiki.kr returned HTTP 403; no wiki extraction is claimed.
do
    local attack48=W[[
가녘 각시돔 간그릇 간두렁 갈륨 갑졀 강녘 개녘 개울녘 개욹 객꾼 갤럽 갯불녘 갱즙 거먕 게눔 게르마늄 겨릅 겨욹 고욤 곤달걀 골밑슛 골팍 곰팍 괴팍 구릅 글픠 기쁨 길녘 나이오븀 나트륨 날달걀 남녘 낱냥쭝 낱돈쭝 낱푼쭝 네쁘 네오디뮴 넬슨 넵투늄 넵튠 노스럽 논두렁 니오븀 닉슨 닐슨 다이디뮴 닥서렁 닥울녘 단미시럽 달걀 닭울녘 당밀시럽 대뇸 대숳 댓슌 더브늄 던드렁 덜렁 덩굴시렁 덴드로븀 도린꼍 도텹 도톨왐 독마릅 독무럽 동녘 동솣 두듥 두렁 두릅 둘암탉 둘훕 뒤꼍 뒷묗 듀엣 듁슌 드렁 드릅 들녘 디귿 디디뮴 딥지즑 라듐 라디오악티늄 라켓 란타늄 램로켓 러시안룰렛 로듐 로켓 루비듐 루테튬 룰렛 리츨 리튬 마이크로모듈 말겯말왐 맞춤부엌 매럿 멀티탭 멘델레븀 멧두릅 며츨 모듈 모촘 몰리브덴산암모늄 몸가눔 몸픠 무늬제라늄 무뤂 물녘 미너렛 미쁨 바륨바이올렛 반됵 받두듥 발가울넠 발리슛 발툽 밭두럭 밭두렁 배상꾼 배아픔 배휼 버클륨 베르겐그륀 베릴륨 벨렝 보리앝 보즌켓 볼륨 부엌 부텨 북녘 불녘 불웝 뷰렛 브델륨 브롬나트륨 블랙마켓 비넁 비눔 비욷 사마륨 살갗 삼시욹 새벽녘 샛깆 생달걀 서굠 서녘 섣달그믐 설낏 섯녘 세륨 셀레늄 소듐 속아픔 손도궃 손슌 솔옺 슬픔 실루엣 아픔 악티늄 안녘 안뒤꼍 알루미늄 암탉 암톹 앞녘 앵글로색슨 어롱가릐 어븀 엉구렁 에디슨 에르븀 엠프슨 오븐 오스뮴 오지랖 옥소늄 온시듐 왼녘 우라늄 울녘 윈타테륨 유럽 유로퓸 이리듐 이븐 이쯤 이터븀 자리낏 자이로파일럿 자켓 장주릅 잦아듦 잭슨 저마늄 저우커우뎬 젖주럽 제라늄 제릅 주릅 중첩모듈 즈릅 지르코늄 지싥 지읒 지즑 채드윅 책시렁 챈녘 처마기슭 추베이촨 취소나트륨 취소암모늄 취소칼륨 취화암모늄 치읓 카드뮴 칼륨 칼리포르늄 캐럴 캘리포늄 커피시럽 코뮨 코스튬 콕시듐 콜로듐 콜로포늄 콤뮨 퀴륨 퀵스텝 크로뮴 크로켓 키읔 타이타늄 태껸 테크네튬 텔루륨 토륨 툴륨 트라이튬 트리튬 티읕 팀파눔 파라헬륨 파일럿 팔라듐 팜플렛 패러쾃 패럴 팬클럽 페럿 페로세륨 페르뮴 펜클럽 폴로늄 표구렁 푸렁 풀앝 프라세오디뮴 프로메튬 플루토늄 피읖 필믁 하릅 하외욤 하프늄 할럴 해리슨 해암탉 핵클럽 헌겊 헛부엌 헝겊 헤욤 헬륨 헬스클럽 흐렁 히읗
]]
    local chain48=W[[
가녘 가력 각시돔 간그릇 간두렁 갈륨 갑졀 강녘 개녘 개울녘 개욹 객꾼 갤럽 갯불녘 갱즙 거먕 게눔 게르마늄 겨릅 겨욹 고구려 고드름 고욤 곤달걀 골밑슛 골팍 곰팍 과녁 괴팍 구릅 그릇 글픠 기력 기쁨 길녘 나릅 나이오븀 나트륨 날달걀 남녘 낱냥쭝 낱돈쭝 낱푼쭝 네쁘 네오디뮴 넬슨 넵투늄 넵튠 노력 노스럽 논두렁 누렁 니오븀 닉슨 닐슨 다이디뮴 닥서렁 닥울녘 단미시럽 달걀 닭울녘 당뇨 당밀시럽 대뇸 대숳 댓슌 더브늄 던드렁 덜렁 덩굴시렁 덴드로븀 도린꼍 도쿄 도텹 도톨왐 독마릅 독무럽 독버섯 동녘 동솣 두듥 두렁 두릅 둘암탉 둘훕 뒤꼍 뒷묗 듀엣 듁슌 드렁 드릅 들녘 디귿 디디뮴 딥지즑 뚜껑 라듐 라디오악티늄 라켓 란타늄 램로켓 러시안룰렛 로듐 로켓 루비듐 루테튬 룰렛 류머티즘 리듬 리츨 리튬 마그네슘 마이크로모듈 말겯말왐 맞춤부엌 매듭 매럿 멀티탭 멘델레븀 멧두릅 며츨 모듈 모촘 몰리브덴산암모늄 몸가눔 몸픠 무늬 무늬제라늄 무뤂 무릎 물녘 미너렛 미쁨 바깥 바륨 바륨바이올렛 반됵 받두듥 발가울넠 발리슛 발툽 밭두럭 밭두렁 배상꾼 배아픔 배휼 버렁 버클륨 베르겐그륀 베릴륨 벨렝 보꾹 보리앝 보즌켓 볼륨 부엌 부텨 북녘 불녘 불웝 뷰렛 브델륨 브롬나트륨 블랙마켓 비넁 비눔 비욷 사마륨 살갗 삼시욹 새벽녘 샛깆 생달걀 서굠 서녘 서편 섣달그믐 설낏 섯녘 세륨 셀레늄 소꿉 소듐 소켓 속아픔 손도궃 손슌 솔옺 수탉 슬픔 습득 실루엣 아빠 아픔 악티늄 안녘 안뒤꼍 알루미늄 암탉 암톹 앞녘 앵글로색슨 어롱가릐 어뢰 어븀 엉구렁 에디슨 에르븀 엠프슨 여럿 오븐 오스뮴 오지랖 옥소늄 온시듐 왼녘 요즘 우라늄 울녘 윈타테륨 유럽 유로퓸 이리듐 이븐 이쯤 이터븀 자리낏 자이로파일럿 자켓 장주릅 잦아듦 재킷 잭슨 저마늄 저우커우뎬 저쯤 젖주럽 제라늄 제릅 주릅 줄무늬 중첩모듈 즈릅 지뢰 지르코늄 지름 지싥 지읒 지즑 차력 채드윅 책시렁 챈녘 처마기슭 초콜릿 추베이촨 취소나트륨 취소암모늄 취소칼륨 취화암모늄 치읓 카드뮴 카슨 카펫 칼륨 칼리포르늄 칼슘 캐럴 캘리포늄 커피시럽 코뮨 코스튬 콕시듐 콜로듐 콜로포늄 콤뮨 퀴륨 퀵스텝 크로뮴 크로켓 키읔 타이타늄 태껸 터븀 테크네튬 텔루륨 토륨 툴륨 트라이튬 트리튬 티읕 티켓 티타늄 팀파눔 파뇰 파라헬륨 파일럿 팔라듐 팜플렛 패러쾃 패럴 팬클럽 페럿 페로세륨 페르뮴 펜클럽 포럴 폴로늄 표구렁 푸렁 풀앝 프라세오디뮴 프렛 프로메튬 플루토늄 피읖 피켓 피펫 핀셋 필믁 하륨 하릅 하외욤 하프늄 할럴 해리슨 해암탉 해질녘 핵클럽 헌겊 헛부엌 헝겊 헤욤 헬륨 헬스클럽 흐렁 히읗
]]
    appendUserWords40(bank['한방 단어'],attack48)
    appendUserWords40(bank['끝말잇기'],chain48)
end
-- build49: small supplementary two-syllable list.
do
    appendUserWords40(bank['훈민정음'],W[[가림 가위 객실 결석 골절 국밥 국자 귓밥 귓속 금빛 기둥 깃털 꽃대 꽃술 꽃잎 낫날 낱말 낱장 눈곱 눈길 눈꽃 눈짓 달님 댓잎 덧니 도끼 뒷길 뒷발 뒷짐 들꽃 들풀 뚜껑 마루 매듭 맨몸 맨발 맨손 못질 문턱 문틀 문틈 물때 물병 물컵 물통 밑동 밑줄 밑천 발끝 발등 발목 발톱 밥솥 밥알 밥풀 벽돌 별똥 빗길 빗물 빗살 산길 산새 새싹 샛길 손길 손끝 손등 손목 손뼉 솜털 송곳 쇳물 술독 술잔 숫돌 숫자 숯불 쌀겨 쌀독 쌀떡 쌀알 쐐기 씨눈 앞길 앞발 앞집 옆길 옆방 옆집 은빛 잎맥 잎새 잔돈 잔돌 잔불 잔털 장롱 쟁반 젖병 주걱 집게 짚신 쪽빛 찻물 찻잔 찻집 창틀 천장 촛농 촛불 칼집 콧등 콧속 턱뼈 털실 톱날 풀꽃 풀밭 풋콩 해님 햇곡 햇볕 햇살 흙길 흙벽 흙집 힘줄]])
end
local hunmin41={seen={},ready=false,visible=false,box=nil,message='훈민정음 · 내 입력창 대기'}
local instantInput33=false
local Rapid44={zero=false,rapid=false,controls={},syncing=false}
local enabled,topic,delaySeconds,inputMode=false,nil,0.05,'게임 입력창'
local gameMode,initials,previousWord,chainStyle='기본','','','흔한 단어'
local hunminInterval,chainInterval,autoDetect=0.05,0.05,true
local manualTopic=nil
local submitMethod='자동 (키패드 없음)'
local draftCategory,draftWord='',''
local draftMode,draftChainStyle='기본','흔한 단어'
local similarTopics=true
local chosung={'ㄱ','ㄲ','ㄴ','ㄷ','ㄸ','ㄹ','ㅁ','ㅂ','ㅃ','ㅅ','ㅆ','ㅇ','ㅈ','ㅉ','ㅊ','ㅋ','ㅌ','ㅍ','ㅎ'}
local function letters(word)
    local list={}
    for _,point in utf8.codes(word) do table.insert(list,point) end
    return list
end
local function initial(word)
    local output={}
    for _,point in ipairs(letters(word)) do
        if point>=0xAC00 and point<=0xD7A3 then
            table.insert(output,chosung[math.floor((point-0xAC00)/588)+1])
        elseif point>=0x3131 and point<=0x314E then
            table.insert(output,utf8.char(point))
        end
    end
    return table.concat(output)
end
local hunminByInitial={}
for _,first in ipairs(chosung) do
    for _,second in ipairs(chosung) do
        hunminByInitial[first..second]={}
    end
end
local function addHunmin(word)
    if utf8.len(word)~=2 then return end
    local key=initial(word)
    local list=hunminByInitial[key]
    if not list then return end
    for _,old in ipairs(list) do if old==word then return end end
    table.insert(list,word)
end
wordDelete45.apply(bank) -- Run after built-in/custom/Claude44 word merges.
for _,word in ipairs(bank['훈민정음']) do addHunmin(word) end
do
    local covered,total=0,0
    for _,list in pairs(hunminByInitial) do
        if #list>0 then covered=covered+1 end
        total=total+#list
    end
    HunminTab:CreateParagraph({Title='훈민정음 초성별 후보 · build49',Content='두 글자 후보 '..total..'개 · 361개 초성 조합 중 '..covered..'개에 후보가 있습니다. 빈 조합에는 임의 단어를 생성하지 않습니다. 일반 자음 196조합 중 ㄹㅎ는 추가 후보 미확인입니다. 게임 사전에 따라 거절될 수 있으며 사용자 삭제 목록은 유지됩니다.'})
end

local function lastSyllable(word)
    local list=letters(word)
    return list[#list] and utf8.char(list[#list]) or ''
end
local function firstSyllable(word)
    local list=letters(word)
    return list[1] and utf8.char(list[1]) or ''
end
local used={}

-- Text helpers
local function topicKey(value)
    local key=tostring(value or ''):gsub('<[^>]->',''):gsub('%s+','')
    key=key:gsub('^현재주제：',''):gsub('^현재주제:',''):gsub('^주제：',''):gsub('^주제:','')
    key=key:gsub('[%p]','')
    -- Only the two OCR substitutions observed in supplied screenshots.
    if key=='꿀용표' or key=='꿀꿈표' then return '포유류' end
    return key
end
local function isTextObject(item)
    return item and (item:IsA('TextLabel') or item:IsA('TextButton') or item:IsA('TextBox'))
end
local function displayText(label)
    if not isTextObject(label) then return '' end
    local good,text=pcall(function() return label.ContentText end)
    local raw=(good and text~='' and text) or label.Text
    return (raw:gsub('<[^>]->',''):match('^%s*(.-)%s*$'))
end

-- Topic deletion is saved independently of built-ins, so removed topics stay removed.
local function reservedTopic(name)
    local key=topicKey(name)
    return key=='훈민정음' or key=='끝말잇기' or key=='한방단어'
end
for name in pairs(bank) do
    if not reservedTopic(name) and deletedTopics[topicKey(name):lower()] then bank[name]=nil end
end
local refreshTopicList=function() end
local lastRemoved=nil
local function resetTopicState()
    topic=nil;manualTopic=nil;used={}
end
local function createTopic(value)
    local name=tostring(value or ''):match('^%s*(.-)%s*$')
    local key=topicKey(name):lower()
    local good,length=pcall(utf8.len,name)
    if key=='' or not good or not length or length>40 then return nil,'주제는 1~40글자로 입력하세요' end
    if reservedTopic(name) then return nil,'훈민정음·끝말잇기는 단어 추가에서 관리하세요' end
    for old in pairs(bank) do
        if topicKey(old):lower()==key then return old,'이미 있는 주제입니다' end
    end
    bank[name]={};deletedTopics[key]=nil
    refreshTopicList()
    return name
end
local function removeTopic(value)
    local key=topicKey(value):lower()
    if reservedTopic(value) then return false,'모드 사전은 주제 관리에서 삭제할 수 없습니다' end
    local removed={}
    for name,list in pairs(bank) do
        if topicKey(name):lower()==key then removed[name]=list end
    end
    if not next(removed) then return false,'삭제할 주제를 목록에서 선택하세요' end
    for name in pairs(removed) do bank[name]=nil end
    deletedTopics[key]=true;lastRemoved={key=key,topics=removed}
    resetTopicState();refreshTopicList()
    return true
end
local function undoRemoveTopic()
    if not lastRemoved then return false end
    for name,list in pairs(lastRemoved.topics) do
        bank[name]=bank[name] or {}
        local seen={}
        for _,word in ipairs(bank[name]) do seen[word]=true end
        for _,word in ipairs(list) do if not seen[word] then table.insert(bank[name],word);seen[word]=true end end
    end
    deletedTopics[lastRemoved.key]=nil;lastRemoved=nil
    resetTopicState();refreshTopicList()
    return true
end
-- Explicit semantic families. No unrestricted substring matching.
local topicFamilies={
    {'포유류','포유동물','포유 동물'},
    {'빵','빵 종류','빵의 종류'},
    {'부족수','부족수 (1~100)','부족수(1~100)','부족수 1~100','1~100 부족수'},
    {'남미','남아메리카','남아메리카 국가','남미 국가'},
    {'학용품','문구','문구류','문구용품','학교 준비물'},
    {'동계 올림픽','동계올림픽','동계 올림픽 종목','겨울올림픽','겨울 올림픽'},
    {'하계 올림픽','하계올림픽','하계 올림픽 종목','여름올림픽','여름 올림픽'},
    {'음악 장르','음악장르','노래 장르','음악의 장르'},
    {'요일','일주일의 요일','일주일 요일'},
    {'한국을 빛낸 100명의 위인들','한국을빛낸100명의위인들','한국을 빛낸 백명의 위인들','한국을빛낸백명의위인들','한국을 빛낸 100명 위인들'},
    {'자동차','자동차 브랜드','자동차브랜드','자동차 브랜드명','자동차 회사','자동차회사','자동차 모델','자동차모델','차종'},
    {'치킨집','치킨 브랜드','치킨브랜드','치킨 프랜차이즈'},
    {'세계 수도','세계수도','나라 수도','각국 수도','수도'},
    {'무지개색','무지개 색','무지개 색깔','무지개색깔'},
    {'KBO','KBO 한국프로야구','한국프로야구','프로야구 구단'},
    {'소수','소수 1~100','소수1~100','1~100 소수','소수 1부터 100'},
    {'원소','주기율표','화학 원소'},
    {'라면재료','라면 재료'},
    {'체스','체스 기물','체스기물','체스 말','체스말'},
    {'군사계급','군사 계급','군대 계급'},
    {'캠핑용품','캠핑 용품'},
    {'햄버거재료','햄버거 재료'},
    {'국내섬','국내 섬','한국의 섬'},
    {'욕실용품','욕실 용품'},
    {'SNS','소셜미디어','소셜 네트워크'},
    {'교통수단','탈것'},
    {'커피 브랜드','커피브랜드','카페 브랜드','카페브랜드','커피전문점'},
    {'과목','초중고 과목','학교 과목','교과목'},
}
local topicPeers={}
for _,family in ipairs(topicFamilies) do
    for _,name in ipairs(family) do
        local key=topicKey(name):lower()
        topicPeers[key]=topicPeers[key] or {}
        for _,peer in ipairs(family) do topicPeers[key][topicKey(peer):lower()]=true end
    end
end
local function initialPrompt(value)
    local text=tostring(value or ''):gsub('%s+','')
    local prefix=text:match('^(.-)초성이들어간단어$')
    local key=prefix or text
    if key=='' then return nil end
    for _,cp in utf8.codes(key) do
        if cp<0x3131 or cp>0x314E then return nil end
    end
    return key
end
local function allowWords36(name,words)
    local allowed=familiarSets27[familiarKey27(name)]
    if not allowed then return end
    for _,word in ipairs(words) do allowed[word]=true end
end
for name,list in pairs(more36) do allowWords36(name,list) end
local function aliasTopics36(map)
    for _,entry in ipairs(map) do
        local combined={}
        for _,sourceName in ipairs(entry.sources) do
            local sourceKey=topicKey(sourceName):lower()
            for name,list in pairs(bank) do
                if topicKey(name):lower()==sourceKey then
                    for _,word in ipairs(list) do
                        if permittedBasicWord(name,word) then combined[#combined+1]=word end
                    end
                end
            end
        end
        for _,aliasName in ipairs(entry.names) do mergeWords({[aliasName]=combined}) end
    end
end
aliasTopics36({
    {names={'1~100 소수','소수 1~100','소수 1부터 100','소수1~100'},sources={'소수'}},
    {names={'각국 수도','나라 수도'},sources={'세계 수도','수도'}},
    {names={'교과목','학교 과목'},sources={'과목','초중고 과목'}},
    {names={'군대 계급'},sources={'군사 계급'}},
    {names={'무지개 색깔','무지개색깔'},sources={'무지개색'}},
    {names={'소셜 네트워크','소셜미디어'},sources={'SNS'}},
    {names={'자동차 브랜드명','자동차 회사','자동차회사'},sources={'자동차 브랜드'}},
    {names={'차종'},sources={'자동차 모델'}},
    {names={'치킨 프랜차이즈'},sources={'치킨 브랜드','치킨집'}},
    {names={'치킨브랜드'},sources={'치킨 브랜드','치킨집'}},
    {names={'카페 브랜드','카페브랜드','커피전문점'},sources={'커피 브랜드'}},
    {names={'프로야구 구단','한국프로야구'},sources={'KBO 한국프로야구'}},
    {names={'한국을 빛낸 백명의 위인들','한국을 빛낸 100명 위인들','한국을빛낸백명의위인들'},sources={'한국을 빛낸 100명의 위인들'}},
    {names={'한국의 섬'},sources={'국내 섬'}},
    {names={'화학 원소'},sources={'원소','주기율표'}},
    {names={'피자 재료','피자재료'},sources={'피자 토핑'}},
    {names={'햄버거 재료 종류'},sources={'햄버거 재료'}},
})
local function topicWords()
    if not topic then return nil end
    local prompt=initialPrompt(topic)
    if prompt then
        local output,seen={},{}
        for _,list in pairs(bank) do
            for _,word in ipairs(list) do
                if not seen[word] and utf8.len(word)==2 and initial(word)==prompt then
                    seen[word]=true;table.insert(output,word)
                end
            end
        end
        return output
    end
    local key=topicKey(topic):lower()
    if deletedTopics[key] then return {} end
    local peers=similarTopics and topicPeers[key] or nil
    local output,seen={},{}
    for name,list in pairs(bank) do
        local nameKey=topicKey(name):lower()
        if nameKey==key or (peers and peers[nameKey]) then
            if name~='훈민정음' and name~='끝말잇기' and name~='한방 단어' then
                for _,word in ipairs(list) do
                    if not seen[word] then seen[word]=true;table.insert(output,word) end
                end
            end
        end
    end
    return output
end
local function choose()
    local list=topicWords()
    if not list then return nil end
    local candidates={}
    for _,word in ipairs(list) do if not used[word] and permittedBasicWord(topic,word) then candidates[word]=true end end
    local key=topicKey(topic):lower()
    local peers=similarTopics and topicPeers[key] or nil
    local preferred={}
    for name,words in pairs(videoWords) do
        local nameKey=topicKey(name):lower()
        if nameKey==key or (peers and peers[nameKey]) then
            for _,word in ipairs(words) do if candidates[word] then preferred[word]=true end end
        end
    end
    local pool,longest={},0
    for word in pairs(next(preferred) and preferred or candidates) do
        local length=utf8.len(word)
        if length then
            if length>longest then pool={word};longest=length
            elseif length==longest then table.insert(pool,word) end
        end
    end
    if #pool==0 then return nil end
    local word=pool[math.random(1,#pool)]
    used[word]=true
    return word
end
local function detectDisplayedPrompt()
    if gameMode=='훈민정음' and hunmin41.probe then hunmin41.probe() end
end
local function chooseHunmin()
    if not hunmin41.ready then return nil,hunmin41.message,'waiting' end
    if utf8.len(initials)~=2 then return nil,'초성 두 개를 입력하세요 (예: ㄱㅅ).','' end
    local pool={}
    for _,word in ipairs(hunminByInitial[initials] or {}) do
        if utf8.len(word)==2 and initial(word)==initials and not used[word] and not hunmin41.seen[word] and not wordDelete45.data.hunmin[word] then table.insert(pool,word) end
    end
    if #pool==0 then return nil,'이 초성에 맞는 미사용 두 글자 단어가 없습니다.','' end
    local word=pool[math.random(#pool)]
    used[word]=true
    return word
end
local function chooseChain()
    local target=lastSyllable(previousWord)
    if target=='' then return nil,'이전 단어 또는 시작 글자를 입력하세요.','' end
    local pool={}
    local sources={}
    if chainStyle=='한방 단어' then
        sources[1]=oneShots
    else
        sources[1]=bank['끝말잇기']
    end
    for _,list in ipairs(sources) do
        for _,word in ipairs(list) do
            if firstSyllable(word)==target and not used[word]
                and not wordDelete45.blocked('끝말잇기',nil,word,chainStyle)
                and (chainStyle=='한방 단어' or utf8.len(word)>=2) then
                table.insert(pool,word)
            end
        end
    end
    if #pool==0 then return nil,'해당 시작 글자에 맞는 '..chainStyle..'가 없습니다.','' end
    local word=pool[math.random(#pool)]
    used[word]=true
    return word
end

-- Topic detection (Basic mode)
local topicLabels=setmetatable({},{__mode='k'})
local watchedGui,watchedWorld=nil,false
local function watchTopics(root)
    local function add(item)
        if item:IsA('TextLabel') or item:IsA('TextButton') or item:IsA('TextBox') then topicLabels[item]=true end
    end
    for _,item in ipairs(root:GetDescendants()) do add(item) end
    table.insert(session.connections,root.DescendantAdded:Connect(add))
end
local blockedNames={'rank','leaderboard','money','cash','coin','chat','bubble',
    'playerlist','playerword','answer','submitted','history','rayfield',
    '랭킹','순위','돈','채팅','답안','제출','기록'}
local function topicDisplayVisible(label,purpose)
    if not label.Parent or not label:IsA('GuiObject') then return false end
    local layer=label:FindFirstAncestorWhichIsA('LayerCollector')
    if not layer or not layer.Enabled or layer:IsA('BillboardGui') then return false end
    if not layer:IsA('ScreenGui') and not layer:IsA('SurfaceGui') then return false end
    -- Stop at the UI layer; a player/container name is not UI evidence.
    local node=label
    while node and node~=layer.Parent do
        if node:IsA('GuiObject') and not node.Visible then return false end
        local name=node.Name:lower()
        if purpose~='input' and name:match('^user_%d+$') then return false end
        for _,term in ipairs({'rayfield','textchat','chatwindow','bubblechat','leaderboard','playerlist','money','cash','coin','랭킹','채팅'}) do
            if name:find(term,1,true) then return false end
        end
        -- Answer rows are excluded without excluding an entire AnswerUI panel.
        if purpose~='input' and node==label then
            for _,term in ipairs({'playerword','submittedword','answerrow','답안목록'}) do
                if name:find(term,1,true) then return false end
            end
        end
        node=node.Parent
    end
    for _,other in ipairs(Players:GetPlayers()) do
        if other.Character and label:IsDescendantOf(other.Character) then return false end
        if other.Character and layer:IsA('SurfaceGui') and layer.Adornee
            and layer.Adornee:IsDescendantOf(other.Character) then return false end
    end
    if layer:IsA('ScreenGui') then
        local p,z=label.AbsolutePosition,label.AbsoluteSize
        if z.X<=0 or z.Y<=0 then return false end
        local camera=workspace.CurrentCamera
        if camera and camera.ViewportSize then
            local view=camera.ViewportSize
            if view.X and view.Y and (p.X+z.X<=0 or p.Y+z.Y<=0 or p.X>=view.X or p.Y>=view.Y) then return false end
        end
        local node=label.Parent
        while node and node~=layer do
            if node:IsA('GuiObject') and node.ClipsDescendants then
                local q,w=node.AbsolutePosition,node.AbsoluteSize
                if w.X<=0 or w.Y<=0 or p.X+z.X<=q.X or p.Y+z.Y<=q.Y
                    or p.X>=q.X+w.X or p.Y>=q.Y+w.Y then return false end
            end
            node=node.Parent
        end
    end
    return true
end
local function topicMarker(text)
    local key=topicKey(text):lower()
    return key=='주제' or key=='현재주제' or key=='단어주제'
        or key=='이번주제' or key=='topic' or key=='category'
end
local function explicitTopic(text)
    text=text:gsub('：',':')
    return text:match('^현재%s*주제%s*:%s*(.+)$')
        or text:match('^단어%s*주제%s*:%s*(.+)$')
        or text:match('^이번%s*주제%s*:%s*(.+)$')
        or text:match('^주제%s*:%s*(.+)$')
        or text:lower():match('^topic%s*:%s*(.+)$')
        or text:lower():match('^category%s*:%s*(.+)$')
end
local function topicNamed(node)
    if not node then return false end
    local name=node.Name:lower()
    return name:find('topic',1,true) or name:find('category',1,true)
        or name:find('주제',1,true)
end
local function topicEvidence(label)
    local text=displayText(label)
    local value=explicitTopic(text)
    if value then return value,3 end
    if topicMarker(text) then return nil end
    if topicNamed(label) or topicNamed(label.Parent) then return text,2 end
    local parent=label.Parent
    if parent and not parent:IsA('LayerCollector') then
        local values,marker=0,false
        for _,sibling in ipairs(parent:GetChildren()) do
            if sibling:IsA('TextLabel') and topicDisplayVisible(sibling) then
                local siblingText=displayText(sibling)
                if topicMarker(siblingText) then marker=true
                elseif siblingText~='' then values=values+1 end
            end
        end
        if marker and values==1 then return text,1 end
    end
end
-- Bind plain prompts to the game's visible entry box instead of screen height alone.
local function aboveGameInput(label)
    local layer=label:FindFirstAncestorOfClass('ScreenGui')
    if not layer then return false end
    local center=label.AbsolutePosition+label.AbsoluteSize/2
    for _,item in ipairs(layer:GetDescendants()) do
        if item:IsA('TextBox') and item.TextEditable~=false and topicDisplayVisible(item,'input') then
            local pos,size=item.AbsolutePosition,item.AbsoluteSize
            local gap=pos.Y-(label.AbsolutePosition.Y+label.AbsoluteSize.Y)
            if gap>=-size.Y*0.3 and gap<=math.max(size.Y*2,100)
                and center.Y<pos.Y+size.Y/2
                and center.X>=pos.X-size.X*0.2 and center.X<=pos.X+size.X*1.3 then
                return true
            end
        end
    end
    return false
end
-- The recording's diagnostic identifies Workspace.TowerClient.Cat*.Cat*.F.TextLabel.
-- These are 3D SurfaceGui category signs, separate from the ReactApp entry box.
local worldTopicDistance={}
local function worldTopic(label)
    local layer=label:FindFirstAncestorWhichIsA('LayerCollector')
    if not layer or not layer:IsA('SurfaceGui') then return nil end
    -- Category boards may be outside TowerClient; require a known topic and
    -- projection into the active input's header band below instead.
    local part=layer.Adornee or layer.Parent
    if not part or not part:IsA('BasePart') then return nil end
    local camera=workspace.CurrentCamera
    if not camera then return nil end
    local screenPosition,onScreen=camera:WorldToViewportPoint(part.Position)
    if not onScreen or screenPosition.Z<=0 then return nil end
    local gui=player:FindFirstChildOfClass('PlayerGui')
    if not gui then return nil end
    local bestDistance=math.huge
    for _,box in ipairs(gui:GetDescendants()) do
        if box:IsA('TextBox') and box.TextEditable~=false and topicDisplayVisible(box,'input') then
            local pos,size=box.AbsolutePosition,box.AbsoluteSize
            if size.X>0 and size.Y>0 then
                local targetX=pos.X+size.X/2
                local targetY=pos.Y-size.Y*0.65
                local dx,dy=screenPosition.X-targetX,screenPosition.Y-targetY
                local distance=math.sqrt(dx*dx+dy*dy)
                if distance<bestDistance and math.abs(dx)<math.max(size.X*0.7,120)
                    and screenPosition.Y<pos.Y+size.Y*0.25 then bestDistance=distance end
            end
        end
    end
    if bestDistance>math.max(camera.ViewportSize.Y*0.4,180) then return nil end
    local value=displayText(label)
    local key=topicKey(value):lower()
    local known=topicPeers[key]~=nil
    for name in pairs(bank) do if topicKey(name):lower()==key then known=true;break end end
    if not known or deletedTopics[key] then return nil end
    worldTopicDistance[label]=bestDistance
    return value,5
end
-- Layout rule for games that show the topic as plain big text at the top center.
-- Skips round numbers, timer text and prompts; the biggest remaining label wins.
local function layoutTopic(label)
    local layer=label:FindFirstAncestorWhichIsA('LayerCollector')
    if not layer or not layer:IsA('ScreenGui') then return nil end
    local anchored=aboveGameInput(label)
    -- Read stored UI text even if another window visually covers it.
    -- A known topic must share a live game input layer; geometry only boosts confidence.
    local hasInput=false
    for _,item in ipairs(layer:GetDescendants()) do
        if item:IsA('TextBox') and item.TextEditable~=false and topicDisplayVisible(item,'input') then
            hasInput=true;break
        end
    end
    if not hasInput then return nil end
    local text=displayText(label)
    local length=utf8.len(text)
    if not length or length<1 or length>40 then return nil end
    if topicMarker(text) then return nil end
    if text:find('[!?#:]') or text:match('^%d+$') then return nil end
    for _,term in ipairs({'입력','시간','라운드','점수','라이프','목숨','남은','종료','시작'}) do
        if text:find(term,1,true) then return nil end
    end
    -- A bare unknown answer must never become a new category.
    for name in pairs(bank) do
        if topicKey(name):lower()==topicKey(text):lower() then return text,anchored and 4 or 0 end
    end
    if topicPeers[topicKey(text):lower()] then return text,anchored and 4 or 0 end
    return nil
end
-- Fallback when the strict rules find nothing. Reads the biggest known-topic text in the
-- top-center band of the screen and skips the layer/clip filters that can reject the real header.
local function looseTopic(normalized)
    local camera=workspace.CurrentCamera
    if not camera then return nil end
    local view=camera.ViewportSize
    local best,ambiguous=nil,false
    for label in pairs(topicLabels) do
        if label.Parent and label:IsA('GuiObject') then
            local layer=label:FindFirstAncestorWhichIsA('LayerCollector')
            if layer and layer:IsA('ScreenGui') and layer.Enabled then
                local pos,size=label.AbsolutePosition,label.AbsoluteSize
                local center=pos+size/2
                if size.X>0 and size.Y>0 and center.Y>=0 and center.Y<=view.Y*0.45
                    and math.abs(center.X-view.X/2)<=view.X*0.3 then
                    local text=displayText(label)
                    local key=topicKey(text):lower()
                    local name=normalized[key]
                    if not name and topicPeers[key] then name=text end
                    if name and not deletedTopics[key] then
                        local hidden=false
                        local node=label
                        while node and node~=layer do
                            if node:IsA('GuiObject') and not node.Visible then hidden=true;break end
                            node=node.Parent
                        end
                        local path=label:GetFullName():lower()
                        for _,term in ipairs({'rayfield','textchat','chatwindow','bubblechat','leaderboard','playerlist'}) do
                            if path:find(term,1,true) then hidden=true;break end
                        end
                        if not hidden then
                            local height=label.TextBounds.Y
                            if not best or height>best.size+0.5 then
                                best={label=label,name=name,evidence=1,size=height};ambiguous=false
                            elseif math.abs(height-best.size)<=0.5 and name~=best.name then
                                ambiguous=true
                            end
                        end
                    end
                end
            end
        end
    end
    if ambiguous then return nil end
    return best
end
-- Direct header binding: select a real GUI text object once, then follow its path.
-- This reads Text properties; it is not screenshot OCR and does not infer a title from answers.
local boundHeader,boundDescriptor=nil,nil
local bindArmedUntil,bindArmedAfter=0,0
local bindingMessage='게임의 일반 주제판 자동 탐색 중'
local bindingPath='WordStackHub_TopicSource.json'
local function bindingRoot(kind)
    if kind=='Workspace' then return workspace end
    if kind=='PlayerGui' then return player:FindFirstChildOfClass('PlayerGui') end
    if kind=='CoreGui' then
        local ok,root=pcall(function() return game:GetService('CoreGui') end)
        if ok then return root end
    end
end
local function resolveBoundHeader()
    if boundHeader and boundHeader.Parent then return boundHeader end
    if not boundDescriptor then return nil end
    local node=bindingRoot(boundDescriptor.root)
    for _,name in ipairs(boundDescriptor.path) do
        node=node and node:FindFirstChild(name)
        if not node then return nil end
    end
    if node and (node:IsA('TextLabel') or node:IsA('TextButton') or node:IsA('TextBox')) then boundHeader=node;return node end
end
local function readHeaderText(item)
    if not isTextObject(item) then return nil end
    local raw=tostring(item.Text or ''):gsub('<[^>]->',''):match('^%s*(.-)%s*$')
    -- Read the actual Text value first; diagnostic ContentText can lag animations.
    local text=explicitTopic(raw) or raw
    text=text:gsub('%s*#%d+%s*$',''):match('^%s*(.-)%s*$')
    local length=utf8.len(text)
    if not length or length<1 or length>40 or topicMarker(text) or text:match('^%d+$') then return nil end
    for _,term in ipairs({'제한시간','종료','시작될','투표','클릭하여','입력하세요','남은 시간'}) do
        if text:find(term,1,true) then return nil end
    end
    return text
end
local function attachHeader(item,root,kind)
    if item:IsA('TextBox') and item.TextEditable~=false then return false end
    if not topicDisplayVisible(item) or not readHeaderText(item) then return false end
    local path,node={},item
    while node and node~=root do table.insert(path,1,node.Name);node=node.Parent end
    if node~=root then return false end
    boundHeader=item;boundDescriptor={root=kind,path=path}
    manualTopic=nil;autoDetect=true;topic=nil;used={}
    bindingMessage='연결됨: '..table.concat(path,'.')
    if type(writefile)=='function' then pcall(function() writefile(bindingPath,HttpService:JSONEncode(boundDescriptor)) end) end
    return true
end
if type(readfile)=='function' and type(isfile)=='function' then
    pcall(function()
        if isfile(bindingPath) then
            local data=HttpService:JSONDecode(readfile(bindingPath))
            if type(data)=='table' and (data.root=='PlayerGui' or data.root=='CoreGui' or data.root=='Workspace') and type(data.path)=='table' and #data.path>0 and #data.path<40 then
                for _,name in ipairs(data.path) do if type(name)~='string' then return end end
                boundDescriptor=data;bindingMessage='저장된 주제 표시 연결 대기 중'
            end
        end
    end)
end
local inputService=game:GetService('UserInputService')
if inputService.InputBegan then
    table.insert(session.connections,inputService.InputBegan:Connect(function(input)
        if not session.active or os.clock()<bindArmedAfter or os.clock()>bindArmedUntil then return end
        if input.UserInputType~=Enum.UserInputType.Touch and input.UserInputType~=Enum.UserInputType.MouseButton1 then return end
        local found={}
        for _,kind in ipairs({'PlayerGui','CoreGui'}) do
            local root=bindingRoot(kind)
            if root then
                local ok,objects=pcall(function() return root:GetGuiObjectsAtPosition(input.Position.X,input.Position.Y) end)
                if ok then
                    for _,item in ipairs(objects) do
                        if (item:IsA('TextLabel') or item:IsA('TextButton') or item:IsA('TextBox')) and topicDisplayVisible(item) and readHeaderText(item) then
                            local height=item.TextBounds.Y
                            table.insert(found,{item=item,root=root,kind=kind,height=height})
                        end
                    end
                end
            end
        end
        -- GetGuiObjectsAtPosition does not return world SurfaceGui text.
        if #found==0 and workspace.CurrentCamera then
            local camera=workspace.CurrentCamera
            local ray=camera:ScreenPointToRay(input.Position.X,input.Position.Y)
            local params=RaycastParams.new()
            params.FilterType=Enum.RaycastFilterType.Exclude
            params.FilterDescendantsInstances=player.Character and {player.Character} or {}
            local hit=workspace:Raycast(ray.Origin,ray.Direction*1000,params)
            if hit then
                for label in pairs(topicLabels) do
                    if isTextObject(label) and topicDisplayVisible(label) then
                        local layer=label:FindFirstAncestorWhichIsA('LayerCollector')
                        local part=layer and layer:IsA('SurfaceGui') and (layer.Adornee or layer.Parent)
                        local text=readHeaderText(label)
                        local key=text and topicKey(text):lower()
                        local known=key and topicPeers[key]~=nil
                        if key then for name in pairs(bank) do
                            if topicKey(name):lower()==key then known=true;break end
                        end end
                        if part==hit.Instance and known and not deletedTopics[key] then
                            table.insert(found,{item=label,root=workspace,kind='Workspace',height=label.TextBounds.Y})
                        end
                    end
                end
            end
        end
        table.sort(found,function(a,b) return a.height>b.height end)
        if found[1] and attachHeader(found[1].item,found[1].root,found[1].kind) then
            bindArmedUntil=0
            notify('주제 표시 연결','연결 완료: '..tostring(readHeaderText(found[1].item))..' · 이후 주제 변경을 자동으로 읽습니다.')
        else
            bindingMessage='누른 위치에서 읽을 수 있는 주제 텍스트를 찾지 못했습니다'
            notify('연결되지 않음','주제 글자를 직접 눌러주세요. 3D 주제판도 지원합니다. 이미지에만 포함된 글자는 텍스트로 읽을 수 없습니다.')
        end
    end))
end
local pendingSource,pendingTopic,pendingSince=nil,nil,0
local function detectTopic()
    if gameMode~='기본' then return true end
    if manualTopic then
        bank[manualTopic]=bank[manualTopic] or {}
        if topic~=manualTopic then topic=manualTopic;used={};notify('주제 선택',manualTopic) end
        return true
    end
    if not autoDetect then return topic~=nil end
    -- Android helper supplies only OCR text over the device's loopback interface.
    -- Never retain a stale OCR topic or substitute another player's answer.
    local ocrSession=sharedEnv.WordTopicOCRBridge
    if ocrSession and ocrSession.active then
        local reading=sharedEnv.WordStackOCR
        local value=reading and type(reading.topic)=='string' and reading.topic:match('^%s*(.-)%s*$')
        -- Exact observed OCR errors only; never remap arbitrary unknown topics.
        local rawOCR46=value
        if value and topicKey(value)=='포유류' then value='포유류' end
        local age=reading and type(reading.receivedAt)=='number' and os.clock()-reading.receivedAt
        if not value or value=='' or not age or age<0 or age>2 then
            topic=nil;pendingSource,pendingTopic=nil,nil
            bindingMessage=ocrSession.message or '휴대폰 OCR 연결 대기 · 앱의 인식 결과를 확인하세요'
            return false
        end
        local key=topicKey(value):lower()
        local length=utf8.len(value)
        if not length or length>40 or deletedTopics[key] then
            topic=nil;pendingSource,pendingTopic=nil,nil
            bindingMessage='OCR 주제 확인 필요'
            return false
        end
        for name in pairs(bank) do
            if not reservedTopic(name) and topicKey(name):lower()==key then value=name;break end
        end
        if pendingTopic~=value then
            pendingSource,pendingTopic,pendingSince='android-ocr',value,os.clock()
        end
        if topic~=value then topic=value;used={} end
        bindingMessage='휴대폰 OCR: '..value..(rawOCR46~=value and (' · 원문: '..tostring(rawOCR46)) or '')
        return true
    end
    -- The observed ReactApp keeps the live problem outside player answer rows.
    local gui=player:FindFirstChildOfClass('PlayerGui')
    local app=gui and gui:FindFirstChild('ReactApp')
    local function atPath(path)
        local node=app
        for name in path:gmatch('[^.]+') do node=node and node:FindFirstChild(name) end
        return node
    end
    local header=atPath('Frame.1.Label.2')
    local description=atPath('Frame.1.7')
    local live=atPath('4.5.1')
    local value
    if isTextObject(description) and topicDisplayVisible(description) then value=initialPrompt(displayText(description)) end
    if not value and isTextObject(header) and topicDisplayVisible(header) then value=readHeaderText(header) end
    if not value and isTextObject(live) and topicDisplayVisible(live) then value=readHeaderText(live) end
    if value then
        if pendingTopic~=value then
            pendingSource,pendingTopic,pendingSince=header or live,value,os.clock()
            if not instantInput33 then topic=nil;return false end
        end
        if not instantInput33 and os.clock()-pendingSince<0.05 then return false end
        if topic~=value then topic=value;used={} end
        bindingMessage='게임 문제 표시: '..value
        return true
    end
    if boundDescriptor then
        local header=resolveBoundHeader()
        local value=header and topicDisplayVisible(header) and readHeaderText(header)
        if value and not deletedTopics[topicKey(value):lower()] then
        if pendingTopic~=value then
            pendingSource,pendingTopic,pendingSince=header,value,os.clock()
            if not instantInput33 then topic=nil;return false end
        end
        if not instantInput33 and os.clock()-pendingSince<0.05 then return false end
        bindingMessage='화면 주제: '..value
        if topic~=value then topic=value;used={};notify('화면 주제 인식',value) end
        return true
        end -- An expired saved binding must not block automatic discovery.
    end
    local gui=player:FindFirstChildOfClass('PlayerGui')
    if gui and gui~=watchedGui then watchedGui=gui;watchTopics(gui) end
    if not watchedWorld then watchedWorld=true;watchTopics(workspace) end
    local normalized={}
    for name in pairs(bank) do if not reservedTopic(name) then normalized[topicKey(name):lower()]=name end end
    local best,ambiguous=nil,false
    for label in pairs(topicLabels) do
        if topicDisplayVisible(label) then
            local value,evidence=topicEvidence(label)
            -- Project TowerClient category boards into the live input's header band.
            if not value then value,evidence=worldTopic(label) end
            if not value then value,evidence=layoutTopic(label) end
            if value then
                value=value:match('^%s*(.-)%s*$')
                local key=topicKey(value):lower()
                local length=utf8.len(value)
                local blocked=false
                for _,term in ipairs(blockedNames) do
                    if key:find(term,1,true) then blocked=true;break end
                end
                if length and length>=1 and length<=40 and not blocked and not deletedTopics[key] then
                    local name=normalized[key] or value
                    local size=evidence==5 and -worldTopicDistance[label] or label.TextBounds.Y
                    if not best or evidence>best.evidence
                        or (evidence==best.evidence and size>best.size+0.5) then
                        best={label=label,name=name,evidence=evidence,size=size}
                        ambiguous=false
                    elseif evidence==best.evidence and math.abs(size-best.size)<=0.5
                        and name~=best.name then
                        ambiguous=true
                    end
                end
            end
        end
    end
    -- Unbound loose matching can mistake an answer chip for the header; keep strict evidence only.
    if not best or ambiguous then
        if (header and header:IsA('ImageLabel')) or (description and description:IsA('ImageLabel')) then
            bindingMessage='텍스트 주제 미검출 · 이미지 글자 OCR 미지원 · 주제 직접 선택 필요'
        else
            bindingMessage='읽을 수 있는 현재 주제 텍스트를 찾지 못했습니다'
        end
        pendingSource,pendingTopic=nil,nil
        topic=nil
        return false
    end
    if pendingTopic~=best.name then
        pendingSource,pendingTopic,pendingSince=best.label,best.name,os.clock()
        if not instantInput33 then topic=nil;return false end
    end
    pendingSource=best.label
    if not instantInput33 and os.clock()-pendingSince<0.05 then return false end
    bank[best.name]=bank[best.name] or {}
    if topic~=best.name then topic=best.name;used={};notify('주제 인식',best.name) end
    return true
end
-- Chain prompts are authoritative game labels, not other players' answers.
local chainState27={auto=true,manual=false,ready=false,source='',message='끝말잇기 표시 대기',pending=nil,since=0}
local function chainWord27(value,requireMarker)
    local text=tostring(value or ''):gsub('<[^>]->',''):gsub('：',':'):match('^%s*(.-)%s*$')
    local marked
    for _,prefix in ipairs({'이전 단어','마지막 단어','현재 단어','제시 단어','제시어','시작 글자','시작글자'}) do
        if text:sub(1,#prefix)==prefix then
            marked=text:sub(#prefix+1):gsub('^[%s:%-]+',''):match('^%s*(.-)%s*$');break
        end
    end
    if requireMarker and not marked then return nil end
    text=marked or text
    local length=utf8.len(text)
    if not length or length<1 or length>20 or not onlySyllables(text) then return nil end
    for _,noise in ipairs({'입력','초성','라운드','제한시간','남은시간','다음단어','클릭','게임시작','대기중','종료'}) do
        if text:find(noise,1,true) then return nil end
    end
    return text
end
local function detectChainPrompt27()
    if not chainState27.auto then
        chainState27.ready=chainState27.manual and chainWord27(previousWord,false)~=nil
        chainState27.message='자동 인식 꺼짐 · 보조 입력 또는 자동 인식을 켜세요'
        return chainState27.ready
    end
    if not autoDetect then
        chainState27.ready=false;chainState27.message='설정의 화면 자동 감지를 켜세요';return false
    end
    local found,rank,source,conflict=nil,0,nil,false
    local function consider(word,score,origin)
        if not word then return end
        if score>rank then found,rank,source,conflict=word,score,origin,false
        elseif score==rank and found~=word then conflict=true end
    end
    local gui=player:FindFirstChildOfClass('PlayerGui')
    local app=gui and gui:FindFirstChild('ReactApp')
    if app then
        for _,label in ipairs(app:GetDescendants()) do
            if label:IsA('TextLabel') and topicDisplayVisible(label) then
                local raw=displayText(label)
                consider(chainWord27(raw,true),4,label:GetFullName())
                local name=(label.Name..' '..label.Parent.Name):lower():gsub('%s+','')
                for _,marker in ipairs({'previousword','lastword','chainprompt','startsyllable','이전단어','마지막단어','제시어','시작글자'}) do
                    if name:find(marker,1,true) then
                        consider(chainWord27(raw,false),3,label:GetFullName());break
                    end
                end
                -- Some interfaces split the marker and value into sibling labels.
                local marker=topicKey(raw)
                if marker=='이전단어' or marker=='마지막단어' or marker=='제시어' or marker=='시작글자' then
                    for _,sibling in ipairs(label.Parent:GetChildren()) do
                        if sibling~=label and sibling:IsA('TextLabel') and topicDisplayVisible(sibling) then
                            consider(chainWord27(displayText(sibling),false),3,sibling:GetFullName())
                        end
                    end
                end
            end
        end
    end
    local bound=resolveBoundHeader()
    if bound and topicDisplayVisible(bound) then
        consider(chainWord27(readHeaderText(bound),false),2,'연결한 문제 표시')
    end
    local bridge=sharedEnv.WordTopicOCRBridge
    local reading=sharedEnv.WordStackOCR
    if bridge and bridge.active and reading and type(reading.receivedAt)=='number' then
        local age=os.clock()-reading.receivedAt
        if age>=0 and age<=2 then consider(chainWord27(reading.topic,false),1,'휴대폰 OCR') end
    end
    if conflict or not found then
        chainState27.ready=false;chainState27.pending=nil;chainState27.source=''
        chainState27.message=conflict and '끝말잇기 표시가 여러 개입니다 · 실제 문제판 OCR을 확인하세요'
            or '이전 단어 표시 대기 · 이미지라면 OCR 영역을 문제판 글자 한 줄로 지정하세요'
        return false
    end
    if chainState27.pending~=found or chainState27.source~=source then
        chainState27.pending,chainState27.since,chainState27.source=found,os.clock(),source
        chainState27.ready=false;chainState27.message='끝말잇기 표시 확인 중: '..found
        if not instantInput33 then return false end
    end
    if not instantInput33 and os.clock()-chainState27.since<0.05 then return false end
    previousWord=found
    chainState27.ready=true;chainState27.message='자동 인식: '..found..' → '..lastSyllable(found)
    return true
end

local function nextWord()
    detectDisplayedPrompt()
    if gameMode=='훈민정음' then return chooseHunmin() end
    if gameMode=='끝말잇기' then
        if not detectChainPrompt27() then return nil,chainState27.message,'waiting' end
        return chooseChain()
    end
    if manualTopic or autoDetect then
        if not detectTopic() then
            return nil,'화면 주제 대기 · '..bindingMessage,'waiting'
        end
    end
    if not topic then return nil,'주제를 고르거나 설정에서 자동 감지를 켜세요.' end
    local list=topicWords()
    if not list or #list==0 then
        return nil,'주제: '..topic..' · 등록된 단어가 없습니다','waiting'
    end
    local word=choose()
    return word,word and nil or '이 주제의 미사용 단어가 없습니다.'
end
local function currentInterval()
    if instantInput33 then return Rapid44.rapid and 0.009 or 0 end
    if gameMode=='훈민정음' then return hunminInterval end
    if gameMode=='끝말잇기' then return chainInterval end
    return delaySeconds
end


-- The original upload stopped above this line. Restore the controls and runner.
local statusLabel
local function status(message)
    if statusLabel then pcall(function() statusLabel:Set('상태: '..message) end) end
end
-- Hunmin needs a currently visible, editable game input and a live prompt.
local function hunminInputVisible41(box,app)
    if not app or not box or not box.Parent or not box:IsDescendantOf(app) then return false end
    if box.TextEditable==false or not topicDisplayVisible(box,'input') then return false end
    local size=box.AbsoluteSize
    if not size or size.X<=0 or size.Y<=0 then return false end
    if box.TextTransparency>=0.99 and box.BackgroundTransparency>=0.99 then return false end
    local node=box
    while node and node~=app.Parent do
        if node:IsA('CanvasGroup') and node.GroupTransparency>=0.99 then return false end
        local ok,interactive=pcall(function() return node.Interactable end)
        if ok and interactive==false then return false end
        node=node.Parent
    end
    return true
end
local function hunminPair41(value)
    local text=tostring(value or ''):gsub('<[^>]->',''):gsub('%s+','')
    local pair=text:match('^(.-)초성이들어간단어$') or text
    if utf8.len(pair)~=2 then return nil end
    for _,code in utf8.codes(pair) do if code<0x3131 or code>0x314E then return nil end end
    return pair
end

local function gameInput()
    local gui=player:FindFirstChildOfClass('PlayerGui')
    if not gui then return nil,'게임 입력창을 찾는 중' end
    local app=gui:FindFirstChild('ReactApp')
    local candidates={}
    for _,item in ipairs(gui:GetDescendants()) do
        if item:IsA('TextBox') and item.TextEditable~=false and topicDisplayVisible(item,'input')
            and (gameMode~='훈민정음' or hunminInputVisible41(item,app)) then
            table.insert(candidates,item)
        end
    end
    if #candidates==1 then return candidates[1] end
    if #candidates==0 then return nil,'단어 입력창을 찾는 중' end
    -- Several visible boxes: prefer one that hints at a word entry, then the widest.
    local best,bestScore
    for _,box in ipairs(candidates) do
        local hint=(box.Name..' '..box.PlaceholderText):lower()
        local score=box.AbsoluteSize.X
        for _,term in ipairs({'단어','word','정답','answer','입력','클릭'}) do
            if hint:find(term,1,true) then score=score+1000 end
        end
        if not bestScore or score>bestScore then best,bestScore=box,score end
    end
    return best
end
hunmin41.probe=function(box)
    local gui=player:FindFirstChildOfClass('PlayerGui')
    local app=gui and gui:FindFirstChild('ReactApp')
    box=box or gameInput()
    if not hunminInputVisible41(box,app) then
        hunmin41.ready=false;hunmin41.visible=false;hunmin41.box=nil
        hunmin41.message='훈민정음 · 내 입력창이 나올 때까지 대기'
        if autoDetect then initials='' end
        return false,hunmin41.message
    end
    local freshTurn=not hunmin41.visible or hunmin41.box~=box
    hunmin41.visible=true;hunmin41.box=box
    local pair,conflict
    if autoDetect then
        for _,label in ipairs(app:GetDescendants()) do
            local shown=label:IsA('TextLabel') and topicDisplayVisible(label)
            if shown and label.TextTransparency>=0.99 then shown=false end
            local ancestor=label.Parent
            while shown and ancestor and ancestor~=app do
                if ancestor:IsA('CanvasGroup') and ancestor.GroupTransparency>=0.99 then shown=false end
                ancestor=ancestor.Parent
            end
            if shown then
                local found=hunminPair41(displayText(label))
                if found then
                    if pair and pair~=found then conflict=true else pair=found end
                end
            end
        end
        if not pair and not conflict then
            local reading=sharedEnv.WordStackOCR
            local bridge=sharedEnv.WordTopicOCRBridge
            local age=reading and type(reading.receivedAt)=='number' and os.clock()-reading.receivedAt
            if bridge and bridge.active and age and age>=0 and age<=2 then pair=hunminPair41(reading.topic) end
        end
    else pair=hunminPair41(initials) end
    if conflict or not pair then
        hunmin41.ready=false
        hunmin41.message=conflict and '훈민정음 · 현재 초성 표시가 여러 개라 확인 대기'
            or '훈민정음 · 현재 입력창의 초성 두 글자 확인 대기'
        return false,hunmin41.message
    end
    -- Keep Hunmin history across input remounts, turns and temporary OCR loss.
    -- A new game can explicitly reset this history using the Hunmin button.
    initials=pair;hunmin41.ready=true;hunmin41.message='훈민정음 입력 가능 · '..pair
    return true
end

local function roundReady()
    local box,reason=gameInput()
    if not box then return false,reason or '게임 시작 대기 중' end
    local pos,size=box.AbsolutePosition,box.AbsoluteSize
    if size.X<=0 or size.Y<=0 then return false,'입력창 활성화 대기 중' end
    local screen=box:FindFirstAncestorOfClass('ScreenGui')
    for _,label in ipairs(screen and screen:GetDescendants() or {}) do
        -- Offscreen transition panels retain Visible=true and old end text.
        -- Only an actually displayed end banner can stop the active entry panel.
        local shown=isTextObject(label) and topicDisplayVisible(label,'input')
        if shown and label.TextTransparency>=0.99 then shown=false end
        local ancestor=label.Parent
        while shown and ancestor and ancestor~=screen do
            if ancestor:IsA('CanvasGroup') and ancestor.GroupTransparency>=0.99 then shown=false end
            ancestor=ancestor.Parent
        end
        if shown and label:FindFirstAncestorOfClass('ScreenGui')==screen then
            local text=topicKey(displayText(label))
            if text:find('제한시간종료',1,true) or text:find('게임종료',1,true) or text:find('라운드종료',1,true)
                or text:find('다음라운드에자동으로참여',1,true) then
                return false,'라운드 종료 · 다음 게임 대기 중'
            end
        end
    end
    if gameMode=='훈민정음' then return hunmin41.probe(box) end
    return true
end
local function looksGreen(color)
    return color.G>color.R*1.25 and color.G>color.B*1.1
end
local function submitButton(box)
    local screen=box:FindFirstAncestorOfClass('ScreenGui')
    if not screen then return nil end
    local boxPos,boxSize=box.AbsolutePosition,box.AbsoluteSize
    local boxCenter=boxPos+boxSize/2
    local reach=math.max(boxSize.X*1.6,220)
    local best,bestScore=nil,-math.huge
    for _,item in ipairs(screen:GetDescendants()) do
        if item:IsA('GuiButton') and topicDisplayVisible(item,'input') then
            local text=item:IsA('TextButton') and displayText(item) or ''
            local key=(item.Name..' '..text):lower()
            local named=key:find('제출',1,true) or key:find('입력',1,true)
                or key:find('확인',1,true) or key:find('submit',1,true)
                or key:find('enter',1,true) or key:find('send',1,true)
            local colored=looksGreen(item.BackgroundColor3)
            local center=item.AbsolutePosition+item.AbsoluteSize/2
            local distance=(center-boxCenter).Magnitude
            local toRight=center.X>=boxPos.X+boxSize.X*0.6 and math.abs(center.Y-boxCenter.Y)<=boxSize.Y
            if distance<reach and (named or colored or toRight) then
                local score=-distance+(named and 150 or 0)+(colored and 250 or 0)+(toRight and 100 or 0)
                if score>bestScore then best,bestScore=item,score end
            end
        end
    end
    if best then return best end
    -- The arrow may be a plain frame/image instead of a button.
    for _,item in ipairs(screen:GetDescendants()) do
        if item:IsA('GuiObject') and not item:IsA('TextBox') and item.BackgroundTransparency<1
            and looksGreen(item.BackgroundColor3) and topicDisplayVisible(item,'input') then
            local center=item.AbsolutePosition+item.AbsoluteSize/2
            local distance=(center-boxCenter).Magnitude
            local toRight=center.X>=boxPos.X+boxSize.X*0.6 and math.abs(center.Y-boxCenter.Y)<=boxSize.Y
            if distance<reach and toRight and item.AbsoluteSize.X>=20 and item.AbsoluteSize.Y>=20 then
                if -distance>bestScore then best,bestScore=item,-distance end
            end
        end
    end
    return best
end
-- Fire a button event through whatever the executor supports.
local function fireEvent(button,eventName)
    local signal=button[eventName]
    local count
    if type(getconnections)=='function' then
        local okList,list=pcall(getconnections,signal)
        if okList and type(list)=='table' then count=#list end
    end
    if count==0 then return false end
    if type(firesignal)=='function' and pcall(firesignal,signal) then return true end
    if count and count>0 then
        local fired=false
        for _,connection in ipairs(getconnections(signal)) do
            if pcall(function() connection:Fire() end) then fired=true end
        end
        return fired
    end
    return false
end
-- Submission never moves a virtual mouse or changes Hub visibility.
local lastSubmission='아직 제출하지 않음'
local pendingEntry=nil
local inputRejection=nil
local lastInputWrite='아직 입력하지 않음'
local inputApiTrace='아직 검사하지 않음'
local entryDraft=nil
local function cleanText(text)
    -- The game box may hold a blank-looking space/zero-width char; treat it as empty.
    text=tostring(text or '')
    text=text:gsub('\226\128[\139-\141]',''):gsub('\239\187\191',''):gsub('\194\160',' ')
    return text:match('^%s*(.-)%s*$')
end
local function pause(seconds)
    if instantInput33 then task.wait() else task.wait(seconds) end
end
local function typeIncrementally(box,word)
    -- The game reverts one-shot text changes; grow the text one syllable at a time,
    -- keeping whatever the game keeps in the box (a single space).
    local current=box.Text
    local total=utf8.len(word) or #word
    local index=0
    for _,code in utf8.codes(word) do
        if not box.Parent then return false,'입력창 교체' end
        index=index+1
        current=current..utf8.char(code)
        box.Text=current
        pause(0.03)
        if box.Text~=current then
            return false,'글자 '..index..'/'..total..' 에서 되돌려짐'
        end
    end
    return true
end
local function awaitWord(box,word,steps)
    local stable=0
    for step=1,steps do
        if not box.Parent then return false end
        stable=cleanText(box.Text)==word and stable+1 or 0
        if stable>=2 then return true end
        pause(0.05)
    end
    return false
end
local function entryCleared(box)
    for step=1,7 do
        if not box.Parent then return false end
        if cleanText(box.Text)=='' then return true end
        pause(0.05)
    end
    return false
end
-- Whole-word write first in the opt-in immediate mode. Verify after a frame;
-- if a controlled input resets it, retain the existing delivery API fallbacks.
local function tryImmediateWord33(box,word)
    if not box.Parent or cleanText(box.Text)~='' then return false end
    box.Text=word
    task.wait()
    return box.Parent~=nil and cleanText(box.Text)==word
end
local function sendWord(word)
    if gameMode=='훈민정음' then
        local ready,waiting=hunmin41.probe()
        if not ready then return false,waiting end
    end
    if inputMode=='채팅' then
        local channels=TextChatService:FindFirstChild('TextChannels')
        local general=channels and channels:FindFirstChild('RBXGeneral')
        if not general then return false,'채팅 채널을 찾을 수 없습니다' end
        general:SendAsync(word)
        return true
    end
    local box,reason=gameInput()
    if not box then return false,reason end
    local useKeyboard=submitMethod=='Enter (키패드 사용)'
    local focused=false
    pcall(function() focused=box:IsFocused() end)
    if inputRejection and inputRejection.box==box and os.clock()-(inputRejection.t or 0)<1.5 and (inputRejection.focused or (not focused and not useKeyboard)) then
        lastSubmission=inputRejection.focused and '자동 텍스트 전달 실패 · 진단 보고서의 inputAPI 확인 필요' or '입력창 선택 필요 · 게임의 흰 입력창을 한 번 터치하세요'
        return false,lastSubmission
    end
    if useKeyboard then
        pcall(function() box:CaptureFocus() end)
        pcall(function() focused=box:IsFocused() end)
    end
    -- Preserve existing focus: releasing it here can reset a controlled React entry.
    if box.Text~='' and cleanText(box.Text)=='' then
        pcall(function() box:CaptureFocus() end)
        box.Text=''
        pause(0.05)
        pcall(function() focused=box:IsFocused() end)
    end
    if cleanText(box.Text)~='' and cleanText(box.Text)~=word then
        local owned=entryDraft and entryDraft.box==box and entryDraft.word==word and entryDraft.topic==topic
        if owned then
            if not awaitWord(box,word,8) then
                if os.clock()>entryDraft.deadline then
                    inputRejection={box=box,focused=true,t=os.clock()}
                    lastSubmission='자동 입력값 불일치 · inputWrite 진단 확인 필요'
                else lastSubmission='문자 입력 완료 대기 · '..tostring(box.Text):sub(1,60) end
                return false,lastSubmission
            end
        else
            -- Text left behind by a rejected word: mark it used, clear the box, carry on.
            used[box.Text]=true
            pcall(function() box:CaptureFocus() end)
            box.Text=''
            pcall(function() focused=box:IsFocused() end)
            pause(0.05)
        end
    end
    local injected=cleanText(box.Text)==word
    if instantInput33 and not injected then
        entryDraft={box=box,word=word,topic=topic,deadline=os.clock()+2}
        injected=tryImmediateWord33(box,word)
        lastInputWrite=injected and '즉시 전체 단어 입력 · 실제 값 확인' or '즉시 입력이 되돌려져 기존 입력 방식으로 전환'
    end
    local traces=instantInput33 and injected and {'즉시 전체 단어: 값 확인'} or {} 
    local function record(name,ok,errorText)
        table.insert(traces,name..': '..(ok and '호출됨' or tostring(errorText):sub(1,180)))
        inputApiTrace=table.concat(traces,' | ')
    end
    local function mayInject()
        if not box.Parent or cleanText(box.Text)~='' then return false end
        local ok,current=pcall(function() return inputService:GetFocusedTextBox() end)
        return ok and current==box
    end
    if focused and mayInject() then
        local okVirtual,virtual=pcall(function() return inputService:CreateVirtualInput() end)
        record('CreateVirtualInput',okVirtual,virtual)
        if okVirtual and virtual then
            entryDraft={box=box,word=word,topic=topic,deadline=os.clock()+2}
            lastInputWrite='SendTextInput 요청 · 목표='..word
            local ok,errorText=pcall(function() virtual:SendTextInput(word) end)
            record('SendTextInput',ok,errorText)
            injected=awaitWord(box,word,6)
            if injected then lastInputWrite='SendTextInput · 실제 입력값 확인' end
        end
        -- Some executor environments expose the older text-event service instead.
        -- Never treat pcall success alone as delivered text.
        if not injected and mayInject() then
            local okManager,manager=pcall(function() return game:GetService('VirtualInputManager') end)
            record('VirtualInputManager',okManager,manager)
            if okManager and manager then
                local layer=box:FindFirstAncestorOfClass('ScreenGui')
                entryDraft={box=box,word=word,topic=topic,deadline=os.clock()+2}
                lastInputWrite='텍스트 문자 이벤트 요청 · 목표='..word
                local ok,errorText=pcall(function() manager:SendTextInputCharacterEvent(word,layer) end)
                record('SendTextInputCharacterEvent',ok,errorText)
                injected=awaitWord(box,word,6)
                if injected then lastInputWrite='텍스트 문자 이벤트 · 실제 입력값 확인' end
            end
        end
    end
    if not injected and box.Parent and cleanText(box.Text)~='' and cleanText(box.Text)~=word then
        inputApiTrace=table.concat(traces,' | ')
        lastInputWrite=lastInputWrite..' · 현재='..tostring(box.Text):sub(1,80)
        lastSubmission='자동 문자 입력 완료 대기 · '..tostring(box.Text):sub(1,60)
        return false,lastSubmission
    end
    if not injected and box.Parent and focused then
        entryDraft={box=box,word=word,topic=topic,deadline=os.clock()+2}
        local typedOK,why=typeIncrementally(box,word)
        lastInputWrite='글자별 입력 · '..(typedOK and '완료' or tostring(why))
        injected=typedOK and cleanText(box.Text)==word
    end
    if not injected and box.Parent then
        entryDraft={box=box,word=word,topic=topic,deadline=os.clock()+2}
        box.Text=word
        lastInputWrite=focused and '포커스 유지 후 Text 설정' or '포커스 없이 Text 설정'
    end
    inputApiTrace=#traces>0 and table.concat(traces,' | ') or '입력창이 선택되지 않아 텍스트 API를 호출하지 않음'
    if instantInput33 then task.wait() else task.wait(0.08) end
    if not box.Parent then
        lastSubmission='입력창 교체 감지 · 다음 입력창 대기'
        return false,lastSubmission
    end
    if cleanText(box.Text)~=word then
        inputRejection={box=box,focused=focused,t=os.clock()}
        lastInputWrite=lastInputWrite..' · 변경 후 값='..tostring(box.Text):sub(1,80)
        if not focused then
            lastSubmission='입력창 선택 필요 · 게임의 흰 입력창을 한 번 터치하세요'
        else
            lastSubmission='자동 텍스트 전달 실패 · inputAPI 진단을 보내주세요'
        end
        return false,lastSubmission
    end
    inputRejection=nil;entryDraft=nil
    -- Let React observe the focused entry's Text change before requesting Enter.
    local released=false
    if useKeyboard then released=pcall(function() box:ReleaseFocus(true) end) end
    if useKeyboard and focused and released and entryCleared(box) then
        lastSubmission='Enter 요청 후 입력창 비워짐 · 서버 정답 여부는 별도'
        return true
    end
    if not box.Parent then return false,'입력창 전환 중 · 다음 시도 대기' end
    local button=submitButton(box)
    if button and button:IsA('GuiButton') then
        -- Direct events need no screen coordinates and do not hide the Hub.
        local dispatched=fireEvent(button,'MouseButton1Click')
        if dispatched and entryCleared(box) then
            lastSubmission='버튼 이벤트 후 입력창 비워짐 · 서버 정답 여부는 별도'
            return true
        end
        if box.Parent and cleanText(box.Text)==word and fireEvent(button,'Activated') and entryCleared(box) then
            lastSubmission='Activated 후 입력창 비워짐 · 서버 정답 여부는 별도'
            return true
        end
    end
    if box.Parent and cleanText(box.Text)==word and type(firesignal)=='function' then
        local sent=pcall(firesignal,box.FocusLost,true)
        if sent and entryCleared(box) then
            lastSubmission='FocusLost 요청 후 입력창 비워짐 · 서버 정답 여부는 별도'
            return true
        end
    end
    if box.Parent and cleanText(box.Text)==word then pendingEntry={box=box,word=word,topic=topic,t=os.clock()} end
    lastSubmission='입력은 설정됨 · 자동 제출 확인 안 됨 · 게임의 초록 화살표를 직접 눌러 확인'
    return false,lastSubmission
end
local attemptLog={}
local function logAttempt(word,sent,message)
    local box=gameInput()
    local t=box and box.Text or ''
    local bytes={}
    for i=1,math.min(#t,16) do bytes[#bytes+1]=string.byte(t,i) end
    table.insert(attemptLog,string.format('t=%.1f %s sent=%s | %s | write=%s | box=#%d[%s]',
        os.clock()%1000,tostring(word),tostring(sent),tostring(message),tostring(lastInputWrite),#t,table.concat(bytes,',')))
    if #attemptLog>10 then table.remove(attemptLog,1) end
end
local lastAttemptTopic=nil
local function inCurrentList(word)
    local list=topicWords()
    if not list then return false end
    for _,item in ipairs(list) do if item==word then return true end end
    return false
end
local function attempt()
    if topic~=lastAttemptTopic then
        lastAttemptTopic=topic;entryDraft=nil;pendingEntry=nil;inputRejection=nil
    end
    local ready,waiting=roundReady()
    if not ready and (inputMode=='게임 입력창' or gameMode=='훈민정음') then pendingEntry=nil;entryDraft=nil;status(waiting);return end
    if pendingEntry then
        local pending=pendingEntry
        if pending.topic==topic and pending.box.Parent and cleanText(pending.box.Text)==pending.word then
            -- Game kept the text: rejected (already used / invalid). Skip the word.
            used[pending.word]=true
            if gameMode=='훈민정음' then hunmin41.seen[pending.word]=true end
            pcall(function() pending.box:CaptureFocus() end)
            pending.box.Text=''
            pendingEntry=nil
            status('거절된 단어 제외 · '..pending.word)
            task.wait() -- Yield one frame for the controlled entry; no rejection timer.
        end
        if pending.topic==topic and pending.box.Parent and cleanText(pending.box.Text)=='' then
            used[pending.word]=true
            if gameMode=='훈민정음' then hunmin41.seen[pending.word]=true end
        end
        pendingEntry=nil
    end
    local word,reason
    if entryDraft and entryDraft.topic==topic and entryDraft.box.Parent and inCurrentList(entryDraft.word) then word=entryDraft.word
    else entryDraft=nil;word,reason=nextWord() end
    if not word then status(reason or '단어 대기 중');return end
    local sent,message=sendWord(word)
    logAttempt(word,sent,message)
    if gameMode=='훈민정음' and (sent or (pendingEntry and pendingEntry.word==word)) then hunmin41.seen[word]=true end
    if sent then
        status((topic or gameMode)..' → '..word)
    else
        used[word]=nil -- Failed dispatch must not consume the word.
        status(message or '입력 실패')
    end
end

-- Observe answer displays independently; their text is never topic evidence.
local observedAnswers=setmetatable({},{__mode='k'})
local function observeAnswers()
    if not topic or gameMode~='기본' then return end
    local list=topicWords()
    if not list then return end
    local known={}
    for _,word in ipairs(list) do known[topicKey(word)]=word end
    for label in pairs(topicLabels) do
        if label.Parent then
            local layer=label:FindFirstAncestorWhichIsA('LayerCollector')
            local answer=layer and layer:IsA('BillboardGui')
            local node=label
            while node and node~=game do
                local name=node.Name:lower()
                if name:find('answer',1,true) or name:find('submitted',1,true)
                    or name:find('playerword',1,true) or name:find('답안',1,true) then answer=true end
                node=node.Parent
            end
            if answer and label.Visible and layer and layer.Enabled then
                local word=known[topicKey(displayText(label))]
                local snapshot=(word or '')..'|'..topic
                if observedAnswers[label]~=snapshot then
                    observedAnswers[label]=snapshot
                    if word then used[word]=true end
                end
            end
        end
    end
end
local lastUsedScan=0
local function observeRoundWords()
    if gameMode~='기본' and gameMode~='훈민정음' then return end
    if gameMode=='기본' and not topic then return end
    if os.clock()-lastUsedScan<0.4 then return end
    lastUsedScan=os.clock()
    local gui=player:FindFirstChildOfClass('PlayerGui')
    local app=gui and gui:FindFirstChild('ReactApp')
    if not app then return end
    local names={}
    if gameMode=='훈민정음' then
        for _,p in ipairs(Players:GetPlayers()) do names[p.Name]=true;names[p.DisplayName]=true end
    end
    for _,item in ipairs(app:GetDescendants()) do
        if item:IsA('TextLabel') and item.Visible then
            local node,inUser=item.Parent,false
            while node and node~=app do
                if node.Name:sub(1,5)=='user_' then inUser=true;break end
                node=node.Parent
            end
            if inUser then
                local text=topicKey(displayText(item))
                if #text>0 and #text<120 and not text:match('^%d+$') then
                    if gameMode=='기본' then used[text]=true
                    elseif utf8.len(text)==2 and not names[text] then
                        local pair=initial(text)
                        for _,word in ipairs(hunminByInitial[pair] or {}) do
                            if word==text then hunmin41.seen[text]=true;used[text]=true;break end
                        end
                    end
                end
            end
        end
    end
end
local function switchMode(value)
    if type(value)=='table' then value=value[1] end
    gameMode=value or '기본';used={};topic=nil
    hunmin41.ready=false;hunmin41.visible=false;hunmin41.box=nil
    chainState27.pending=nil;chainState27.ready=false;chainState27.manual=false;previousWord=''
    pendingSource,pendingTopic=nil,nil
    status(gameMode..' 모드')
end
local function setEnabled(value)
    inputRejection=nil;entryDraft=nil
    enabled=value
    status(value and '자동 입력 켜짐 · 게임 화면 감지 중' or '자동 입력 꺼짐')
end
BasicTab:CreateSection('자동 주제 인식')
BasicTab:CreateButton({Name='화면 주제 표시 연결 (한 번 터치)',Callback=function()
    if not inputService.InputBegan then notify('연결 불가','입력 이벤트를 사용할 수 없습니다');return end
    bindArmedAfter=os.clock()+0.5;bindArmedUntil=os.clock()+20
    bindingMessage='20초 안에 게임의 주제 글자를 눌러주세요'
    notify('주제 표시 선택','Hub를 옆으로 옮긴 뒤, 20초 안에 게임의 현재 주제 글자를 한 번 눌러주세요.')
end})
BasicTab:CreateButton({Name='주제 표시 연결 해제',Callback=function()
    boundHeader,boundDescriptor=nil,nil;bindArmedUntil=0;topic=nil;pendingTopic=nil
    bindingMessage='주제 표시를 한 번 연결하세요'
    if type(writefile)=='function' then pcall(function() writefile(bindingPath,'{}') end) end
    if type(delfile)=='function' then pcall(function() if type(isfile)=='function' and isfile(bindingPath) then delfile(bindingPath) end end) end
    notify('연결 해제','다른 주제 표시를 연결할 수 있습니다.')
end})
BasicTab:CreateParagraph({Title='화면 주제 자동 읽기',Content='주제 표시 연결 버튼 → 게임의 주제 글자를 한 번 터치하세요. 이후 같은 UI 경로의 Text가 바뀔 때 자동으로 읽습니다. 위에 창이 겹쳐도 UI 값은 읽을 수 있습니다. 이미지 글자는 별도 주제 읽기 OCR 앱과 연결 코드를 실행해야 읽을 수 있습니다. 연결 실패 시 주제 인식이 완료된 것으로 표시하지 않습니다.'})

BasicTab:CreateParagraph({Title='흔한 단어 후보',Content='학용품은 연필·지우개·공책 등 익숙한 단어로 구성했습니다. 기본 주제 174개의 후보를 일상적인 단어 위주로 정리했습니다. 게임에서 실제 허용하는 단어는 서버 사전에 따라 달라질 수 있습니다.'})
statusLabel=BasicTab:CreateLabel('상태: 자동 입력 꺼짐')
-- Manual topic: works even when the on-screen header cannot be read.
local function manualTopicOptions()
    local names,list={'자동 감지'},{}
    for name in pairs(bank) do if not reservedTopic(name) then table.insert(list,name) end end
    table.sort(list)
    for _,name in ipairs(list) do table.insert(names,name) end
    return names
end
local manualTopicControl
local function setManualTopic(value)
    value=tostring(value or ''):match('^%s*(.-)%s*$')
    if value=='' or value=='자동 감지' then
        manualTopic=nil;topic=nil;pendingSource,pendingTopic=nil,nil
        status('주제 자동 감지')
        return
    end
    local key=topicKey(value):lower()
    local resolved
    for name in pairs(bank) do
        if not reservedTopic(name) and topicKey(name):lower()==key then resolved=name;break end
    end
    if not resolved then
        -- Typed text that contains a known topic name (or the other way round) maps to it.
        local bestLength=0
        for name in pairs(bank) do
            local nameKey=topicKey(name):lower()
            local length=utf8.len(nameKey) or 0
            if not reservedTopic(name) and length>=2 and length>bestLength
                and (key:find(nameKey,1,true) or nameKey:find(key,1,true)) then
                resolved,bestLength=name,length
            end
        end
    end
    manualTopic=resolved or value;topic=nil;used={}
    status('주제 직접 선택: '..manualTopic..(bank[manualTopic] and '' or ' · 등록된 단어 없음'))
end
manualTopicControl=BasicTab:CreateDropdown({Name='주제 직접 선택',Options=manualTopicOptions(),
    CurrentOption={'자동 감지'},MultipleOptions=false,Callback=function(value)
        setManualTopic(type(value)=='table' and value[1] or value)
    end})
BasicTab:CreateInput({Name='주제 직접 입력',PlaceholderText='화면에 보이는 주제 예: 라면 재료',
    RemoveTextAfterFocusLost=false,Callback=function(value)
        if tostring(value or '')~='' then setManualTopic(value) end
    end})
local autoInputControl33=BasicTab:CreateToggle({Name='자동 입력',CurrentValue=false,Flag='AutoTypeV2',Callback=setEnabled})
BasicTab:CreateToggle({Name='0초 입력 모드 · 전체 단어 한 번에',CurrentValue=false,Flag='ZeroDelay34',Callback=function(value)
    Rapid44.zero=value;instantInput33=Rapid44.zero or Rapid44.rapid
    if value then
        inputRejection=nil;entryDraft=nil
        status(enabled and '0초 입력 모드 켜짐 · 인식 후 추가 간격 없이 입력' or '0초 입력 모드 켜짐 · 자동 입력을 켜면 시작합니다')
    else
        status('0초 입력 모드 꺼짐 · 일반 입력 간격 '..tostring(currentInterval())..'초')
    end
end})
-- build44: one switch, three places (Basic / Hunmin / Chain), always in sync.
function Rapid44.set(value)
    if Rapid44.syncing then return end
    Rapid44.rapid=value
    instantInput33=Rapid44.zero or Rapid44.rapid
    if value then inputRejection=nil;entryDraft=nil end
    Rapid44.syncing=true
    for _,control in ipairs(Rapid44.controls) do pcall(function() control:Set(value) end) end
    Rapid44.syncing=false
    if value then
        status(enabled and '즉시 입력 켜짐 · 0.009초 간격 (화면 프레임 단위로 실행)' or '즉시 입력 켜짐 · 자동 입력을 켜면 0.009초 간격으로 시작합니다')
    else
        status('즉시 입력 꺼짐 · 일반 입력 간격 '..tostring(currentInterval())..'초')
    end
end
function Rapid44.add(tab,flag)
    table.insert(Rapid44.controls,tab:CreateToggle({Name='즉시 입력 · 0.009초 간격',CurrentValue=false,Flag=flag,Callback=Rapid44.set}))
end
Rapid44.add(BasicTab,'Rapid009Basic44')
BasicTab:CreateButton({Name='단어 한 번 입력',Callback=function()
    local success,err=pcall(attempt)
    if not success then status('오류: '..tostring(err)) end
end})
BasicTab:CreateParagraph({Title='주제 구분',Content='주제와 플레이어 답안을 따로 읽습니다. 자동차·자동차 브랜드 등 지정된 유사 주제는 단어를 공유합니다. 랭킹·돈·채팅은 주제에서 제외합니다.'})
BasicTab:CreateButton({Name='감지 상태 진단 · 보고서 복사',Callback=function()
    local scanOK,scanError=pcall(detectTopic)
    local input,inputReason=gameInput()
    local lines={'WordStackHub diagnostic build 49',
        'mode='..tostring(gameMode)..' enabled='..tostring(enabled)..' autoDetect='..tostring(autoDetect)..' immediate='..tostring(instantInput33),
        'topic='..tostring(topic)..' pending='..tostring(pendingTopic),
        'hunminReady='..tostring(hunmin41.ready)..' note='..hunmin41.message,
        'chainPrevious='..tostring(previousWord)..' chainReady='..tostring(chainState27.ready)..' source='..tostring(chainState27.source)..' note='..chainState27.message,
        'submit='..tostring(submitMethod)..' result='..tostring(lastSubmission),
        'inputWrite='..tostring(lastInputWrite),
        'draft='..tostring(entryDraft and entryDraft.word)..' actual='..tostring(input and input.Text):sub(1,80),
        'inputAPI='..tostring(inputApiTrace),
        'attemptLog:\n'..(#attemptLog>0 and table.concat(attemptLog,'\n') or '(none)'),
        'inputTextBytes='..(function() local t=input and input.Text or '';local b={};for i=1,math.min(#t,24) do b[#b+1]=string.byte(t,i) end;return '#'..#t..' ['..table.concat(b,',')..']' end)(),
        'ocrBridge='..tostring(sharedEnv.WordTopicOCRBridge and sharedEnv.WordTopicOCRBridge.active),
        'scan='..tostring(scanOK)..' '..tostring(scanError),
        'input='..(input and input:GetFullName() or tostring(inputReason))}
    local active,waiting=roundReady()
    table.insert(lines,'round='..tostring(active)..' '..tostring(waiting))
    table.insert(lines,'--- known topic text anywhere (PlayerGui / Workspace) ---')
    local knownKeys={}
    for name in pairs(bank) do if not reservedTopic(name) then knownKeys[topicKey(name):lower()]=true end end
    for key in pairs(topicPeers) do knownKeys[key]=true end
    local knownCount=0
    for label in pairs(topicLabels) do
        if label.Parent and knownKeys[topicKey(displayText(label)):lower()] then
            knownCount=knownCount+1
            if knownCount<=40 then
                local pos,size=label.AbsolutePosition,label.AbsoluteSize
                local layer=label:FindFirstAncestorWhichIsA('LayerCollector')
                table.insert(lines,label:GetFullName()..' | '..label.ClassName..' | text='..displayText(label)
                    ..' | selfVisible='..tostring(label.Visible)..' eligible='..tostring(topicDisplayVisible(label))
                    ..' | layer='..(layer and layer.ClassName or 'none')
                    ..' | pos='..math.floor(pos.X)..','..math.floor(pos.Y)
                    ..' size='..math.floor(size.X)..','..math.floor(size.Y))
            end
        end
    end
    table.insert(lines,'known topic text objects='..knownCount)
    table.insert(lines,'--- World SurfaceGui text (including unknown topics) ---')
    local worldCount=0
    for label in pairs(topicLabels) do
        local layer=label.Parent and label:FindFirstAncestorWhichIsA('LayerCollector')
        if layer and layer:IsA('SurfaceGui') and topicDisplayVisible(label) then
            worldCount=worldCount+1
            if worldCount<=100 then
                local part=layer.Adornee or layer.Parent
                table.insert(lines,label:GetFullName()..' | text='..displayText(label)
                    ..' | adornee='..(part and part:GetFullName() or 'nil'))
            end
        end
    end
    table.insert(lines,'world text objects='..worldCount)

    local function row(item)
        local path=item:GetFullName()
        local safe=path:lower()
        for _,term in ipairs({'rayfield','textchat','bubblechat','chatwindow'}) do
            if safe:find(term,1,true) then return end
        end
        local text=displayText(item):gsub('\n',' / '):sub(1,200)
        if text=='' and not item:IsA('TextBox') then return end
        local layer=item:FindFirstAncestorWhichIsA('LayerCollector')
        local value,evidence=topicEvidence(item)
        if not value then value,evidence=worldTopic(item) end
        if not value then value,evidence=layoutTopic(item) end
        local pos,size=item.AbsolutePosition,item.AbsoluteSize
        table.insert(lines,path..' | '..item.ClassName..' | text='..text
            ..' | visible='..tostring(item.Visible)..' eligible='..tostring(topicDisplayVisible(item))
            ..' | layer='..(layer and layer.ClassName or 'none')
            ..' | position='..math.floor(pos.X)..','..math.floor(pos.Y)
            ..' | size='..math.floor(size.X)..','..math.floor(size.Y)
            ..' | candidate='..tostring(value)..' evidence='..tostring(evidence))
    end
    -- Record all game text, including rejected candidates. The old eight-known-word
    -- popup hid exactly the evidence needed to diagnose a failed title match.
    local gui=player:FindFirstChildOfClass('PlayerGui')
    local count=0
    local react=gui and gui:FindFirstChild('ReactApp')
    if react then
        table.insert(lines,'--- ReactApp game UI ---')
        for _,item in ipairs(react:GetDescendants()) do
            if item:IsA('TextLabel') or item:IsA('TextButton') or item:IsA('TextBox') then
                local ok,err=pcall(row,item)
                if not ok then table.insert(lines,item:GetFullName()..' | read error='..tostring(err)) end
                count=count+1
                if count>=500 then table.insert(lines,'ReactApp scan truncated at 500');break end
            end
        end
        table.insert(lines,'ReactApp text objects='..count)
    else
        table.insert(lines,'ReactApp missing')
    end
    if react then
        table.insert(lines,'--- ReactApp image objects (header may be an image/atlas) ---')
        count=0
        for _,item in ipairs(react:GetDescendants()) do
            if item:IsA('ImageLabel') or item:IsA('ImageButton') then
                local path=item:GetFullName()
                -- Game HUD and active entry panel first; no leaderboard/player-world scan.
                local pos,size=item.AbsolutePosition,item.AbsoluteSize
                local offset,rect=item.ImageRectOffset,item.ImageRectSize
                table.insert(lines,path..' | '..item.ClassName..' | image='..tostring(item.Image)
                    ..' | rectOffset='..offset.X..','..offset.Y..' rectSize='..rect.X..','..rect.Y
                    ..' | visible='..tostring(item.Visible)..' eligible='..tostring(topicDisplayVisible(item))
                    ..' | position='..math.floor(pos.X)..','..math.floor(pos.Y)
                    ..' size='..math.floor(size.X)..','..math.floor(size.Y))
                count=count+1;if count>=180 then table.insert(lines,'Image scan truncated at 180');break end
            end
        end
        for _,path in ipairs({'Frame.1.Label.2','Frame.1.7','4.4.1'}) do
            local node=react
            for name in path:gmatch('[^.]+') do node=node and node:FindFirstChild(name) end
            if node and not isTextObject(node) then
                table.insert(lines,'header source '..path..' | '..node.ClassName
                    ..' | text unavailable: image/container; no OCR')
            end
        end
        table.insert(lines,'--- Active input ancestor attributes ---')
        local node=input
        for depth=1,6 do
            if not node or node==gui then break end
            local ok,attributes=pcall(function() return node:GetAttributes() end)
            if ok then
                for key,value in pairs(attributes) do
                    table.insert(lines,node:GetFullName()..' | attribute '..key..'='..tostring(value):sub(1,160))
                end
            end
            node=node.Parent
        end
    end
    local report=table.concat(lines,'\n')
    local copied=false
    if type(setclipboard)=='function' then copied=pcall(setclipboard,report) end
    local saved=false
    if type(writefile)=='function' then saved=pcall(writefile,'WordStackHub_Diagnostic.txt',report) end
    print(report)
    notify('감지 진단 v34','현재 주제: '..tostring(topic)..'\n'
        ..(copied and '전체 보고서가 복사됐어요. 채팅에 붙여넣어 주세요.'
            or saved and 'WordStackHub_Diagnostic.txt 저장 완료. 파일을 보내주세요.'
            or '전체 보고서를 실행기 콘솔에 표시했습니다.'))
end})
HunminTab:CreateSection('초성 두 글자')
HunminTab:CreateButton({Name='훈민정음 모드 사용',Callback=function() switchMode('훈민정음') end})
HunminTab:CreateInput({Name='초성 보조 입력',PlaceholderText='예: ㄱㅅ',RemoveTextAfterFocusLost=false,Callback=function(value)
    initials=initial(value);used={}
end})
Rapid44.add(HunminTab,'Rapid009Hunmin44')
HunminTab:CreateSlider({Name='입력 간격 (초)',Range={0,5},Increment=0.05,CurrentValue=0.05,Flag='HunminDelayV32',Callback=function(value) hunminInterval=value end})
HunminTab:CreateParagraph({Title='자동 인식',Content='게임 화면의 초성 표시를 읽습니다. 자동 인식이 안 되는 화면에서는 보조 입력을 사용할 수 있습니다.'})
ChainTab:CreateSection('끝말잇기')
ChainTab:CreateButton({Name='끝말잇기 모드 사용',Callback=function() switchMode('끝말잇기') end})
HunminTab:CreateButton({Name='새 게임 · 훈민정음 사용 기록 초기화',Callback=function()
    hunmin41.seen={};used={};entryDraft=nil;pendingEntry=nil
    status('훈민정음 사용 기록 초기화 완료 · 새 게임에서만 사용하세요')
end})
HunminTab:CreateParagraph({Title='훈민정음 중복 방지',Content='제출한 단어·거절된 단어·화면 답안 목록에서 확인한 단어를 이번 실행 동안 기억합니다. 초성이나 입력창이 바뀌어도 지우지 않습니다. 새 게임에서는 사용 기록 초기화 버튼을 누르세요. 화면에서 확인되지 않은 다른 사람의 단어는 알 수 없습니다.'})
ChainTab:CreateToggle({Name='이전 단어 자동 인식 (화면·OCR)',CurrentValue=true,Flag='ChainAuto27',Callback=function(value)
    chainState27.auto=value;chainState27.manual=false;chainState27.pending=nil;chainState27.ready=false;previousWord='';used={}
end})
ChainTab:CreateInput({Name='이전 단어 보조 입력 (자동 인식 끈 경우)',PlaceholderText='자동 인식 사용 시 직접 입력 불필요',RemoveTextAfterFocusLost=false,Callback=function(value)
    if chainState27.auto then notify('자동 인식 사용 중','보조 입력 없이 게임 표시 또는 OCR을 읽습니다.');return end
    previousWord=value:match('^%s*(.-)%s*$');chainState27.manual=true;used={}
end})
ChainTab:CreateParagraph({Title='끝말잇기 자동 인식',Content='화면의 이전 단어·제시어 표시를 우선 읽고, 없으면 연결된 OCR을 읽습니다. 이미지 표시라면 OCR 영역을 이전 단어 또는 시작 글자 한 줄에 맞추세요. 말풍선·채팅·답안 목록은 읽지 않습니다. 글자를 확인하지 못하면 대기합니다.'})
ChainTab:CreateParagraph({Title='외부 자료 공격 후보 · build49',Content='보내주신 블로그 표에서 후보 284개를 읽었습니다. 옛말·방언·인명이 포함돼 게임에서 거절되거나 상대가 이어갈 수 있습니다. 하단 요약의 일반 단어는 흔한 단어 목록에만 넣었습니다. 끄코위키는 403으로 확인하지 못했습니다.'})
ChainTab:CreateDropdown({Name='단어 선택',Options={'흔한 단어','한방 단어'},CurrentOption={'흔한 단어'},MultipleOptions=false,Flag='ChainStyle27',Callback=function(value)
    chainStyle=type(value)=='table' and value[1] or value
end})
Rapid44.add(ChainTab,'Rapid009Chain44')
ChainTab:CreateSlider({Name='입력 간격 (초)',Range={0,5},Increment=0.05,CurrentValue=0.05,Flag='ChainDelayV32',Callback=function(value) chainInterval=value end})
SettingsTab:CreateDropdown({Name='게임 모드',Options={'기본','훈민정음','끝말잇기'},CurrentOption={'기본'},MultipleOptions=false,Flag='GameModeV2',Callback=switchMode})
SettingsTab:CreateToggle({Name='화면 자동 감지',CurrentValue=true,Flag='DetectV2',Callback=function(value)
    autoDetect=value;topic=nil;pendingSource,pendingTopic=nil,nil
end})
SettingsTab:CreateSlider({Name='기본 입력 간격 (초)',Range={0,5},Increment=0.05,CurrentValue=0.05,Flag='BasicDelayV32',Callback=function(value) delaySeconds=value end})
SettingsTab:CreateDropdown({Name='입력 위치',Options={'게임 입력창','채팅'},CurrentOption={'게임 입력창'},MultipleOptions=false,Flag='InputModeV2',Callback=function(value)
    inputMode=type(value)=='table' and value[1] or value
end})
SettingsTab:CreateDropdown({Name='제출 방식',Options={'자동 (키패드 없음)','초록 버튼','Enter (키패드 사용)'},CurrentOption={'자동 (키패드 없음)'},MultipleOptions=false,Flag='SubmitNoKeyboardV18',Callback=function(value)
    submitMethod=type(value)=='table' and value[1] or value
    inputRejection=nil;entryDraft=nil
end})
SettingsTab:CreateButton({Name='사용한 단어 초기화',Callback=function() used={};hunmin41.seen={};status('사용한 단어 초기화 완료') end})
SettingsTab:CreateToggle({Name='모든 단어 사용 (주제별 허용 목록 해제)',CurrentValue=false,Flag='AllWords36',Callback=function(value)
    useAllWords36=value
    status(value and '모든 단어 사용 켜짐 · 허용 목록 무시' or '모든 단어 사용 꺼짐 · 허용 목록 적용')
end})
SettingsTab:CreateToggle({Name='비슷한 주제 단어 공유',CurrentValue=true,Flag='SimilarTopicsV3',Callback=function(value) similarTopics=value end})
local function addModeWords(mode,category,text,style)
    local target=mode=='훈민정음' and '훈민정음'
        or (mode=='끝말잇기' and (style=='한방 단어' and '한방 단어' or '끝말잇기')) or category
    if not target or target=='' then return 0,0,'기본 모드의 주제를 입력하세요' end
    if mode=='기본' and (target=='훈민정음' or target=='끝말잇기' or target=='한방 단어') then
        return 0,0,'이 단어는 해당 모드를 선택해 등록하세요'
    end
    if mode=='기본' then
        local name,reason=createTopic(target)
        if not name then return 0,0,reason end
        target=name
    end
    bank[target]=bank[target] or {}
    local seen={}
    for _,word in ipairs(bank[target]) do seen[word]=true end
    local count,rejected,duplicates=0,0,0
    local reasons={}
    text=tostring(text or ''):gsub('，',','):gsub('、',','):gsub('；',';')
    for candidate in text:gmatch('[^,;\r\n]+') do
        local word=cleanText(candidate)
        if word~='' then
            local ok,length=pcall(utf8.len,word)
            local reason
            if not ok or not length then reason='문자 인코딩 확인 필요'
            elseif length>40 then reason='40글자 초과'
            elseif word:find('%c') then reason='탭 등 제어문자 포함'
            elseif blockedBasicWords[word] then reason='이전에 삭제 요청한 단어'
            elseif mode=='기본' and weekdayTopic(target) and not weekdaySet[word] then reason='요일은 월요일~일요일만 등록'
            elseif mode=='훈민정음' and (length~=2 or not onlySyllables(word)) then reason='훈민정음은 한글 두 글자만 등록'
            elseif mode=='끝말잇기' and (length<2 or not onlySyllables(word)) then reason='끝말잇기는 한글 두 글자 이상만 등록'
            end
            if reason then
                rejected=rejected+1
                if #reasons<3 then reasons[#reasons+1]=word..': '..reason end
            else
                if mode=='기본' then rememberBasic40(target,word)
                else
                    local key=mode=='훈민정음' and 'hunmin' or (style=='한방 단어' and 'oneShot' or 'chain')
                    wordDelete45.data[key][word]=nil -- Explicit re-add restores this word.
                    appendUserWords40(userWords40[key],{word})
                end
                if seen[word] then duplicates=duplicates+1
                else
                    table.insert(bank[target],word);seen[word]=true;count=count+1
                    if mode=='훈민정음' then addHunmin(word)
                    elseif mode=='끝말잇기' and style=='한방 단어' then
                        if oneShots~=bank[target] then appendUserWords40(oneShots,{word}) end
                    end
                end
            end
        end
    end
    if mode=='기본' then refreshTopicList() end
    return count,rejected,nil,table.concat(reasons,'\n'),duplicates
end

function wordDelete45.remove(mode,category,text,style)
    local target=mode=='훈민정음' and '훈민정음'
        or (mode=='끝말잇기' and (style=='한방 단어' and '한방 단어' or '끝말잇기')) or category
    if mode=='기본' then
        if not target or target=='' then return 0,'위의 기본 모드 주제 칸에 삭제할 주제를 입력하세요' end
        local key=topicKey(target):lower()
        for name in pairs(bank) do if topicKey(name):lower()==key then target=name;break end end
        if not bank[target] or reservedTopic(target) then return 0,'기본 모드의 등록된 주제를 입력하세요' end
    end
    local records,seen={},{}
    local bucket=wordDelete45.bucket(mode,target,style,true)
    local normalized=tostring(text or ''):gsub('，',','):gsub('、',','):gsub('；',';')
    for candidate in normalized:gmatch('[^,;\r\n]+') do
        local word=cleanText(candidate)
        if word~='' and not seen[word] and not bucket[word] then
            seen[word]=true
            local lists={}
            if mode=='기본' then
                local key=topicKey(target):lower()
                local peers=similarTopics and topicPeers[key] or nil
                for name,list in pairs(bank) do
                    local sourceKey=topicKey(name):lower()
                    if sourceKey==key or userKey40(name)==userKey40(target) or (peers and peers[sourceKey]) then
                        for _,old in ipairs(list) do if old==word then lists[#lists+1]=list;break end end
                    end
                end
            else
                for _,old in ipairs(bank[target] or {}) do if old==word then lists[1]=bank[target];break end end
            end
            if #lists>0 then
                bucket[word]=true
                records[#records+1]={bucket=bucket,word=word,lists=lists,mode=mode}
            end
        end
    end
    if #records==0 then return 0,'삭제할 단어가 없거나 이미 삭제됐습니다. 모드·주제·단어를 확인하세요.' end
    wordDelete45.undo=records
    wordDelete45.apply(bank)
    for _,list in pairs(hunminByInitial) do
        for i=#list,1,-1 do if wordDelete45.data.hunmin[list[i]] then table.remove(list,i) end end
    end
    entryDraft=nil;pendingEntry=nil;used={}
    return #records
end
function wordDelete45.restore()
    if not wordDelete45.undo then return 0 end
    local records=wordDelete45.undo
    for _,record in ipairs(records) do
        record.bucket[record.word]=nil
        for _,list in ipairs(record.lists) do appendUserWords40(list,{record.word}) end
        if record.mode=='훈민정음' then addHunmin(record.word) end
    end
    wordDelete45.undo=nil;entryDraft=nil;pendingEntry=nil;used={}
    return #records
end

Words:CreateSection('세 가지 모드별 단어 등록')
Words:CreateDropdown({Name='단어를 추가할 모드',Options={'기본','훈민정음','끝말잇기'},CurrentOption={'기본'},MultipleOptions=false,Flag='WordAddModeV3',Callback=function(value)
    draftMode=type(value)=='table' and value[1] or value
end})
Words:CreateInput({Name='기본 모드 주제',PlaceholderText='기본 모드에만 필요 · 예: 자동차 브랜드',RemoveTextAfterFocusLost=false,Callback=function(value) draftCategory=value:match('^%s*(.-)%s*$') end})
Words:CreateDropdown({Name='끝말잇기 단어 종류',Options={'흔한 단어','한방 단어'},CurrentOption={'흔한 단어'},MultipleOptions=false,Flag='WordAddChainV27',Callback=function(value)
    draftChainStyle=type(value)=='table' and value[1] or value
end})
Words:CreateInput({Name='추가할 단어',PlaceholderText='쉼표·줄바꿈·세미콜론으로 구분 · 기본 목록에 없어도 추가 가능',RemoveTextAfterFocusLost=false,Callback=function(value) draftWord=value end})
Words:CreateParagraph({Title='직접 추가한 단어는 기본 허용 목록과 별도로 저장',Content='기본 모드는 사전에 없어도 직접 등록할 수 있습니다. 중복과 제외 이유를 구분해 표시합니다. 기본: 주제별 단어 / 훈민정음: 두 글자 한글 단어, 초성 자동 분류 / 끝말잇기: 흔한 단어(2글자 이상)·한방 단어를 따로 저장합니다. 비슷한 주제 공유는 스크립트의 후보 선택 기능이며 서버 허용을 보장하지 않습니다.'})
Words:CreateButton({Name='선택한 모드에 추가 및 저장',Callback=function()
    local count,rejected,reason,details,duplicates=addModeWords(draftMode,draftCategory,draftWord,draftChainStyle)
    if reason then notify('단어 추가',reason);return end
    local saved=saveWords()
    notify('단어 추가',draftMode..' '..count..'개 추가 · 중복 '..tostring(duplicates or 0)..'개 · 제외 '..rejected..'개'
        ..(details and details~='' and ('\n'..details) or '')..(saved and ' · 저장 완료' or ' · 파일 저장 실패: 현재 실행에만 적용'))
end})
Words:CreateButton({Name='등록한 단어 저장',Callback=function()
    notify('저장',saveWords() and '저장 완료' or '이 실행 환경은 파일 저장을 지원하지 않습니다')
end})
Words:CreateSection('단어 삭제 · 주제는 유지')
Words:CreateParagraph({Title='삭제할 모드와 주제 선택',Content='위의 단어를 추가할 모드·기본 모드 주제·끝말잇기 단어 종류를 선택한 뒤 아래에 삭제할 단어를 적으세요. 쉼표·줄바꿈으로 여러 개를 삭제할 수 있습니다. 저장하면 재실행 후에도 제외됩니다. 같은 단어를 다시 추가하면 복원됩니다.'})
Words:CreateInput({Name='삭제할 단어',PlaceholderText='예: 연필, 지우개',RemoveTextAfterFocusLost=false,Callback=function(value) wordDelete45.text=value end})
Words:CreateButton({Name='선택한 모드·주제에서 단어 삭제 및 저장',Callback=function()
    local count,reason=wordDelete45.remove(draftMode,draftCategory,wordDelete45.text,draftChainStyle)
    if reason then notify('단어 삭제',reason);return end
    local saved=saveWords()
    notify('단어 삭제',count..'개 제외 · 주제는 유지'..(saved and ' · 저장 완료' or ' · 저장 실패: 현재 실행에만 적용'))
end})
Words:CreateButton({Name='마지막 단어 삭제 되돌리기',Callback=function()
    local count=wordDelete45.restore()
    if count==0 then notify('단어 복원','현재 실행에서 되돌릴 삭제가 없습니다');return end
    local saved=saveWords()
    notify('단어 복원',count..'개 복원'..(saved and ' · 저장 완료' or ' · 저장 실패: 현재 실행에만 적용'))
end})
-- Manage Basic-mode topics without having to edit the Lua file.
local newTopicName,selectedTopic='',nil
local topicListControl,topicSummary
local function topicNames()
    local names={}
    for name in pairs(bank) do if not reservedTopic(name) then table.insert(names,name) end end
    table.sort(names)
    return names
end
local function showTopicSummary()
    if topicSummary then
        local list=selectedTopic and bank[selectedTopic]
        topicSummary:Set(list and (selectedTopic..' · '..#list..'개 단어') or '목록에서 주제를 선택하세요')
    end
end
refreshTopicList=function()
    local names=topicNames()
    if selectedTopic and not bank[selectedTopic] then selectedTopic=nil end
    if topicListControl then topicListControl:Refresh(names,true) end
    if manualTopicControl then pcall(function() manualTopicControl:Refresh(manualTopicOptions(),true) end) end
    showTopicSummary()
end
TopicsTab:CreateSection('기본 모드 주제 관리')
TopicsTab:CreateInput({Name='새 주제 이름',PlaceholderText='예: 과일 브랜드',RemoveTextAfterFocusLost=false,Callback=function(value) newTopicName=value end})
TopicsTab:CreateButton({Name='주제 추가 및 저장',Callback=function()
    local name,reason=createTopic(newTopicName)
    if not name then notify('주제 추가',reason);return end
    selectedTopic=name;showTopicSummary()
    local saved=saveWords()
    notify('주제 추가',name..' · '..(reason or '추가 완료')..(saved and ' · 저장 완료' or ' · 현재 실행에 적용'))
end})
topicListControl=TopicsTab:CreateDropdown({Name='등록된 주제 목록',Options=topicNames(),CurrentOption={},MultipleOptions=false,Flag='TopicManageSelectionV4',Callback=function(value)
    selectedTopic=type(value)=='table' and value[1] or value
    showTopicSummary()
end})
topicSummary=TopicsTab:CreateLabel('목록에서 주제를 선택하세요')
TopicsTab:CreateButton({Name='선택한 주제 삭제 및 저장',Callback=function()
    local name=selectedTopic
    local success,reason=removeTopic(name or '')
    if not success then notify('주제 삭제',reason);return end
    local saved=saveWords()
    notify('주제 삭제',name..' 삭제 완료'..(saved and ' · 저장 완료' or ' · 현재 실행에 적용'))
end})
TopicsTab:CreateButton({Name='마지막 주제 삭제 되돌리기',Callback=function()
    if not undoRemoveTopic() then notify('복원','현재 실행에서 되돌릴 삭제가 없습니다');return end
    local saved=saveWords()
    notify('복원','주제와 단어 복원 완료'..(saved and ' · 저장 완료' or ' · 현재 실행에 적용'))
end})
TopicsTab:CreateParagraph({Title='사용 방법',Content='새 주제 이름 → 주제 추가. 삭제하려면 목록에서 선택 → 주제 삭제. 삭제하면 그 주제의 단어도 제외되며, 파일 저장을 지원하는 환경에서는 다음 실행에도 유지됩니다. 새 주제의 단어는 단어 추가 탭에서 기본 모드로 등록하세요.'})
-- Restore settings only after every element exists. Never auto-start on reload.
pcall(function() Rayfield:LoadConfiguration() end)
enabled=false
status('build 49 준비 · 훈민정음 사용 기록 유지·단어 보강')
notify('build 49','훈민정음 턴 전환 중복 방지 · 새 게임에서는 사용 기록 초기화')
task.spawn(function()
    local lastAttempt=0
    while session.active do
        local success,err=pcall(function()
            if enabled and os.clock()-lastAttempt>=currentInterval() then
                lastAttempt=os.clock()
                detectDisplayedPrompt()
                local ready=detectTopic()
                local active,waiting=roundReady()
                if ready and active then observeAnswers();observeRoundWords() end
                if not active then topic=nil;used={};pendingSource,pendingTopic=nil,nil;status(waiting) end
                if active then attempt() end
            end
        end)
        if not success then status('오류: '..tostring(err)) end
        if instantInput33 then task.wait() else task.wait(0.01) end
    end
end)
