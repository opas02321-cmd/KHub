-- OasisUI v1.6.0 | MIT License | https://github.com/Mold53/OasisUI
-- KoreanHub Universal / Oasis. KH Rivals payload removed.
local Oasis=(function()
 local f,e=loadstring([====[local WindUI=assert(loadstring([========[--[[
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
]====],'KoreanHub_OasisUI')
 if not f then error(e) end
 return f()
end)()
local NativeWindow=Oasis:CreateWindow({Title='KoreanHub',Subtitle='Universal',GuiName='KoreanHubUniversalOasis',Folder='KoreanHubUniversalOasis',Settings=false,AutoLoad=false,Size=UDim2.fromOffset(700,480)})
NativeWindow.Config.AutoSave=false
NativeWindow:SetFitScreen(true)
NativeWindow:SetBlur('Off')
NativeWindow.Overlays:SetWatermark(false)
NativeWindow.Overlays:SetKeybindList(false)
local Rayfield={Flags={}}
local Window={}
local serial=0
local function list(v) if type(v)=='table' then return v end return v and {v} or {} end
function Rayfield:Notify(o) Oasis:Notify({Title=o.Title,Content=o.Content,Duration=o.Duration or 4}) end
function Window:CreateTab(name)
 local tab=NativeWindow:Tab({Title=name})
 local facade={};local section;local count=0;local page=0
 local function newSection(title)
  page=page+1;count=0
  section=tab:Section({Title=title,Side=page%2==1 and 'Left' or 'Right'})
 end
 local function container()
  if not section or count>=10 then newSection(name..' '..(page+1)) end
  count=count+1;return section
 end
 function facade:CreateSection(title) newSection(title) end
 function facade:CreateLabel(text)
  local raw=container():Paragraph({Content=text})
  return {Set=function(_,value) raw:SetContent(tostring(value)) end}
 end
 function facade:CreateParagraph(o) return container():Paragraph(o) end
 function facade:CreateButton(o) return container():Button({Title=o.Name,Callback=o.Callback}) end
 for _,kind in ipairs({'Toggle','Slider','Dropdown','Input','ColorPicker'}) do
  facade['Create'..kind]=function(_,o)
   serial=serial+1;local id=o.Flag or name..'_'..serial
   local el={Type=kind,CurrentValue=o.CurrentValue,CurrentOption=list(o.CurrentOption),Color=o.Color}
   local callback=function(value)
    if kind=='Dropdown' then value=list(value);el.CurrentOption=value
    elseif kind=='ColorPicker' then el.Color=value
    else el.CurrentValue=value end
    if o.Callback then o.Callback(value) end
   end
   local def={Title=o.Name,Flag=id,Callback=callback}
   local raw;local group=container()
   if kind=='Toggle' then def.Default=o.CurrentValue==true;raw=group:Toggle(def)
   elseif kind=='Slider' then def.Min=o.Range[1];def.Max=o.Range[2];def.Step=o.Increment or 1;def.Default=o.CurrentValue;raw=group:Slider(def)
   elseif kind=='Dropdown' then
    def.Values=o.Options or {};def.Multi=o.MultipleOptions==true;def.AllowNone=true
    def.Default=def.Multi and list(o.CurrentOption) or list(o.CurrentOption)[1]
    raw=group:Dropdown(def)
   elseif kind=='Input' then def.Default=o.CurrentValue or '';def.Placeholder=o.PlaceholderText;def.Live=false;raw=group:Input(def)
   else def.Default=o.Color;raw=group:ColorPicker(def) end
   function el:Set(value)
    if kind=='Dropdown' then value=o.MultipleOptions and list(value) or list(value)[1] end
    raw:Set(value)
   end
   function el:Refresh(values) raw:Refresh(values,true) end
   el.Raw=raw;Rayfield.Flags[id]=el
   return el
  end
 end
 return facade
end
function Window.ModifyTheme(name) Oasis:SetTheme(name) end

function
Rayfield:SaveConfiguration()
if
not
(writefile
and
makefolder
and
isfolder)
then
error('설정 저장 API 미지원')
end
if
not
isfolder('KoreanHubConfigs')
then
makefolder('KoreanHubConfigs')
end
local
data={}
for
id,e
in
pairs(self.Flags)
do
if
e.Type=='ColorPicker'
then
data[id]={R=e.Color.R,G=e.Color.G,B=e.Color.B}
elseif
e.Type=='Dropdown'
then
data[id]=e.CurrentOption
else
data[id]=e.CurrentValue
end
end
writefile('KoreanHubConfigs/LinoriaUniversal.json',game:GetService('HttpService'):JSONEncode(data))
writefile('KoreanHubConfigs/LinoriaAutoload.txt','on')
end
function
Rayfield:LoadConfiguration()
if
isfile
and
readfile
and
isfile('KoreanHubConfigs/LinoriaAutoload.txt')
then
local
ok,mode=pcall(readfile,'KoreanHubConfigs/LinoriaAutoload.txt')
if
not
ok
or
mode~='on'
then
return
end
end
if
not
(isfile
and
readfile)
or
not
isfile('KoreanHubConfigs/LinoriaUniversal.json')
then
return
end
local
ok,data=pcall(function()
return
game:GetService('HttpService'):JSONDecode(readfile('KoreanHubConfigs/LinoriaUniversal.json'))
end)
if
not
ok
then
self:Notify({Title='Config',Content='저장 파일을 읽지 못했습니다'});return
end
for
id,v
in
pairs(data)
do
local
e=self.Flags[id];if
e
then
local
good,err=pcall(function()
e:Set(e.Type=='ColorPicker'
and
Color3.new(v.R,v.G,v.B)
or
v)
end)
if
not
good
then
warn(id,err)
end
end
end
end


do
 local tab=Window:CreateTab('UI')
 tab:CreateSlider({Name='UI 크기 (%)',Range={50,150},Increment=5,CurrentValue=100,Flag='UniversalOasisScale',Callback=function(v) NativeWindow:SetScale(v/100) end})
 tab:CreateButton({Name='화면에 맞추기',Callback=function() NativeWindow:SetFitScreen(true);NativeWindow:SetScale(1) end})
end
local
MovementTab
=
Window:CreateTab("Movement",
4483362458)
local
CombatTab
=
Window:CreateTab("Combat",
4483362458)
local
VisualsTab
=
Window:CreateTab("Visuals",
4483362458)
local
ESPTab
=
Window:CreateTab("ESP",
4483362458)
local
PerfTab
=
Window:CreateTab("Performance",
4483362458)
local
MiscTab
=
Window:CreateTab("Misc",
4483362458)
 
local
function
autoFlag(tab,
prefix)
for
_,
method
in
ipairs({"CreateToggle",
"CreateSlider",
"CreateDropdown",
"CreateInput"})
do
local
original
=
tab[method]
tab[method]
=
function(self,
opts)
if
not
opts.Flag
then
opts.Flag
=
prefix
..
"_"
..
(opts.Name:gsub("[^%w]",
""))
end
return
original(self,
opts)
end
end
end
autoFlag(MovementTab,
"Move")
autoFlag(CombatTab,
"Combat")
autoFlag(VisualsTab,
"Visual")
autoFlag(ESPTab,
"ESP")
autoFlag(PerfTab,
"Perf")
autoFlag(MiscTab,
"Misc")
local
function
notify(title,
content)
Rayfield:Notify({
Title
=
title,
Content
=
content,
Duration
=
4
})
end
 
local
Players
=
game:GetService("Players")
local
WeaponCompat={}
function
WeaponCompat.equipped(char)
if
not
char
then
return
nil
end
local
tool=char:FindFirstChildOfClass("Tool")
if
tool
then
return
tool
end
for
_,model
in
ipairs(char:GetChildren())
do
if
model:IsA("Model")
and
model:FindFirstChild("Handle")
then
local
confirmed=model:FindFirstChild("ToolSlot")~=nil
or
model:FindFirstChild("Activate")~=nil
if
not
confirmed
then
for
_,joint
in
ipairs(model:GetDescendants())
do
if
joint:IsA("Motor6D")
or
joint:IsA("WeldConstraint")
then
local
a,b=joint.Part0,joint.Part1
if
a
and
b
and
((a:IsDescendantOf(model)
and
b:IsDescendantOf(char)
and
not
b:IsDescendantOf(model))
or
(b:IsDescendantOf(model)
and
a:IsDescendantOf(char)
and
not
a:IsDescendantOf(model)))
then
confirmed=true;break
end
end
end
end
if
confirmed
then
return
model
end
end
end
end
local
RunService
=
game:GetService("RunService")
local
UserInputService
=
game:GetService("UserInputService")
local
Lighting
=
game:GetService("Lighting")
local
TeleportService
=
game:GetService("TeleportService")
local
VirtualUser
=
game:GetService("VirtualUser")
local
LocalPlayer
=
Players.LocalPlayer
local
Camera
=
workspace.CurrentCamera
 
_G.WalkSpeedVal
=
16
_G.JumpPowerVal
=
50
_G.LoopSpeed
=
false
_G.LoopJumpPower
=
false
_G.InfJump
=
false
_G.Noclip
=
false
_G.FlyEnabled
=
false
_G.FlySpeed
=
50
_G.FlyTilt
=
0
_G.NoFallDamage
=
true
_G.AimbotEnabled
=
false
_G.AimPart
=
"Head"
_G.AimbotSmoothness
=
1
_G.FOVCircle
=
false
_G.FOVSize
=
100
_G.AimbotTeamCheck
=
true
_G.PlayerLock
=
false
_G.Spinbot
=
false
_G.SpinSpeed
=
50
_G.GodMode
=
false
_G.TouchFling
=
false
_G.AutoClicker
=
false
_G.HitboxExpander
=
false
_G.HitboxSize
=
5
_G.Invisibility
=
false
_G.Fullbright
=
false
_G.FullbrightIntensity
=
2
_G.Freecam
=
false
_G.ESPEnabled
=
false
_G.ESPTeamCheck
=
true
_G.BoxESP
=
false
_G.TracerESP
=
false
_G.SkeletonESP
=
false
 
local
fovDrawing
=
Drawing.new("Circle")
fovDrawing.Visible
=
false
fovDrawing.Filled
=
false
fovDrawing.Thickness
=
1
fovDrawing.Color
=
Color3.fromRGB(255,
255,
255)
fovDrawing.Transparency
=
0.7
 
 
 
local
walkSpeedSlider
=
MovementTab:CreateSlider({
Name
=
"WalkSpeed",
Range
=
{16,
350},
Increment
=
1,
CurrentValue
=
16,
Callback
=
function(v)
_G.WalkSpeedVal
=
v
if
LocalPlayer.Character
and
LocalPlayer.Character:FindFirstChild("Humanoid")
then
LocalPlayer.Character.Humanoid.WalkSpeed
=
v
end
end,
})
MovementTab:CreateInput({
Name
=
"Type WalkSpeed",
CurrentValue
=
"",
PlaceholderText
=
"16-350 (press Enter)",
RemoveTextAfterFocusLost
=
false,
Flag
=
"Move_TypeWalkSpeed",
Callback
=
function(text)
local
number
=
tonumber(text)
if
not
number
or
number
~=
number
then
return
end
local
speed
=
math.clamp(math.floor(number
+
0.5),
16,
350)
walkSpeedSlider:Set(speed)
end,
})
local
jumpPowerSlider
=
MovementTab:CreateSlider({
Name
=
"JumpPower",
Range
=
{50,
300},
Increment
=
1,
CurrentValue
=
50,
Callback
=
function(v)
_G.JumpPowerVal
=
v
if
LocalPlayer.Character
and
LocalPlayer.Character:FindFirstChild("Humanoid")
then
LocalPlayer.Character.Humanoid.UseJumpPower
=
true
LocalPlayer.Character.Humanoid.JumpPower
=
v
end
end,
})
MovementTab:CreateInput({
Name
=
"Type JumpPower",
CurrentValue
=
"",
PlaceholderText
=
"50-300 (press Enter)",
RemoveTextAfterFocusLost
=
false,
Flag
=
"Move_TypeJumpPower",
Callback
=
function(text)
local
number
=
tonumber(text)
if
not
number
or
number
~=
number
or
number
==
math.huge
or
number
==
-math.huge
then
return
end
jumpPowerSlider:Set(math.clamp(math.floor(number
+
0.5),
50,
300))
end,
})
 
do
if
type(_G.KoreanHubVisualDesyncCleanup)
==
"function"
then
_G.KoreanHubVisualDesyncCleanup()
end
local
enabled,
distance,
ghost,
source
=
false,
8,
nil,
nil
local
mode,
frozen,
freezeUntil
=
"Fake Position",
nil,
0
local
hidden
=
{}
local
connection
local
function
restore()
for
part,
previous
in
pairs(hidden)
do
if
part.Parent
then
part.LocalTransparencyModifier
=
previous
end
hidden[part]
=
nil
end
if
ghost
then
ghost:Destroy();
ghost
=
nil
end
source,
frozen,
freezeUntil
=
nil,
nil,
0
end
local
function
build(character)
restore()
if
not
character
then
return
end
local
oldArchivable
=
character.Archivable
character.Archivable
=
true
local
ok,
copy
=
pcall(function()
return
character:Clone()
end)
character.Archivable
=
oldArchivable
if
not
ok
or
not
copy
then
return
end
copy.Name
=
"KoreanHubVisualDesync"
for
_,
object
in
ipairs(copy:GetDescendants())
do
if
object:IsA("LuaSourceContainer")
or
object:IsA("Tool")
then
object:Destroy()
elseif
object:IsA("BasePart")
then
object.Anchored
=
true
object.CanCollide
=
false
object.CanTouch
=
false
object.CanQuery
=
false
end
end
copy.Parent
=
workspace
ghost,
source
=
copy,
character
end
local
function
update()
if
not
enabled
then
return
end
local
character
=
LocalPlayer.Character
local
root
=
character
and
character:FindFirstChild("HumanoidRootPart")
if
not
root
then
restore();
return
end
if
character
~=
source
or
not
ghost
or
not
ghost.Parent
then
build(character)
end
if
not
ghost
then
return
end
for
_,
part
in
ipairs(character:GetDescendants())
do
if
part:IsA("BasePart")
and
hidden[part]
==
nil
then
hidden[part]
=
part.LocalTransparencyModifier
part.LocalTransparencyModifier
=
1
end
end
local
actual
=
character:GetPivot()
if
mode
==
"Rotation Jitter"
then
ghost:PivotTo(actual
*
CFrame.Angles(0,
math.sin(os.clock()
*
18)
*
math.rad(100),
0))
elseif
mode
==
"Brief Freeze"
then
local
now
=
os.clock()
if
not
frozen
then
frozen,
freezeUntil
=
actual,
now
+
0.45
elseif
now
>=
freezeUntil
then
frozen,
freezeUntil
=
actual,
now
+
1.2
end
ghost:PivotTo(frozen)
else
ghost:PivotTo(actual
*
CFrame.new(distance,
0,
0))
end
end
MovementTab:CreateToggle({
Name
=
"Visual Desync (Local Copy)",
CurrentValue
=
false,
Flag
=
"Move_VisualDesync",
Callback
=
function(state)
enabled
=
state
if
state
then
update()
else
restore()
end
end,
})
MovementTab:CreateDropdown({
Name
=
"Desync Mode",
Options
=
{"Fake Position",
"Rotation Jitter",
"Brief Freeze"},
CurrentOption
=
{"Fake Position"},
MultipleOptions
=
false,
Flag
=
"Move_DesyncMode",
Callback
=
function(option)
mode
=
type(option)
==
"table"
and
option[1]
or
option
frozen,
freezeUntil
=
nil,
0
end,
})
MovementTab:CreateSlider({
Name
=
"Desync Visual Offset",
Range
=
{2,
30},
Increment
=
1,
CurrentValue
=
8,
Callback
=
function(value)
distance
=
value
end,
})
connection
=
RunService.RenderStepped:Connect(update)
_G.KoreanHubVisualDesyncCleanup
=
function()
enabled
=
false
connection:Disconnect()
restore()
end
end
 
do
local
function
applyLoopMovement()
if
not
(_G.LoopSpeed
or
_G.LoopJumpPower)
then
return
end
local
character
=
LocalPlayer.Character
local
humanoid
=
character
and
character:FindFirstChildOfClass("Humanoid")
if
not
humanoid
or
humanoid.Health
<=
0
then
return
end
if
_G.LoopSpeed
and
humanoid.WalkSpeed
~=
_G.WalkSpeedVal
then
humanoid.WalkSpeed
=
_G.WalkSpeedVal
end
if
_G.LoopJumpPower
then
if
not
humanoid.UseJumpPower
then
humanoid.UseJumpPower
=
true
end
if
humanoid.JumpPower
~=
_G.JumpPowerVal
then
humanoid.JumpPower
=
_G.JumpPowerVal
end
end
end
MovementTab:CreateToggle({
Name
=
"Loop Speed",
CurrentValue
=
false,
Flag
=
"Move_LoopSpeed",
Callback
=
function(state)
_G.LoopSpeed
=
state
if
state
then
applyLoopMovement()
end
end,
})
MovementTab:CreateToggle({
Name
=
"Loop Jump Power",
CurrentValue
=
false,
Flag
=
"Move_LoopJumpPower",
Callback
=
function(state)
_G.LoopJumpPower
=
state
if
state
then
applyLoopMovement()
end
end,
})
if
_G.KoreanHubMovementLoopConnection
then
_G.KoreanHubMovementLoopConnection:Disconnect()
end
_G.KoreanHubMovementLoopConnection
=
RunService.Heartbeat:Connect(applyLoopMovement)
end
 
do
if
type(_G.KoreanHubStunAssistCleanup)
==
"function"
then
_G.KoreanHubStunAssistCleanup()
elseif
_G.KoreanHubStunAssistConnection
then
_G.KoreanHubStunAssistConnection:Disconnect()
end
local
stunAssist,
elapsed,
recoverUntil
=
false,
0,
0
local
touchConnections
=
{}
local
joystickTouch,
joystickStart,
joystickVector
=
nil,
nil,
Vector2.zero
local
controls
local
function
getControls()
if
controls
then
return
controls
end
local
scripts
=
LocalPlayer:FindFirstChild("PlayerScripts")
local
module
=
scripts
and
scripts:FindFirstChild("PlayerModule")
if
module
then
local
ok,
playerModule
=
pcall(require,
module)
if
ok
and
playerModule
then
local
worked,
value
=
pcall(function()
return
playerModule:GetControls()
end)
if
worked
then
controls
=
value
end
end
end
return
controls
end
if
UserInputService.TouchEnabled
then
 
table.insert(touchConnections,
UserInputService.TouchStarted:Connect(function(input)
local
camera
=
workspace.CurrentCamera
local
view
=
camera
and
camera.ViewportSize
if
stunAssist
and
view
and
not
joystickTouch
and
input.Position.X
<
view.X
*
0.45
and
input.Position.Y
>
view.Y
*
0.4
then
joystickTouch,
joystickStart
=
input,
input.Position
joystickVector
=
Vector2.zero
end
end))
table.insert(touchConnections,
UserInputService.TouchMoved:Connect(function(input)
if
input
==
joystickTouch
then
local
delta
=
(input.Position
-
joystickStart)
/
65
joystickVector
=
delta.Magnitude
>
1
and
delta.Unit
or
delta
end
end))
table.insert(touchConnections,
UserInputService.TouchEnded:Connect(function(input)
if
input
==
joystickTouch
then
joystickTouch,
joystickStart,
joystickVector
=
nil,
nil,
Vector2.zero
end
end))
end
MovementTab:CreateToggle({
Name
=
"Move While Stunned (Body)",
CurrentValue
=
false,
Flag
=
"Move_StunMovementAssist",
Callback
=
function(value)
stunAssist
=
value
if
not
value
then
recoverUntil
=
0
joystickTouch,
joystickStart,
joystickVector
=
nil,
nil,
Vector2.zero
end
end,
})
local
connection
=
RunService.Heartbeat:Connect(function(dt)
if
not
stunAssist
or
_G.FlyEnabled
then
elapsed
=
0;
return
end
local
character
=
LocalPlayer.Character
local
root
=
character
and
character:FindFirstChild("HumanoidRootPart")
local
humanoid
=
character
and
character:FindFirstChildOfClass("Humanoid")
if
not
root
or
not
humanoid
or
humanoid.Health
<=
0
then
return
end
local
now
=
os.clock()
local
state
=
humanoid:GetState()
local
blocked
=
root.Anchored
or
humanoid.PlatformStand
or
humanoid.WalkSpeed
<
1
or
state
==
Enum.HumanoidStateType.Physics
or
state
==
Enum.HumanoidStateType.PlatformStanding
if
blocked
then
recoverUntil
=
now
+
0.5
end
elapsed
=
elapsed
+
dt
if
elapsed
>=
0.1
then
elapsed
=
0
if
root.Anchored
then
root.Anchored
=
false
end
if
humanoid.PlatformStand
then
humanoid.PlatformStand
=
false
end
if
humanoid.Sit
then
humanoid.Sit
=
false
end
if
humanoid.WalkSpeed
<
_G.WalkSpeedVal
then
humanoid.WalkSpeed
=
_G.WalkSpeedVal
end
if
not
humanoid.UseJumpPower
then
humanoid.UseJumpPower
=
true
end
if
humanoid.JumpPower
<
_G.JumpPowerVal
then
humanoid.JumpPower
=
_G.JumpPowerVal
end
if
state
==
Enum.HumanoidStateType.Physics
or
state
==
Enum.HumanoidStateType.PlatformStanding
then
humanoid:ChangeState(Enum.HumanoidStateType.Running)
end
end
if
now
>
recoverUntil
then
return
end
local
camera
=
workspace.CurrentCamera
if
not
camera
then
return
end
local
forward
=
Vector3.new(camera.CFrame.LookVector.X,
0,
camera.CFrame.LookVector.Z)
if
forward.Magnitude
<
0.01
then
return
end
forward
=
forward.Unit
local
right
=
Vector3.new(camera.CFrame.RightVector.X,
0,
camera.CFrame.RightVector.Z).Unit
local
f,
r
=
0,
0
if
UserInputService:IsKeyDown(Enum.KeyCode.W)
then
f
=
f
+
1
end
if
UserInputService:IsKeyDown(Enum.KeyCode.S)
then
f
=
f
-
1
end
if
UserInputService:IsKeyDown(Enum.KeyCode.D)
then
r
=
r
+
1
end
if
UserInputService:IsKeyDown(Enum.KeyCode.A)
then
r
=
r
-
1
end
local
direction
=
forward
*
f
+
right
*
r
if
direction.Magnitude
<
0.01
then
local
control
=
getControls()
if
control
then
local
ok,
vector
=
pcall(function()
return
control:GetMoveVector()
end)
if
ok
and
vector
and
vector.Magnitude
>
0.01
then
direction
=
right
*
vector.X
-
forward
*
vector.Z
end
end
end
if
direction.Magnitude
<
0.01
and
joystickVector.Magnitude
>
0.05
then
direction
=
right
*
joystickVector.X
-
forward
*
joystickVector.Y
end
if
direction.Magnitude
<
0.01
then
direction
=
humanoid.MoveDirection
end
if
direction.Magnitude
<
0.01
then
return
end
local
delta
=
direction.Unit
*
math.min(_G.WalkSpeedVal,
50)
*
math.min(dt,
0.05)
local
params
=
RaycastParams.new()
params.FilterType
=
Enum.RaycastFilterType.Exclude
params.FilterDescendantsInstances
=
{character}
local
hit
=
workspace:Raycast(root.Position,
delta.Unit
*
(delta.Magnitude
+
1.5),
params)
if
not
hit
then
character:PivotTo(character:GetPivot()
+
delta)
end
end)
_G.KoreanHubStunAssistConnection
=
connection
_G.KoreanHubStunAssistCleanup
=
function()
connection:Disconnect()
for
_,
item
in
ipairs(touchConnections)
do
item:Disconnect()
end
end
end
MovementTab:CreateToggle({
Name
=
"Infinite Jump",
CurrentValue
=
false,
Callback
=
function(state)
_G.InfJump
=
state
end,
})
UserInputService.JumpRequest:Connect(function()
if
_G.InfJump
and
LocalPlayer.Character
then
local
humanoid
=
LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
if
humanoid
then
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end
end
end)
MovementTab:CreateToggle({
Name
=
"Noclip",
CurrentValue
=
false,
Callback
=
function(state)
_G.Noclip
=
state
end,
})
RunService.Stepped:Connect(function()
if
_G.Noclip
and
LocalPlayer.Character
then
for
_,
part
in
ipairs(LocalPlayer.Character:GetDescendants())
do
if
part:IsA("BasePart")
then
part.CanCollide
=
false
end
end
end
end)
 
local
flyConnection
=
nil
local
flyBV
=
nil
local
flyBG
=
nil
 
local
FLY_POSES
=
{
["Float"]
=
{
R15
=
507785072,
R6
=
180435571
},
["Swim"]
=
{
R15
=
507784897,
R6
=
180436148
},
["Run"]
=
{
R15
=
507767714,
R6
=
180426354
},
["Walk"]
=
{
R15
=
507777826,
R6
=
180426354
},
["Fall"]
=
{
R15
=
507767968,
R6
=
180436148
},
["Jump"]
=
{
R15
=
507765000,
R6
=
125750702
},
["Sit"]
=
{
R15
=
2506281703,
R6
=
178130996
},
["Climb"]
=
{
R15
=
507765644,
R6
=
180436334
},
["Dance 1"]
=
{
R15
=
507771019,
R6
=
182435998
},
["Dance 2"]
=
{
R15
=
507776043,
R6
=
182491037
},
["Dance 3"]
=
{
R15
=
507777268,
R6
=
182491065
},
}
local
flyPoseName
=
"Float"
local
flyCustomPoseId
=
""
local
flyMoveName
=
"Swim"
local
flyCustomMoveId
=
""
local
flyPoseTrack
=
nil
local
flyMoveTrack
=
nil
local
flyIsMoving
=
false
local
function
destroyTrack(track)
if
track
then
pcall(function()
track:Stop()
track:Destroy()
end)
end
end
local
function
loadFlyTrack(hum,
name,
customId)
local
id
if
name
==
"Custom ID"
then
id
=
tonumber(customId)
elseif
FLY_POSES[name]
then
local
isR15
=
hum.RigType
==
Enum.HumanoidRigType.R15
id
=
isR15
and
FLY_POSES[name].R15
or
FLY_POSES[name].R6
end
if
not
id
then
return
nil
end
local
animator
=
hum:FindFirstChildOfClass("Animator")
if
not
animator
then
animator
=
Instance.new("Animator")
animator.Parent
=
hum
end
local
anim
=
Instance.new("Animation")
anim.AnimationId
=
"rbxassetid://"
..
tostring(id)
local
ok,
track
=
pcall(function()
return
animator:LoadAnimation(anim)
end)
if
not
ok
or
not
track
then
return
nil
end
track.Priority
=
Enum.AnimationPriority.Action
track.Looped
=
true
return
track
end
 
local
function
updateFlyAnim()
local
wantMove
=
flyIsMoving
and
flyMoveTrack
~=
nil
if
wantMove
then
if
flyPoseTrack
and
flyPoseTrack.IsPlaying
then
flyPoseTrack:Stop(0.2)
end
if
not
flyMoveTrack.IsPlaying
then
flyMoveTrack:Play(0.2)
end
else
if
flyMoveTrack
and
flyMoveTrack.IsPlaying
then
flyMoveTrack:Stop(0.2)
end
if
flyPoseTrack
and
not
flyPoseTrack.IsPlaying
then
flyPoseTrack:Play(0.2)
end
end
end
local
function
setFlyMoving(moving)
if
moving
~=
flyIsMoving
then
flyIsMoving
=
moving
updateFlyAnim()
end
end
local
function
stopFlyPose()
destroyTrack(flyPoseTrack)
destroyTrack(flyMoveTrack)
flyPoseTrack
=
nil
flyMoveTrack
=
nil
flyIsMoving
=
false
end
local
function
playFlyPose()
destroyTrack(flyPoseTrack)
destroyTrack(flyMoveTrack)
flyPoseTrack
=
nil
flyMoveTrack
=
nil
if
not
_G.FlyEnabled
then
return
end
local
char
=
LocalPlayer.Character
local
hum
=
char
and
char:FindFirstChildOfClass("Humanoid")
if
not
hum
then
return
end
if
flyPoseName
~=
"None (T-Pose)"
then
flyPoseTrack
=
loadFlyTrack(hum,
flyPoseName,
flyCustomPoseId)
end
if
flyMoveName
~=
"None"
then
flyMoveTrack
=
loadFlyTrack(hum,
flyMoveName,
flyCustomMoveId)
end
updateFlyAnim()
end
local
function
stopFly()
stopFlyPose()
if
flyConnection
then
flyConnection:Disconnect()
flyConnection
=
nil
end
if
flyBV
then
flyBV:Destroy()
flyBV
=
nil
end
if
flyBG
then
flyBG:Destroy()
flyBG
=
nil
end
local
char
=
LocalPlayer.Character
local
hum
=
char
and
char:FindFirstChildOfClass("Humanoid")
local
hrp
=
char
and
char:FindFirstChild("HumanoidRootPart")
if
hum
then
hum.PlatformStand
=
false
end
if
hrp
then
hrp.AssemblyLinearVelocity
=
Vector3.new(0,
0,
0)
hrp.AssemblyAngularVelocity
=
Vector3.new(0,
0,
0)
end
end
local
function
startFly()
stopFly()
local
char
=
LocalPlayer.Character
local
hrp
=
char
and
char:FindFirstChild("HumanoidRootPart")
local
hum
=
char
and
char:FindFirstChildOfClass("Humanoid")
if
not
hrp
or
not
hum
then
return
end
hum.PlatformStand
=
true
flyBV
=
Instance.new("BodyVelocity")
flyBV.Name
=
"HubFlyVelocity"
flyBV.MaxForce
=
Vector3.new(math.huge,
math.huge,
math.huge)
flyBV.Velocity
=
Vector3.new(0,
0,
0)
flyBV.Parent
=
hrp
flyBG
=
Instance.new("BodyGyro")
flyBG.Name
=
"HubFlyGyro"
flyBG.MaxTorque
=
Vector3.new(math.huge,
math.huge,
math.huge)
flyBG.P
=
30000
flyBG.D
=
1000
flyBG.CFrame
=
hrp.CFrame
flyBG.Parent
=
hrp
local
flyTilt
=
0
flyConnection
=
RunService.RenderStepped:Connect(function(dt)
if
not
_G.FlyEnabled
or
not
hrp.Parent
or
not
hum.Parent
then
return
end
local
camCF
=
Camera.CFrame
local
look
=
camCF.LookVector
 
local
flatLook
=
Vector3.new(look.X,
0,
look.Z)
if
flatLook.Magnitude
<
0.01
then
flatLook
=
Vector3.new(camCF.UpVector.X,
0,
camCF.UpVector.Z)
end
if
flatLook.Magnitude
<
0.01
then
return
end
flatLook
=
flatLook.Unit
local
flatRight
=
Vector3.new(-flatLook.Z,
0,
flatLook.X)
 
local
input
=
hum.MoveDirection
local
fwd
=
input:Dot(flatLook)
local
rgt
=
input:Dot(flatRight)
if
input.Magnitude
<
0.01
then
if
UserInputService:IsKeyDown(Enum.KeyCode.W)
then
fwd
=
fwd
+
1
end
if
UserInputService:IsKeyDown(Enum.KeyCode.S)
then
fwd
=
fwd
-
1
end
if
UserInputService:IsKeyDown(Enum.KeyCode.D)
then
rgt
=
rgt
+
1
end
if
UserInputService:IsKeyDown(Enum.KeyCode.A)
then
rgt
=
rgt
-
1
end
local
mag
=
math.sqrt(fwd
*
fwd
+
rgt
*
rgt)
if
mag
>
1
then
fwd
=
fwd
/
mag
rgt
=
rgt
/
mag
end
end
 
local
targetVel
=
(look
*
fwd
+
camCF.RightVector
*
rgt)
*
_G.FlySpeed
 
local
vertical
=
0
if
hum.Jump
or
UserInputService:IsKeyDown(Enum.KeyCode.Space)
then
vertical
=
vertical
+
1
end
if
UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)
then
vertical
=
vertical
-
1
end
targetVel
=
targetVel
+
Vector3.new(0,
vertical
*
_G.FlySpeed,
0)
setFlyMoving(math.abs(fwd)
>
0.05
or
math.abs(rgt)
>
0.05
or
vertical
~=
0)
 
flyBV.Velocity
=
flyBV.Velocity:Lerp(targetVel,
math.clamp(dt
*
12,
0,
1))
 
local
tiltTarget
=
math.rad(_G.FlyTilt)
*
math.clamp(fwd,
0,
1)
flyTilt
=
flyTilt
+
(tiltTarget
-
flyTilt)
*
math.clamp(dt
*
8,
0,
1)
flyBG.CFrame
=
CFrame.lookAt(hrp.Position,
hrp.Position
+
flatLook)
*
CFrame.Angles(-flyTilt,
0,
0)
end)
playFlyPose()
end
MovementTab:CreateToggle({
Name
=
"Fly Hack",
CurrentValue
=
false,
Callback
=
function(state)
_G.FlyEnabled
=
state
if
state
then
startFly()
else
stopFly()
end
end,
})
 
LocalPlayer.CharacterAdded:Connect(function(char)
if
not
_G.FlyEnabled
then
return
end
char:WaitForChild("HumanoidRootPart")
char:WaitForChild("Humanoid")
task.wait(0.5)
if
_G.FlyEnabled
then
startFly()
end
end)
local
flySpeedSlider
=
MovementTab:CreateSlider({
Name
=
"Fly Speed",
Range
=
{1,
300},
Increment
=
1,
CurrentValue
=
50,
Callback
=
function(v)
_G.FlySpeed
=
v
end,
})
MovementTab:CreateInput({
Name
=
"Type Fly Speed",
CurrentValue
=
"",
PlaceholderText
=
"1-300 (press Enter)",
RemoveTextAfterFocusLost
=
false,
Flag
=
"Move_TypeFlySpeed",
Callback
=
function(text)
local
number
=
tonumber(text)
if
not
number
or
number
~=
number
or
number
==
math.huge
or
number
==
-math.huge
then
return
end
flySpeedSlider:Set(math.clamp(math.floor(number
+
0.5),
1,
300))
end,
})
MovementTab:CreateDropdown({
Name
=
"Fly Pose",
Options
=
{"None (T-Pose)",
"Float",
"Swim",
"Run",
"Walk",
"Fall",
"Jump",
"Sit",
"Custom ID"},
CurrentOption
=
{"Float"},
MultipleOptions
=
false,
Callback
=
function(option)
flyPoseName
=
type(option)
==
"table"
and
option[1]
or
option
if
_G.FlyEnabled
then
playFlyPose()
end
end,
})
MovementTab:CreateSlider({
Name
=
"Fly Tilt",
Range
=
{0,
90},
Increment
=
5,
CurrentValue
=
0,
Callback
=
function(v)
_G.FlyTilt
=
v
end,
})
MovementTab:CreateInput({
Name
=
"Custom Pose ID",
PlaceholderText
=
"Animation asset ID",
RemoveTextAfterFocusLost
=
false,
Callback
=
function(text)
flyCustomPoseId
=
text:match("%d+")
or
""
if
_G.FlyEnabled
and
flyPoseName
==
"Custom ID"
then
playFlyPose()
end
end,
})
MovementTab:CreateDropdown({
Name
=
"Fly Move Animation",
Options
=
{"None",
"Swim",
"Run",
"Walk",
"Fall",
"Jump",
"Float",
"Sit",
"Custom ID"},
CurrentOption
=
{"Swim"},
MultipleOptions
=
false,
Callback
=
function(option)
flyMoveName
=
type(option)
==
"table"
and
option[1]
or
option
if
_G.FlyEnabled
then
playFlyPose()
end
end,
})
MovementTab:CreateInput({
Name
=
"Custom Move ID",
PlaceholderText
=
"Animation asset ID",
RemoveTextAfterFocusLost
=
false,
Callback
=
function(text)
flyCustomMoveId
=
text:match("%d+")
or
""
if
_G.FlyEnabled
and
flyMoveName
==
"Custom ID"
then
playFlyPose()
end
end,
})
 
local
walkAnimName
=
"None"
local
walkCustomId
=
""
local
walkAnimSpeed
=
1
local
walkTrack
=
nil
local
function
refreshWalkTrack()
destroyTrack(walkTrack)
walkTrack
=
nil
if
walkAnimName
==
"None"
then
return
end
local
char
=
LocalPlayer.Character
local
hum
=
char
and
char:FindFirstChildOfClass("Humanoid")
if
not
hum
then
return
end
walkTrack
=
loadFlyTrack(hum,
walkAnimName,
walkCustomId)
end
RunService.Heartbeat:Connect(function()
if
not
walkTrack
then
return
end
local
char
=
LocalPlayer.Character
local
hum
=
char
and
char:FindFirstChildOfClass("Humanoid")
if
not
hum
then
return
end
 
local
walking
=
not
_G.FlyEnabled
and
hum.Health
>
0
and
not
hum.Sit
and
hum.FloorMaterial
~=
Enum.Material.Air
and
hum.MoveDirection.Magnitude
>
0.1
if
walking
then
walkTrack:AdjustSpeed(walkAnimSpeed
*
math.clamp(hum.WalkSpeed
/
16,
0.5,
3))
if
not
walkTrack.IsPlaying
then
walkTrack:Play(0.15)
end
elseif
walkTrack.IsPlaying
then
walkTrack:Stop(0.15)
end
end)
 
LocalPlayer.CharacterAdded:Connect(function(char)
walkTrack
=
nil
char:WaitForChild("Humanoid")
task.wait(0.5)
refreshWalkTrack()
end)
MovementTab:CreateDropdown({
Name
=
"Walk Animation",
Options
=
{"None",
"Walk",
"Run",
"Swim",
"Float",
"Fall",
"Jump",
"Sit",
"Climb",
"Dance 1",
"Dance 2",
"Dance 3",
"Custom ID"},
CurrentOption
=
{"None"},
MultipleOptions
=
false,
Callback
=
function(option)
walkAnimName
=
type(option)
==
"table"
and
option[1]
or
option
refreshWalkTrack()
end,
})
MovementTab:CreateSlider({
Name
=
"Walk Animation Speed",
Range
=
{0.1,
5},
Increment
=
0.1,
CurrentValue
=
1,
Callback
=
function(v)
walkAnimSpeed
=
v
end,
})
MovementTab:CreateInput({
Name
=
"Custom Walk ID",
PlaceholderText
=
"Animation asset ID",
RemoveTextAfterFocusLost
=
false,
Callback
=
function(text)
walkCustomId
=
text:match("%d+")
or
""
if
walkAnimName
==
"Custom ID"
then
refreshWalkTrack()
end
end,
})
 
local
clickTpOn
=
false
local
touchStarts
=
{}
local
function
clickTeleport(screenPos)
local
char
=
LocalPlayer.Character
local
hrp
=
char
and
char:FindFirstChild("HumanoidRootPart")
if
not
hrp
then
return
end
local
ray
=
Camera:ScreenPointToRay(screenPos.X,
screenPos.Y)
local
params
=
RaycastParams.new()
params.FilterType
=
Enum.RaycastFilterType.Exclude
params.FilterDescendantsInstances
=
{char}
local
result
=
workspace:Raycast(ray.Origin,
ray.Direction
*
5000,
params)
if
result
then
hrp.CFrame
=
CFrame.new(result.Position
+
Vector3.new(0,
3,
0))
*
hrp.CFrame.Rotation
end
end
UserInputService.InputBegan:Connect(function(input,
processed)
if
not
clickTpOn
or
processed
then
return
end
if
input.UserInputType
==
Enum.UserInputType.MouseButton1
then
clickTeleport(input.Position)
elseif
input.UserInputType
==
Enum.UserInputType.Touch
then
touchStarts[input]
=
{
pos
=
input.Position,
time
=
os.clock()
}
end
end)
 
UserInputService.InputEnded:Connect(function(input)
local
start
=
touchStarts[input]
if
not
start
then
return
end
touchStarts[input]
=
nil
if
not
clickTpOn
then
return
end
if
(input.Position
-
start.pos).Magnitude
<
12
and
os.clock()
-
start.time
<
0.35
then
clickTeleport(input.Position)
end
end)
MovementTab:CreateToggle({
Name
=
"Click TP",
CurrentValue
=
false,
Callback
=
function(state)
clickTpOn
=
state
if
not
state
then
touchStarts
=
{}
end
end,
})
 
 
 
CombatTab:CreateToggle({
Name
=
"Aimbot (Camera Lock)",
CurrentValue
=
false,
Callback
=
function(state)
_G.AimbotEnabled
=
state
end,
})
CombatTab:CreateDropdown({
Name
=
"Aim Part",
Options
=
{"Head",
"Body"},
CurrentOption
=
"Head",
Callback
=
function(option)
_G.AimPart
=
type(option)
==
"table"
and
option[1]
or
option
end,
})
CombatTab:CreateSlider({
Name
=
"Aimbot Smoothness",
Range
=
{1,
100},
Increment
=
1,
CurrentValue
=
1,
Callback
=
function(v)
_G.AimbotSmoothness
=
v
end,
})
CombatTab:CreateToggle({
Name
=
"Aimbot Team Check",
CurrentValue
=
true,
Callback
=
function(state)
_G.AimbotTeamCheck
=
state
end,
})
CombatTab:CreateToggle({
Name
=
"Player Lock (Body Rotate)",
CurrentValue
=
false,
Callback
=
function(state)
_G.PlayerLock
=
state
end,
})
CombatTab:CreateToggle({
Name
=
"Spinbot",
CurrentValue
=
false,
Callback
=
function(state)
_G.Spinbot
=
state
end,
})
CombatTab:CreateSlider({
Name
=
"Spin Speed",
Range
=
{1,
500},
Increment
=
1,
CurrentValue
=
50,
Callback
=
function(v)
_G.SpinSpeed
=
v
end,
})
CombatTab:CreateToggle({
Name
=
"God Mode · 로컬 체력 고정 (서버 무적 아님)",
CurrentValue
=
false,
Callback
=
function(state)
_G.GodMode
=
state
end,
})
CombatTab:CreateToggle({
Name
=
"Touch Fling",
CurrentValue
=
false,
Callback
=
function(state)
_G.TouchFling
=
state
end,
})
CombatTab:CreateToggle({
Name
=
"Auto Attack (Nearby Player + Tool)",
Flag
=
"Combat_AutoClicker",
CurrentValue
=
false,
Callback
=
function(state)
_G.AutoClicker
=
state
end,
})
 
 
 
do
if
type(_G.KoreanHubHandleCleanup)=="function"
then
pcall(_G.KoreanHubHandleCleanup)
end
local
enabled,size=false,30
local
current,snapshot,box=nil,nil,nil
local
colors={Color3.fromRGB(255,0,0),Color3.fromRGB(0,255,0),Color3.fromRGB(0,0,255),Color3.fromRGB(255,255,0)}
local
function
restore()
if
box
then
box:Destroy();box=nil
end
if
current
and
snapshot
then
pcall(function()
current.Size=snapshot.Size
current.Transparency=snapshot.Transparency
current.Massless=snapshot.Massless
end)
end
current,snapshot=nil,nil
end
local
function
apply()
local
char=LocalPlayer.Character
local
tool=char
and
char:FindFirstChildOfClass("Tool")
local
handle=tool
and
tool:FindFirstChild("Handle")
if
not
enabled
or
not
handle
or
not
handle:IsA("BasePart")
then
restore();return
end
if
current~=handle
then
restore()
current=handle
snapshot={Size=handle.Size,Transparency=handle.Transparency,Massless=handle.Massless}
box=Instance.new("SelectionBox")
box.Name="KoreanHubHandleOutline";box.Adornee=handle;box.LineThickness=0.025;box.Parent=handle
end
handle.Massless=true;handle.Transparency=1;handle.Size=Vector3.new(size,size,size)
if
box
then
box.Color3=colors[math.floor(os.clock()*2)%#colors+1]
end
end
CombatTab:CreateSection("툴 Handle 크기 조절")
CombatTab:CreateParagraph({Title="Handle 확대 · 실험 기능",Content="보내준 스크립트의 Handle 크기 조절입니다. 실제 타격 거리 증가는 보장되지 않습니다. 끄거나 장착을 해제하면 원래 크기·투명도·질량 설정으로 복구합니다."})
local
function
setEnabled(v)
enabled=v;apply()
end
CombatTab:CreateToggle({Name="툴 Handle 확대",Flag="Combat_HandleResizeEnabled",CurrentValue=false,Callback=setEnabled})
CombatTab:CreateSlider({Name="Handle 크기",Flag="Combat_HandleResizeSize",Range={1,100},Increment=1,CurrentValue=30,
Callback=function(v)
size=v;apply()
end})
local
function
change(delta)
size=math.clamp(size+delta,1,100)
local
slider=Rayfield.Flags
and
Rayfield.Flags.Combat_HandleResizeSize
if
slider
then
slider:Set(size)
end
enabled=true
local
toggle=Rayfield.Flags
and
Rayfield.Flags.Combat_HandleResizeEnabled
if
toggle
then
toggle:Set(true)
end
apply()
notify("툴 Handle 크기 조절","크기: "..size.." · 장착한 툴에 적용")
end
CombatTab:CreateButton({Name="Handle 크기 +5",Callback=function()
change(5)
end})
CombatTab:CreateButton({Name="Handle 크기 -5",Callback=function()
change(-5)
end})
CombatTab:CreateButton({Name="Handle 원래대로 복구",Callback=function()
enabled=false;restore()
local
toggle=Rayfield.Flags
and
Rayfield.Flags.Combat_HandleResizeEnabled
if
toggle
then
toggle:Set(false)
end
end})
local
elapsed=0
local
connection=RunService.Heartbeat:Connect(function(dt)
elapsed=elapsed+dt
if
elapsed<0.1
then
return
end
elapsed=0
local
ok,err=pcall(apply)
if
not
ok
then
enabled=false;restore();warn("KoreanHub Handle: "..tostring(err))
end
end)
_G.KoreanHubHandleReset=function()
enabled=false;restore()
local
toggle=Rayfield.Flags
and
Rayfield.Flags.Combat_HandleResizeEnabled
if
toggle
then
toggle:Set(false)
end
end
_G.KoreanHubHandleCleanup=function()
connection:Disconnect();enabled=false;restore()
end
end
do
if
type(_G.KoreanHubCombatCoreCleanup)
==
"function"
then
_G.KoreanHubCombatCoreCleanup()
end
if
_G.KoreanHubAutoClickConnection
then
_G.KoreanHubAutoClickConnection:Disconnect()
end
local
settings
=
{
Reach
=
false,
ReachDistance
=
8,
ToolHitbox
=
false,
ToolScale
=
2,
Touch
=
true,
TouchRange
=
8,
Replay
=
true,
ReplayInterval
=
0.3,
TpHit
=
false,
AllBodyParts
=
false,
TeamCheck
=
true,
QuerySafe
=
false,
Radius
=
12,
Interval
=
0.3,
Hold
=
0.15,
}
local
backups,
connections
=
{},
{}
local
stateLabel,
lastState
local
function
report(text)
if
text==lastState
then
return
end
lastState=text
if
stateLabel
then
pcall(function()
stateLabel:Set(text)
end)
end
end
local
activeTool,
activeOwner,
releaseAt,
lastAttack
=
nil,
nil,
0,
-math.huge
local
function
release(owner)
if
owner
and
activeOwner
~=
owner
then
return
end
if
activeTool
then
pcall(function()
activeTool:Deactivate()
end)
end
activeTool,
activeOwner,
releaseAt
=
nil,
nil,
0
end
local
function
restore(part)
local
saved
=
backups[part]
if
not
saved
then
return
end
if
part.Parent
then
pcall(function()
part.Size
=
saved.Size
if
not
saved.ToolPart
then
part.Transparency
=
saved.Transparency
part.CanCollide
=
saved.CanCollide
part.CanQuery
=
saved.CanQuery
part.Massless
=
saved.Massless
end
end)
end
backups[part]
=
nil
end
local
function
restoreAll()
for
part
in
pairs(backups)
do
restore(part)
end
end
local
function
remember(part,
toolPart)
if
not
backups[part]
then
backups[part]
=
{Size
=
part.Size,
Transparency
=
part.Transparency,
CanCollide
=
part.CanCollide,
CanQuery
=
part.CanQuery,
Massless
=
part.Massless,
ToolPart
=
toolPart
==
true}
end
return
backups[part]
end
local
function
sameTeam(other)
return
settings.TeamCheck
and
other.Team
~=
nil
and
other.Team
==
LocalPlayer.Team
and
not
other.Neutral
and
not
LocalPlayer.Neutral
end
local
function
weaponPart(part)
if
not
part:IsA("BasePart")
or
part.Name:lower()=="handle"
then
return
false
end
 
 
if
part.CanCollide
or
part.Anchored
then
return
false
end
local
name=part.Name:lower():gsub("[%s_]",
"")
for
_,hint
in
ipairs({"hitbox",
"hurtbox",
"damagebox",
"attackbox",
"damagepart",
"타격판정",
"판정부품"})
do
if
name:find(hint,1,true)
then
return
true
end
end
return
false
end
local
function
equippedReady(tool)
if
not
tool
or
not
tool:IsA("Tool")
then
return
false
end
local
character
=
LocalPlayer.Character
local
humanoid
=
character
and
character:FindFirstChildOfClass("Humanoid")
if
not
character
or
not
humanoid
or
humanoid.Health
<=
0
or
not
tool
or
tool.Parent
~=
character
or
not
tool.Enabled
then
return
false
end
local
handle
=
tool:FindFirstChild("Handle")
return
not
tool.RequiresHandle
or
(handle
and
handle:IsA("BasePart"))
end
 
 
 
local
touchStats
=
{touches
=
0,
bursts
=
0,
failures=0,
reason="장착 후 휘두르기 대기",
lastError=nil}
local
TOUCH_PARTS
=
{"HumanoidRootPart",
"Head"}
local
burst
=
{running
=
false,
untilAt
=
0,
tool
=
nil,
range
=
0}
local
lastSelfActivate,
watchedTool,
watchedConnection
=
-math.huge,
nil,
nil
local
function
toolHandle(tool)
return
tool
and
(tool:FindFirstChild("Handle")
or
tool:FindFirstChildWhichIsA("BasePart",
true))
end
local
function
sendTouch(handle,
part)
if
type(firetouchinterest)~="function"
then
touchStats.reason="firetouchinterest 미지원 · Handle 이동 대체 제거"
return
false
end
local
ok,err=pcall(function()
firetouchinterest(handle,part,0)
firetouchinterest(handle,part,1)
end)
if
not
ok
then
touchStats.failures=touchStats.failures+1;touchStats.lastError=tostring(err):sub(1,100)
end
return
ok
end
 
 
 
local
hitRecord
=
{recording
=
false,
calls
=
{},
template
=
nil,
replays
=
0,
replayFailures
=
0,
lastReplay
=
{},
report
=
"기록 없음",
label
=
nil,
generation=0}
if
_G.KoreanHubHitActive
then
_G.KoreanHubHitActive.recording=false
end
_G.KoreanHubHitActiveV2
=
hitRecord
local
function
describeValue(value,
depth)
local
kind
=
typeof(value)
if
kind
==
"string"
then
return
'"'..value:sub(1,
24)..'"'
end
if
kind
==
"Instance"
then
return
value.ClassName..":"..value.Name
end
if
kind
==
"Vector3"
then
return
string.format("V3(%.0f,%.0f,%.0f)",
value.X,
value.Y,
value.Z)
end
if
kind
==
"table"
then
if
depth
>=
2
then
return
"{..}"
end
local
parts,
count
=
{},
0
for
key,
item
in
pairs(value)
do
count
=
count
+
1
if
count
>
5
then
table.insert(parts,
"..");break
end
table.insert(parts,
tostring(key).."="..describeValue(item,
depth
+
1))
end
return
"{"..table.concat(parts,
",").."}"
end
return
tostring(value):sub(1,
24)
end
local
function
describeCall(call)
local
parts
=
{}
for
position
=
1,
math.min(call.args.n,
5)
do
parts[position]
=
describeValue(call.args[position],
0)
end
return
call.remote.Name.."("..table.concat(parts,
", ")..")"
end
local
function
copyValue(value,
depth)
if
type(value)
~=
"table"
or
depth
>
4
then
return
value
end
local
result
=
{}
for
key,
item
in
pairs(value)
do
result[key]
=
copyValue(item,
depth
+
1)
end
return
result
end
local
function
installHitHook()
if
_G.KoreanHubHitHookInstalledV2
then
return
true
end
if
type(hookmetamethod)~="function"
or
type(getnamecallmethod)~="function"
then
return
false
end
local
wrap=newcclosure
or
function(fn)
return
fn
end
local
original
original=hookmetamethod(game,"__namecall",wrap(function(self,...)
local
active=_G.KoreanHubHitActiveV2
local
method=getnamecallmethod()
if
not
active
or
not
active.recording
or
(method~="FireServer"
and
method~="InvokeServer")
then
return
original(self,...)
end
local
args=table.pack(...)
 
local
results=table.pack(original(self,...))
pcall(function()
local
generation=active.generation
task.defer(function()
pcall(function()
if
_G.KoreanHubHitActiveV2~=active
or
not
active.recording
or
generation~=active.generation
then
return
end
if
typeof(self)~="Instance"
or
not
(self:IsA("RemoteEvent")
or
self:IsA("RemoteFunction"))
then
return
end
local
snap={}
for
_,other
in
ipairs(Players:GetPlayers())
do
local
model=other.Character
local
root=model
and
model:FindFirstChild("HumanoidRootPart")
if
root
then
snap[other]=root.CFrame
end
end
table.insert(active.calls,{remote=self,method=method,args=args,snap=snap,time=os.clock()})
if
#active.calls>40
then
table.remove(active.calls,1)
end
end)
end)
end)
return
table.unpack(results,1,results.n)
end))
_G.KoreanHubHitHookInstalledV2=true
return
true
end
local
function
ownerOf(instance)
for
_,
other
in
ipairs(Players:GetPlayers())
do
local
model
=
other.Character
if
other
~=
LocalPlayer
and
model
and
(instance
==
model
or
instance:IsDescendantOf(model))
then
return
other
end
end
end
local
function
findVictim(value,
depth)
if
typeof(value)
==
"Instance"
then
if
value:IsA("Player")
then
return
value
~=
LocalPlayer
and
value
or
nil
end
return
ownerOf(value)
elseif
type(value)
==
"table"
and
depth
<
3
then
for
_,
item
in
pairs(value)
do
local
found
=
findVictim(item,
depth
+
1)
if
found
then
return
found
end
end
end
end
local
function
pathBetween(model,
instance)
local
path,
node
=
{},
instance
while
node
and
node
~=
model
do
table.insert(path,
1,
node.Name);node
=
node.Parent
end
return
path
end
local
function
buildSlots(value,
path,
victim,
rootCF,
slots,
depth)
local
kind
=
typeof(value)
local
model
=
victim.Character
if
kind
==
"Instance"
then
if
value
==
victim
then
table.insert(slots,
{path
=
path,
kind
=
"player"})
elseif
model
and
value
==
model
then
table.insert(slots,
{path
=
path,
kind
=
"model"})
elseif
model
and
value:IsDescendantOf(model)
then
table.insert(slots,
{path
=
path,
kind
=
"part",
rel
=
pathBetween(model,
value)})
end
elseif
kind
==
"string"
then
if
value
==
victim.Name
then
table.insert(slots,
{path
=
path,
kind
=
"name"})
elseif
value
==
victim.DisplayName
then
table.insert(slots,
{path
=
path,
kind
=
"display"})
end
elseif
kind
==
"number"
then
if
value
==
victim.UserId
then
table.insert(slots,
{path
=
path,
kind
=
"userid"})
end
elseif
kind
==
"Vector3"
and
rootCF
then
if
(value
-
rootCF.Position).Magnitude
<=
10
then
table.insert(slots,
{path
=
path,
kind
=
"vector",
offset
=
value
-
rootCF.Position})
end
elseif
kind
==
"CFrame"
and
rootCF
then
if
(value.Position
-
rootCF.Position).Magnitude
<=
10
then
table.insert(slots,
{path
=
path,
kind
=
"cframe",
offset
=
rootCF:ToObjectSpace(value)})
end
elseif
kind
==
"table"
and
depth
<
3
then
for
key,
item
in
pairs(value)
do
local
nextPath
=
{table.unpack(path)}
table.insert(nextPath,
key)
buildSlots(item,
nextPath,
victim,
rootCF,
slots,
depth
+
1)
end
end
end
local
function
callVictim(call)
for
position
=
1,
call.args.n
do
local
victim
=
findVictim(call.args[position],
0)
if
victim
then
return
victim
end
end
end
local
function
setHitLabel(text)
hitRecord.report
=
text
if
hitRecord.label
then
pcall(function()
hitRecord.label:Set(text:sub(1,
200))
end)
end
end
local
function
finishHitRecording()
hitRecord.recording
=
false
local
lines,
pick
=
{},
nil
for
position
=
#hitRecord.calls,
1,
-1
do
local
call
=
hitRecord.calls[position]
local
victim
=
callVictim(call)
if
victim
and
not
pick
then
local
slots
=
{}
for
argPosition
=
1,
call.args.n
do
buildSlots(call.args[argPosition],
{argPosition},
victim,
call.snap[victim],
slots,
0)
end
if
#slots
>
0
then
pick
=
{call
=
call,
victim
=
victim,
slots
=
slots}
end
end
end
for
position,
call
in
ipairs(hitRecord.calls)
do
table.insert(lines,
string.format("%d. %s %s%s",
position,
call.method,
describeCall(call),
(pick
and
pick.call
==
call)
and
"   <- 사용"
or
""))
end
if
not
pick
then
hitRecord.calls
=
{}
hitRecord.template=nil
local
primary=false
for
_,line
in
ipairs(lines)
do
if
line:find('"Primary"',1,true)
then
primary=true;break
end
end
setHitLabel(primary
and
"공격 요청 Primary 관측 · 상대 정보 없음: 대상 교체 재생 불가"
or
("원격 호출 "..#lines.."건 관측 · 상대 정보가 든 호출 미확인"))
hitRecord.fullReport
=
"기록된 원격 호출 "..#lines.."건\n"..table.concat(lines,
"\n")
return
false
end
hitRecord.template
=
{remote
=
pick.call.remote,
method
=
pick.call.method,
args
=
copyValue(pick.call.args,
0),
slots
=
pick.slots}
hitRecord.template.args.n
=
pick.call.args.n
hitRecord.fullReport
=
"사용한 호출: "..describeCall(pick.call).."\n슬롯 "..#pick.slots.."개\n"..table.concat(lines,
"\n")
hitRecord.calls
=
{}
setHitLabel("히트 기록 완료 · "..hitRecord.template.remote.Name.." · 슬롯 "..#pick.slots.."개")
return
true
end
local
function
replayHit(target)
local
template
=
hitRecord.template
if
not
template
or
not
template.remote.Parent
then
return
false
end
local
model
=
target.Character
local
root
=
model
and
model:FindFirstChild("HumanoidRootPart")
if
not
model
or
not
root
then
return
false
end
local
args
=
copyValue(template.args,
0)
for
_,
slot
in
ipairs(template.slots)
do
local
replacement
if
slot.kind
==
"player"
then
replacement
=
target
elseif
slot.kind
==
"model"
then
replacement
=
model
elseif
slot.kind
==
"part"
then
local
node
=
model
for
_,
name
in
ipairs(slot.rel)
do
node
=
node
and
node:FindFirstChild(name)
end
replacement
=
node
elseif
slot.kind
==
"name"
then
replacement
=
target.Name
elseif
slot.kind
==
"display"
then
replacement
=
target.DisplayName
elseif
slot.kind
==
"userid"
then
replacement
=
target.UserId
elseif
slot.kind
==
"vector"
then
replacement
=
root.Position
+
slot.offset
elseif
slot.kind
==
"cframe"
then
replacement
=
root.CFrame
*
slot.offset
end
if
replacement
==
nil
then
return
false
end
local
node
=
args
for
position
=
1,
#slot.path
-
1
do
node
=
node[slot.path[position]]
end
node[slot.path[#slot.path]]
=
replacement
end
local
ok
=
pcall(function()
if
template.method
==
"InvokeServer"
then
task.spawn(function()
template.remote:InvokeServer(table.unpack(args,
1,
args.n))
end)
else
template.remote:FireServer(table.unpack(args,
1,
args.n))
end
end)
if
ok
then
hitRecord.replays
=
hitRecord.replays
+
1
else
hitRecord.replayFailures
=
hitRecord.replayFailures
+
1
end
return
ok
end
local
function
startBurst(tool,
range,
duration)
local
canTouch
=
settings.Touch
and
type(firetouchinterest)
==
"function"
local
canReplay
=
settings.Replay
and
hitRecord.template
~=
nil
if
not
range
or
range
<=
0
then
touchStats.reason
=
"보조 범위 없음";return
end
if
not
canTouch
and
not
canReplay
and
not
settings.TpHit
then
touchStats.reason
=
settings.Touch
and
"firetouchinterest 미지원"
or
"터치·히트 재생 모두 꺼짐"
return
end
burst.tool
=
tool
burst.range
=
math.max(range,
burst.running
and
burst.range
or
0)
burst.untilAt
=
os.clock()
+
duration
touchStats.bursts
=
touchStats.bursts
+
1
if
burst.running
then
return
end
burst.running
=
true
task.spawn(function()
local
origin
while
os.clock()
<
burst.untilAt
do
local
character
=
LocalPlayer.Character
local
root
=
character
and
character:FindFirstChild("HumanoidRootPart")
local
handle
=
toolHandle(burst.tool)
if
not
root
or
not
handle
or
not
handle.Parent
or
burst.tool.Parent
~=
character
then
break
end
local
params
=
RaycastParams.new()
params.FilterType
=
Enum.RaycastFilterType.Exclude;params.FilterDescendantsInstances
=
{character}
local
from
=
origin
and
origin.Position
or
root.Position
local
nearest,
nearestDistance
=
nil,
math.huge
touchStats.reason
=
"범위 안의 살아 있는 적 대기"
for
_,
other
in
ipairs(Players:GetPlayers())
do
local
model
=
other.Character
if
other
~=
LocalPlayer
and
model
and
not
sameTeam(other)
then
local
targetHumanoid
=
model:FindFirstChildOfClass("Humanoid")
local
targetRoot
=
model:FindFirstChild("HumanoidRootPart")
local
distance
=
targetRoot
and
(targetRoot.Position
-
from).Magnitude
or
math.huge
if
targetHumanoid
and
targetHumanoid.Health
>
0
and
distance
<=
burst.range
then
if
distance
<
nearestDistance
then
nearest,
nearestDistance
=
other,
distance
end
if
canTouch
then
local
obstruction
=
workspace:Raycast(root.Position,
targetRoot.Position
-
root.Position,
params)
if
obstruction
and
not
obstruction.Instance:IsDescendantOf(model)
then
touchStats.reason
=
"벽에 가려진 상대는 터치 제외"
else
for
_,
name
in
ipairs(TOUCH_PARTS)
do
local
part
=
model:FindFirstChild(name)
if
part
and
part:IsA("BasePart")
and
sendTouch(handle,
part)
then
touchStats.touches
=
touchStats.touches
+
1
touchStats.reason
=
"터치 호출 완료 · 서버 명중 미확인"
end
end
end
end
if
canReplay
and
os.clock()
-
(hitRecord.lastReplay[other]
or
-math.huge)
>=
settings.ReplayInterval
then
if
replayHit(other)
then
hitRecord.lastReplay[other]
=
os.clock()
touchStats.reason
=
"기록한 히트 재생 · 서버 명중 미확인"
end
end
end
end
end
if
settings.TpHit
and
nearest
then
local
targetRoot
=
nearest.Character
and
nearest.Character:FindFirstChild("HumanoidRootPart")
if
targetRoot
then
origin
=
origin
or
root.CFrame
pcall(function()
root.CFrame
=
targetRoot.CFrame
*
CFrame.new(0,
0,
3)
end)
end
end
task.wait(0.05)
end
if
origin
then
local
character
=
LocalPlayer.Character
local
root
=
character
and
character:FindFirstChild("HumanoidRootPart")
if
root
then
pcall(function()
root.CFrame
=
origin
end)
end
end
burst.running
=
false
end)
end
 
local
function
assistRange()
local
range=settings.TouchRange
if
settings.Reach
then
range
=
settings.ReachDistance
end
if
settings.ToolHitbox
then
range
=
math.max(range
or
0,
6
*
settings.ToolScale)
end
if
_G.HitboxExpander
then
range
=
math.max(range
or
0,
tonumber(_G.HitboxSize)
or
0)
end
return
range
end
local
function
watchTool(tool)
if
tool
==
watchedTool
then
return
end
if
watchedConnection
then
watchedConnection:Disconnect();
watchedConnection
=
nil
end
watchedTool
=
tool
if
tool
and
tool:IsA("Tool")
then
watchedConnection
=
tool.Activated:Connect(function()
if
os.clock()
-
lastSelfActivate
<
0.15
then
return
end
startBurst(tool,
assistRange(),
0.35)
end)
end
end
local
function
activate(tool,
interval,
hold,
owner,
range)
local
now
=
os.clock()
if
not
equippedReady(tool)
or
now
-
lastAttack
<
interval
then
return
false
end
if
activeTool
and
now
<
releaseAt
then
return
false
end
release()
lastSelfActivate
=
now
local
ok
=
pcall(function()
tool:Activate()
end)
if
not
ok
then
return
false
end
activeTool,
activeOwner
=
tool,
owner
or
"auto"
lastAttack,
releaseAt
=
now,
now
+
hold
startBurst(tool,range
or
assistRange(),math.max(hold,0.2))
return
true
end
_G.KoreanHubCombatTryActivate
=
activate
_G.KoreanHubCombatRelease
=
release
 
 
 
 
local
tpAura
=
{enabled
=
false,
alive
=
true,
range
=
40,
interval
=
0.6,
lead
=
0.08,
stay
=
0.25,
strikes
=
0,
reason
=
"꺼짐"}
local
function
nearestEnemy(from,
range)
local
best,
bestDistance
=
nil,
math.huge
for
_,
other
in
ipairs(Players:GetPlayers())
do
local
model
=
other.Character
if
other
~=
LocalPlayer
and
model
and
not
sameTeam(other)
then
local
humanoid
=
model:FindFirstChildOfClass("Humanoid")
local
targetRoot
=
model:FindFirstChild("HumanoidRootPart")
if
humanoid
and
humanoid.Health
>
0
and
targetRoot
then
local
distance
=
(targetRoot.Position
-
from).Magnitude
if
distance
<=
range
and
distance
<
bestDistance
then
best,
bestDistance
=
other,
distance
end
end
end
end
return
best
end
local
function
standBehind(root,
targetRoot)
local
look
=
targetRoot.CFrame.LookVector
local
flat
=
Vector3.new(look.X,
0,
look.Z)
if
flat.Magnitude
<
0.01
then
flat
=
Vector3.new(0,
0,
-1)
end
local
position
=
targetRoot.Position
-
flat.Unit
*
3
root.CFrame
=
CFrame.lookAt(position,
Vector3.new(targetRoot.Position.X,
position.Y,
targetRoot.Position.Z))
root.AssemblyLinearVelocity
=
Vector3.new(0,
0,
0)
end
local
function
tpStrikeOnce()
local
character
=
LocalPlayer.Character
local
root
=
character
and
character:FindFirstChild("HumanoidRootPart")
local
humanoid
=
character
and
character:FindFirstChildOfClass("Humanoid")
local
tool
=
WeaponCompat.equipped(character)
if
not
root
or
not
humanoid
or
humanoid.Health
<=
0
then
tpAura.reason
=
"캐릭터 대기";return
end
if
not
tool
or
not
equippedReady(tool)
then
tpAura.reason
=
"툴 장착·재사용 대기";return
end
local
target
=
nearestEnemy(root.Position,
tpAura.range)
if
not
target
then
tpAura.reason
=
"범위 안 적 없음";return
end
local
origin
=
root.CFrame
local
function
glue()
local
model
=
target.Character
local
targetRoot
=
model
and
model:FindFirstChild("HumanoidRootPart")
if
not
targetRoot
or
not
root.Parent
then
return
false
end
standBehind(root,
targetRoot)
return
true
end
local
function
goBack()
if
root.Parent
then
pcall(function()
root.CFrame
=
origin;root.AssemblyLinearVelocity
=
Vector3.new(0,
0,
0)
end)
end
end
if
not
glue()
then
return
end
task.wait(tpAura.lead)
if
not
glue()
then
goBack();return
end
if
not
activate(tool,
0,
0.15,
"tpaura")
then
goBack();tpAura.reason
=
"휘두르기 거부 · 툴 재사용 대기";return
end
local
stayUntil
=
os.clock()
+
tpAura.stay
while
os.clock()
<
stayUntil
do
if
not
glue()
then
break
end
task.wait(0.05)
end
goBack()
tpAura.strikes
=
tpAura.strikes
+
1
tpAura.reason
=
"타격 시도 · "..target.Name.." · 서버 명중 미확인"
end
task.spawn(function()
while
tpAura.alive
do
if
tpAura.enabled
then
local
ok,
err
=
pcall(tpStrikeOnce)
if
not
ok
then
tpAura.reason
=
"오류: "..tostring(err):sub(1,
80)
end
task.wait(math.max(tpAura.interval,
0.1))
else
task.wait(0.2)
end
end
end)
CombatTab:CreateSlider({Name
=
"Auto Attack Nearby Range",
Flag
=
"Combat_AutoClickPlayerRange",
Range
=
{3,
50},
Increment
=
1,
CurrentValue
=
12,
Callback
=
function(v)
settings.Radius
=
v
end})
CombatTab:CreateSlider({Name
=
"Auto Attack Interval",
Flag
=
"Combat_NearAttackIntervalV3",
Range
=
{0.05,
2},
Increment
=
0.05,
CurrentValue
=
0.3,
Callback
=
function(v)
settings.Interval
=
v
end})
CombatTab:CreateSlider({Name
=
"Auto Attack Press Duration",
Flag
=
"Combat_AttackPressV3",
Range
=
{0.05,
1},
Increment
=
0.05,
CurrentValue
=
0.15,
Callback
=
function(v)
settings.Hold
=
v
end})
CombatTab:CreateToggle({Name
=
"Combat Team Check",
Flag
=
"Combat_NearTeamV2",
CurrentValue
=
true,
Callback
=
function(v)
settings.TeamCheck
=
v
end})
CombatTab:CreateSection("Reach & Tool Hitbox")
CombatTab:CreateToggle({Name
=
"Tool Reach (터치 범위 · 직접 휘두를 때)",
Flag
=
"Combat_ToolReachV3",
CurrentValue
=
false,
Callback
=
function(v)
settings.Reach
=
v
end})
CombatTab:CreateSlider({Name
=
"Tool Reach Size (studs)",
Flag
=
"Combat_ToolReachSizeV2",
Range
=
{2,
40},
Increment
=
1,
CurrentValue
=
8,
Callback
=
function(v)
settings.ReachDistance
=
v
end})
CombatTab:CreateToggle({Name
=
"Tool Hitbox Expander (터치 범위 ×배율)",
Flag
=
"Combat_ToolHitboxV3",
CurrentValue
=
false,
Callback
=
function(v)
settings.ToolHitbox
=
v
end})
CombatTab:CreateSlider({Name
=
"Tool Hitbox Multiplier",
Flag
=
"Combat_ToolHitboxScaleV2",
Range
=
{1,
10},
Increment
=
0.5,
CurrentValue
=
2,
Callback
=
function(v)
settings.ToolScale
=
v
end})
CombatTab:CreateToggle({Name
=
"터치 판정 보조 (Reach·Hitbox·Aura 공통)",
Flag
=
"Combat_TouchAssistV1",
CurrentValue
=
true,
Callback
=
function(v)
settings.Touch
=
v
end})
CombatTab:CreateSlider({Name="터치 보조 기본 범위",Flag="Combat_TouchBaseRangeV2",Range={2,30},Increment=1,CurrentValue=8,
Callback=function(v)
settings.TouchRange=v
end})
CombatTab:CreateToggle({Name="플레이어 히트박스 · 클릭 간섭 방지 (레이캐스트 총기는 끄세요)",Flag="Combat_HitboxQuerySafeV1",CurrentValue=false,
Callback=function(v)
settings.QuerySafe=v
end})
CombatTab:CreateParagraph({Title="히트박스 호환성",Content="켜면 확대한 파트가 내 클릭·카메라 레이를 막지 않지만, 총알 레이캐스트도 그 부위를 그냥 통과합니다. MM2·MVSD처럼 총알이 레이캐스트인 게임에서는 꺼 두세요. 기본값은 꺼짐입니다. 서버 타격 범위 확대를 보장하지는 않습니다."})
CombatTab:CreateParagraph({Title="히트박스가 멈춤을 일으키던 원인",
Content="확대된 파트가 Massless로 바뀌지 않은 채 커지면 그 캐릭터의 관절 질량 균형이 깨져 그대로 멈춰 보였습니다. 이제 확대하는 동안 Massless를 켜서 이 문제를 없앴고, Player Hitbox는 총기·근접 구분 없이 실제로 파트를 키웁니다. 레이캐스트 총기(MM2·MVSD 등)에서는 위의 \"클릭 간섭 방지\"를 꺼야 총알 레이도 커진 파트에 맞습니다."})
CombatTab:CreateDropdown({Name
=
"Player Hitbox Parts",
Flag
=
"Combat_PlayerPartsV3",
Options
=
{"Body Parts + Root",
"Root Only"},
CurrentOption
=
{"Root Only"},
Callback
=
function(v)
settings.AllBodyParts
=
(type(v)
==
"table"
and
v[1]
or
v)
==
"Body Parts + Root"
end})
CombatTab:CreateParagraph({Title
=
"배트 터치 판정",
Content
=
"이 Bat가 Handle.Touched로 피해를 처리하는지는 아직 미확인입니다. 터치 보조는 호출을 시도할 뿐 서버 피해를 보장하지 않습니다. Reach·Tool Hitbox·Player Hitbox는 직접 휘두를 때, Auto Attack·Kill Aura는 자동으로 휘두를 때 범위 안의 상대에게 Handle 터치를 보냅니다. 상태 줄의 터치 전송 횟수가 늘어나는지 확인하세요. 서버가 거리나 레이캐스트로 따로 검사하는 무기에서는 효과가 없을 수 있습니다."})
CombatTab:CreateSection("실제 히트 기록 · 재생")
CombatTab:CreateParagraph({Title
=
"히트 기록",
Content
=
"30초는 직접 공격한 호출을 관찰하는 시간이며, 무적·사거리 효과가 아닙니다. Action(Primary)처럼 상대 정보 없이 공격만 요청하는 게임은 대상 교체 재생을 만들 수 없습니다. 호출에 상대 정보가 있더라도 피해 판정이라는 증거는 별도로 필요합니다."})
CombatTab:CreateButton({Name
=
"수동 공격 기록 시작 · 30초 관찰",
Callback
=
function()
if
hitRecord.recording
then
notify("공격 기록","이미 기록 중입니다. 종료 또는 취소 후 다시 시작하세요.");return
end
local
ok,result=pcall(installHitHook)
if
not
ok
or
not
result
then
notify("공격 기록","기록 연결 실패: "..tostring(result));return
end
hitRecord.generation=hitRecord.generation+1
local
ticket=hitRecord.generation
hitRecord.calls={};hitRecord.template=nil;hitRecord.fullReport=nil;hitRecord.recording=true
notify("공격 기록","자동 공격·AI를 끄고, 가까운 적을 직접 공격하세요. 기록기는 공격을 막거나 대신 하지 않습니다.")
task.spawn(function()
local
started=os.clock()
while
hitRecord.recording
and
ticket==hitRecord.generation
and
os.clock()-started<30
do
setHitLabel("수동 공격 관찰 · 남은 "..math.ceil(30-(os.clock()-started)).."초 · 호출 "..#hitRecord.calls.."건")
task.wait(0.25)
end
if
not
hitRecord.recording
or
ticket~=hitRecord.generation
then
return
end
local
success=finishHitRecording()
notify("공격 기록",success
and
"호출 후보 관측 · 실제 타격 프로토콜인지는 미확인"
or
hitRecord.report)
end)
end})
CombatTab:CreateButton({Name="공격 기록 취소",Callback=function()
hitRecord.generation=hitRecord.generation+1;hitRecord.recording=false
setHitLabel("기록 취소됨 · 직접 공격은 그대로 사용 가능")
end})
hitRecord.label
=
CombatTab:CreateLabel("히트 기록: 없음")
CombatTab:CreateToggle({Name
=
"기록한 히트 재생 (Aura·Reach 공통)",
Flag
=
"Combat_ReplayHitV1",
CurrentValue
=
true,
Callback
=
function(v)
settings.Replay
=
v
end})
CombatTab:CreateSlider({Name
=
"히트 재생 간격 (초)",
Flag
=
"Combat_ReplayIntervalV1",
Range
=
{0.05,
2},
Increment
=
0.05,
CurrentValue
=
0.3,
Callback
=
function(v)
settings.ReplayInterval
=
v
end})
CombatTab:CreateToggle({Name
=
"TP 타격 오라 (서버가 위치로 판정하는 배트용)",
Flag
=
"Combat_TpAuraV1",
CurrentValue
=
false,
Callback
=
function(v)
tpAura.enabled
=
v;tpAura.reason
=
v
and
"대기"
or
"꺼짐"
end})
CombatTab:CreateSlider({Name
=
"TP 타격 범위 (studs)",
Flag
=
"Combat_TpAuraRangeV1",
Range
=
{5,
150},
Increment
=
5,
CurrentValue
=
40,
Callback
=
function(v)
tpAura.range
=
v
end})
CombatTab:CreateSlider({Name
=
"TP 타격 간격 (초)",
Flag
=
"Combat_TpAuraIntervalV1",
Range
=
{0.2,
3},
Increment
=
0.1,
CurrentValue
=
0.6,
Callback
=
function(v)
tpAura.interval
=
v
end})
CombatTab:CreateSlider({Name
=
"이동 후 휘두르기까지 대기 (초)",
Flag
=
"Combat_TpAuraLeadV1",
Range
=
{0.02,
0.4},
Increment
=
0.02,
CurrentValue
=
0.08,
Callback
=
function(v)
tpAura.lead
=
v
end})
CombatTab:CreateSlider({Name
=
"휘두른 뒤 머무는 시간 (초)",
Flag
=
"Combat_TpAuraStayV1",
Range
=
{0.05,
1},
Increment
=
0.05,
CurrentValue
=
0.25,
Callback
=
function(v)
tpAura.stay
=
v
end})
CombatTab:CreateParagraph({Title
=
"TP 타격 오라",
Content
=
"기록에서 공격 요청이 Primary뿐이고 상대 정보가 없다면, 서버는 두 캐릭터의 실제 위치로 맞았는지 판정합니다. 이 화면에서 키운 히트박스·Reach·Handle 크기는 서버가 보지 못합니다. 이 스위치는 범위 안의 가장 가까운 적 바로 뒤로 이동해 상대를 바라보고 휘두른 뒤 원래 자리로 돌아옵니다. 다른 플레이어 화면에서는 순간이동하는 것으로 보입니다."})
CombatTab:CreateButton({Name
=
"히트 기록 지우기",
Callback
=
function()
hitRecord.generation=hitRecord.generation+1;hitRecord.template
=
nil;hitRecord.calls
=
{};hitRecord.recording
=
false;hitRecord.fullReport
=
nil
setHitLabel("히트 기록: 없음")
end})
CombatTab:CreateButton({Name
=
"히트 기록 보고서 복사",
Callback
=
function()
local
text
=
hitRecord.fullReport
or
hitRecord.report
if
type(setclipboard)
==
"function"
then
pcall(setclipboard,
text);notify("히트 기록",
"보고서를 클립보드에 복사했습니다")
else
print(text);notify("히트 기록",
"클립보드를 지원하지 않아 콘솔에 출력했습니다")
end
end})
 
local
function
toolDiagnostic()
local
lines={"KoreanHub equipment diagnostic 2",
"PlaceId="..tostring(game.PlaceId),
"AutoAttack="..tostring(_G.AutoClicker).." Reach="..tostring(settings.Reach).." ToolHitbox="..tostring(settings.ToolHitbox),
"구조 진단입니다. 서버의 실제 타격 범위는 이 보고서만으로 확정할 수 없습니다."}
local
function
add(v)
lines[#lines+1]=v
end
local
function
read(o,k)
local
ok,v=pcall(function()
return
o[k]
end)
if
not
ok
then
return
"<unavailable>"
end
return
tostring(v):gsub("[\r\n]"," "):sub(1,180)
end
local
function
path(o)
local
ok,v=pcall(function()
return
o:GetFullName()
end)
return
ok
and
v
or
tostring(o)
end
local
function
props(o,keys)
local
out={}
for
_,k
in
ipairs(keys)
do
out[#out+1]=k.."="..read(o,k)
end
add(table.concat(out," | "))
end
local
char=LocalPlayer.Character
local
tool=WeaponCompat.equipped(char)
local
hum=char
and
char:FindFirstChildOfClass("Humanoid")
if
hum
then
props(hum,{"Health","MaxHealth","Sit","PlatformStand"})
end
add("--- Extended equipment structure diagnostic 2 ---")
local
function
inspectRoot(root,title,limit)
add("ROOT "..title.."="..(root
and
path(root)
or
"<missing>"))
if
not
root
then
return
end
local
items=root:GetDescendants()
table.sort(items,function(a,b)
return
path(a)<path(b)
end)
add("descendants="..#items.."; scan limit="..limit)
for
i,o
in
ipairs(items)
do
if
i>limit
then
add("... scan limit reached");break
end
if
o:IsA("Model")
or
o:IsA("Tool")
or
o:IsA("Folder")
or
o:IsA("BasePart")
or
o:IsA("JointInstance")
or
o:IsA("WeldConstraint")
or
o:IsA("Attachment")
or
o:IsA("LuaSourceContainer")
or
o:IsA("RemoteEvent")
or
o:IsA("RemoteFunction")
or
o:IsA("ValueBase")
then
add("["..o.ClassName.."] "..path(o))
if
o:IsA("BasePart")
then
props(o,{"Size","Transparency","CanTouch","CanQuery"})
end
if
o:IsA("JointInstance")
or
o:IsA("WeldConstraint")
then
local
function
linked(k)
local
ok,v=pcall(function()
return
o[k]
end)
return
ok
and
v
and
path(v)
or
"<none>"
end
add("Part0="..linked("Part0").." | Part1="..linked("Part1"))
end
if
o:IsA("Tool")
then
props(o,{"Enabled","RequiresHandle","ManualActivationOnly"})
end
if
o:IsA("ValueBase")
then
props(o,{"Value"})
end
local
good,attrs=pcall(function()
return
o:GetAttributes()
end)
if
good
then
local
keys={};for
k
in
pairs(attrs)
do
keys[#keys+1]=k
end;table.sort(keys)
for
n,k
in
ipairs(keys)
do
if
n>12
then
break
end
add("attribute "..k.."="..tostring(attrs[k]):gsub("[\r\n]"," "):sub(1,120))
end
end
end
end
end
inspectRoot(char,"LocalPlayer.Character",350)
inspectRoot(LocalPlayer:FindFirstChildOfClass("Backpack"),"Backpack",250)
inspectRoot(workspace.CurrentCamera,"CurrentCamera",200)
 
 
add("--- Workspace direct models (maximum 80) ---")
local
models={}
for
_,o
in
ipairs(workspace:GetChildren())
do
if
o:IsA("Model")
or
o:IsA("Folder")
then
models[#models+1]=o
end
end
table.sort(models,function(a,b)
return
a.Name<b.Name
end)
for
i,o
in
ipairs(models)
do
if
i>80
then
add("... model limit reached");break
end
add("["..o.ClassName.."] "..path(o).." | isLocalCharacter="..tostring(o==char))
end
if
not
tool
then
add("일반 Tool 없음. 위 구조와 손의 Part0·Part1 연결을 확인해야 합니다.")
add("구조만 읽었습니다. 공격·원격 호출·스크립트 소스 읽기는 하지 않았습니다.")
return
table.concat(lines,"\n")
end
add("TOOL "..path(tool))
props(tool,{"Enabled","RequiresHandle","ManualActivationOnly","Grip"})
local
objects={tool}
for
_,o
in
ipairs(tool:GetDescendants())
do
objects[#objects+1]=o
end
table.sort(objects,function(a,b)
return
path(a)<path(b)
end)
add("Objects="..#objects.." (maximum 300 listed)")
local
count=0
for
i,o
in
ipairs(objects)
do
if
i>300
then
add("... object limit reached");break
end
add("["..o.ClassName.."] "..path(o))
if
o:IsA("BasePart")
then
props(o,{"Size","Anchored","CanCollide","CanTouch","CanQuery","Massless","Transparency"})
local
reason="name filter did not match"
if
o.Name:lower()=="handle"
then
reason="Handle excluded"
elseif
o.Anchored
then
reason="Anchored excluded"
elseif
o.CanCollide
then
reason="CanCollide excluded"
elseif
weaponPart(o)
then
reason="eligible dedicated hit part";count=count+1
end
add("filter="..reason)
local
saved=backups[o]
if
saved
then
add("Saved original Size="..tostring(saved.Size))
end
elseif
o:IsA("JointInstance")
or
o:IsA("WeldConstraint")
then
props(o,{"Part0","Part1"})
elseif
o:IsA("Attachment")
then
props(o,{"Position","Orientation"})
elseif
o:IsA("LuaSourceContainer")
then
props(o,{"Enabled","RunContext"})
elseif
o:IsA("ValueBase")
then
props(o,{"Value"})
end
local
ok,attrs=pcall(function()
return
o:GetAttributes()
end)
if
ok
then
local
keys={};for
k
in
pairs(attrs)
do
keys[#keys+1]=k
end;table.sort(keys)
for
n,k
in
ipairs(keys)
do
if
n>20
then
add("... attribute limit reached");break
end
add("attribute "..k.."="..tostring(attrs[k]):gsub("[\r\n]"," "):sub(1,180))
end
end
end
add("Dedicated hit parts="..count)
add("Remote/script names are listed only. No source access, remote invocation or attack is performed by diagnostics.")
return
table.concat(lines,"\n")
end
CombatTab:CreateButton({Name="무기 확장 진단 · 보고서 보기",Callback=function()
local
ok,body=pcall(toolDiagnostic)
if
not
ok
then
body="진단 실패: "..tostring(body)
end
print(body)
local
parent=LocalPlayer:FindFirstChildOfClass("PlayerGui")
if
not
parent
then
notify("툴 진단","PlayerGui를 찾지 못했습니다. 콘솔을 확인하세요.");return
end
local
old=parent:FindFirstChild("KoreanHubToolDiagnostic")
if
old
then
old:Destroy()
end
local
gui=Instance.new("ScreenGui")
gui.Name="KoreanHubToolDiagnostic";gui.ResetOnSpawn=false;gui.DisplayOrder=10000;gui.Parent=parent
local
frame=Instance.new("Frame")
frame.Size=UDim2.fromScale(0.88,0.84);frame.Position=UDim2.fromScale(0.06,0.08)
frame.BackgroundColor3=Color3.fromRGB(25,28,32);frame.Parent=gui
local
function
button(text,x,callback)
local
b=Instance.new("TextButton");b.Size=UDim2.new(0.31,0,0,38);b.Position=UDim2.new(x,0,0,4)
b.Text=text;b.TextSize=16;b.BackgroundColor3=Color3.fromRGB(60,67,76);b.TextColor3=Color3.new(1,1,1);b.Parent=frame
b.Activated:Connect(callback)
end
button("복사",0.015,function()
local
copy=setclipboard
or
toclipboard
local
copied=type(copy)=="function"
and
pcall(copy,body)
notify("툴 진단",copied
and
"보고서를 복사했습니다."
or
"복사 기능이 없습니다. 화면이나 저장 파일을 보내주세요.")
end)
button("파일 저장",0.345,function()
local
saved=type(writefile)=="function"
and
pcall(writefile,"KoreanHub_ToolDiagnostic.txt",body)
notify("툴 진단",saved
and
"KoreanHub_ToolDiagnostic.txt 저장 완료"
or
"파일 저장 기능을 사용할 수 없습니다.")
end)
button("닫기",0.675,function()
gui:Destroy()
end)
local
scroll=Instance.new("ScrollingFrame")
scroll.Position=UDim2.new(0,8,0,50);scroll.Size=UDim2.new(1,-16,1,-58)
scroll.BackgroundTransparency=1;scroll.ScrollBarThickness=10;scroll.Parent=frame
local
label=Instance.new("TextLabel")
label.Size=UDim2.new(1,-14,0,0);label.AutomaticSize=Enum.AutomaticSize.Y
label.BackgroundTransparency=1;label.TextColor3=Color3.new(1,1,1);label.TextSize=14
label.Font=Enum.Font.Code;label.TextXAlignment=Enum.TextXAlignment.Left;label.TextYAlignment=Enum.TextYAlignment.Top
label.TextWrapped=true;label.Text=body;label.Parent=scroll
scroll.AutomaticCanvasSize=Enum.AutomaticSize.Y;scroll.CanvasSize=UDim2.new()
end})
stateLabel=CombatTab:CreateLabel("현재 툴: 없음 · 전용 판정 파트: 0")
CombatTab:CreateButton({Name
=
"툴 원복 + 자동 공격 모두 중지",
Callback
=
function()
_G.AutoClicker=false;_G.HitboxExpander=false;settings.Reach=false;settings.ToolHitbox=false
for
_,flag
in
ipairs({"Combat_MobileTrigger","Combat_AutoClicker","Combat_HitboxExpander","Combat_ToolReachV3","Combat_ToolHitboxV3","Combat_NPCKillAura","Combat_PlayerKillAura"})
do
local
control=Rayfield.Flags
and
Rayfield.Flags[flag]
if
control
then
pcall(function()
control:Set(false)
end)
end
end
if
type(_G.KoreanHubHandleReset)=="function"
then
_G.KoreanHubHandleReset()
end
release();restoreAll();report("모든 자동 공격 중지 · 변경한 크기 원복 완료")
end})
local
elapsed
=
0
local
function
update(dt)
local
now
=
os.clock()
local
character
=
LocalPlayer.Character
if
activeTool
and
(now
>=
releaseAt
or
activeTool.Parent
~=
character)
then
release()
end
elapsed
=
elapsed
+
dt
if
elapsed
<
0.05
then
return
end
elapsed
=
0
local
root
=
character
and
character:FindFirstChild("HumanoidRootPart")
local
humanoid
=
character
and
character:FindFirstChildOfClass("Humanoid")
local
alive
=
root
and
humanoid
and
humanoid.Health
>
0
local
tool
=
WeaponCompat.equipped(character)
watchTool(tool)
local
touched,
nearby,
hitCount
=
{},
false,
0
if
alive
then
for
_,other
in
ipairs(Players:GetPlayers())
do
local
model
=
other.Character
if
other
~=
LocalPlayer
and
model
and
not
sameTeam(other)
then
local
targetHumanoid
=
model:FindFirstChildOfClass("Humanoid")
local
targetRoot
=
model:FindFirstChild("HumanoidRootPart")
if
targetHumanoid
and
targetHumanoid.Health
>
0
and
targetRoot
then
if
(targetRoot.Position
-
root.Position).Magnitude
<=
settings.Radius
then
nearby
=
true
end
if
_G.HitboxExpander
then
for
_,part
in
ipairs(model:GetChildren())
do
if
part:IsA("BasePart")
and
(settings.AllBodyParts
or
part==targetRoot)
then
local
saved=remember(part)
local
size=_G.HitboxSize
part.Size=Vector3.new(math.max(saved.Size.X,size),math.max(saved.Size.Y,size),math.max(saved.Size.Z,size))
part.Transparency=math.max(saved.Transparency,0.7);part.CanCollide=false
 
 
part.Massless=true
if
settings.QuerySafe
then
part.CanQuery=false
else
part.CanQuery=saved.CanQuery
end
touched[part]=true
end
end
end
end
end
end
if
tool
then
for
_,part
in
ipairs(tool:GetDescendants())
do
if
weaponPart(part)
then
hitCount=hitCount+1
if
settings.Reach
or
settings.ToolHitbox
then
local
saved
=
remember(part,true)
local
scale
=
settings.ToolHitbox
and
settings.ToolScale
or
1
local
diameter
=
settings.Reach
and
settings.ReachDistance
*
2
or
0
part.Size
=
Vector3.new(math.max(saved.Size.X
*
scale,
diameter),
math.max(saved.Size.Y
*
scale,
diameter),
math.max(saved.Size.Z
*
scale,
diameter))
touched[part]
=
true
end
end
end
end
end
for
part
in
pairs(backups)
do
if
not
touched[part]
then
restore(part)
end
end
local
equipped=tool
and
tool.Parent==character
if
not
_G.AutoClicker
or
not
alive
or
not
nearby
or
not
equipped
then
release("auto")
elseif
equippedReady(tool)
then
activate(tool,
settings.Interval,
settings.Hold,
"auto",
settings.Radius)
end
 
 
local
note=(settings.Reach
or
settings.ToolHitbox)
and
hitCount==0
and
not
settings.Touch
and
" · 전용 판정 파트 없음: 게임별 연결 필요"
or
""
local
touchNote=" · 터치 호출 "..touchStats.touches.."회 · 실패 "..touchStats.failures.."회"
.." · "..(settings.Touch
and
touchStats.reason
or
"터치 보조 꺼짐")
..(hitRecord.template
and
(" · 히트 재생 "..hitRecord.replays.."회 ("..hitRecord.template.remote.Name..")")
or
" · 히트 기록 없음")
if
tpAura.enabled
then
touchNote=touchNote.." · TP 타격 "..tpAura.strikes.."회 · "..tpAura.reason
end
if
not
tool
then
touchNote=touchNote.." · 일반 Tool 미장착"
end
if
tool
then
local
handle=toolHandle(tool)
if
handle
and
handle:IsA("BasePart")
then
touchNote=touchNote.." · Handle.CanTouch="..tostring(handle.CanTouch)
end
end
if
touchStats.lastError
then
touchNote=touchNote.." · "..touchStats.lastError
end
report("장착 무기: "..(tool
and
(tool.ClassName.." / "..tool.Name)
or
"없음").." · 이름으로 찾은 전용 파트: "..hitCount..note..touchNote
..(tool
and
tool:IsA("Model")
and
" · Model 자동 공격은 별도 게임 연결 필요"
or
""))
end
local
heartbeat
=
RunService.Heartbeat:Connect(update)
connections[#connections
+
1]
=
heartbeat
_G.KoreanHubAutoClickConnection
=
heartbeat
connections[#connections
+
1]
=
LocalPlayer.CharacterAdded:Connect(function()
burst.untilAt=0;release();restoreAll();lastAttack
=
-math.huge
end)
_G.KoreanHubCombatCoreCleanup
=
function()
for
_,connection
in
ipairs(connections)
do
connection:Disconnect()
end
if
watchedConnection
then
watchedConnection:Disconnect();watchedConnection=nil
end
burst.untilAt=0;hitRecord.recording=false;tpAura.alive=false;tpAura.enabled=false;release();restoreAll()
if
_G.KoreanHubHitActiveV2
==
hitRecord
then
_G.KoreanHubHitActiveV2
=
nil
end
if
_G.KoreanHubCombatTryActivate
==
activate
then
_G.KoreanHubCombatTryActivate
=
nil
end
if
_G.KoreanHubCombatRelease
==
release
then
_G.KoreanHubCombatRelease
=
nil
end
end
end
CombatTab:CreateToggle({
Name
=
"Hitbox Expander",
CurrentValue
=
false,
Callback
=
function(state)
_G.HitboxExpander
=
state
end,
})
CombatTab:CreateSlider({
Name
=
"Hitbox Size",
Range
=
{2,
25},
Increment
=
1,
CurrentValue
=
5,
Callback
=
function(v)
_G.HitboxSize
=
v
end,
})
local
aimLockedPlayer=nil
local
function
aimCenter(camera)
if
UserInputService.TouchEnabled
then
return
camera.ViewportSize/2
end
local
inset=game:GetService("GuiService"):GetGuiInset()
return
UserInputService:GetMouseLocation()-inset
end
local
function
aimTargetPart(p,camera,radius)
if
p==LocalPlayer
or
not
p.Character
then
return
nil
end
if
_G.AimbotTeamCheck
and
not
p.Neutral
and
not
LocalPlayer.Neutral
and
p.Team
and
p.Team==LocalPlayer.Team
then
return
nil
end
local
hum=p.Character:FindFirstChildOfClass("Humanoid")
if
not
hum
or
hum.Health<=0
then
return
nil
end
local
char=p.Character
local
part=char:FindFirstChild(_G.AimPart=="Head"
and
"Head"
or
"HumanoidRootPart")
or
char:FindFirstChild("UpperTorso")
or
char:FindFirstChild("Torso")
or
char:FindFirstChild("HumanoidRootPart")
if
not
part
or
not
part:IsA("BasePart")
then
return
nil
end
if
_G.KHBlackPart==part.Name
then
return
nil
end
if
_G.KHVisualCheck
then
local
params=RaycastParams.new();params.FilterType=Enum.RaycastFilterType.Exclude;params.FilterDescendantsInstances={LocalPlayer.Character}
local
hit=workspace:Raycast(camera.CFrame.Position,part.Position-camera.CFrame.Position,params)
if
hit
and
not
hit.Instance:IsDescendantOf(char)
then
return
nil
end
end
local
pos,visible=camera:WorldToViewportPoint(part.Position)
if
not
visible
or
pos.Z<=0
then
return
nil
end
local
distance=(Vector2.new(pos.X,pos.Y)-aimCenter(camera)).Magnitude
if
distance>radius
then
return
nil
end
return
part,distance
end
local
function
getClosestTarget()
local
camera=workspace.CurrentCamera
if
not
camera
then
return
nil
end
local
radius=_G.FOVSize
or
150
if
aimLockedPlayer
and
aimTargetPart(aimLockedPlayer,camera,radius)
then
return
aimLockedPlayer
end
aimLockedPlayer=nil
local
best=radius
for
_,p
in
ipairs(Players:GetPlayers())
do
local
part,distance=aimTargetPart(p,camera,radius)
if
part
and
distance<best
then
best=distance;aimLockedPlayer=p
end
end
return
aimLockedPlayer
end
 
RunService:UnbindFromRenderStep("KoreanHubAimCameraV2")
RunService:BindToRenderStep("KoreanHubAimCameraV2",Enum.RenderPriority.Camera.Value+1,function(dt)
local
camera=workspace.CurrentCamera
if
not
camera
then
return
end
Camera=camera
fovDrawing.Visible=_G.FOVCircle==true
fovDrawing.Position=aimCenter(camera);fovDrawing.Radius=_G.FOVSize
or
150
local
char=LocalPlayer.Character
local
hum=char
and
char:FindFirstChildOfClass("Humanoid")
if
not
_G.AimbotEnabled
or
not
hum
or
hum.Health<=0
or
UserInputService:GetFocusedTextBox()
or
camera.CameraType==Enum.CameraType.Scriptable
then
aimLockedPlayer=nil;return
end
local
target=getClosestTarget()
local
part=target
and
aimTargetPart(target,camera,_G.FOVSize
or
150)
if
not
part
then
return
end
local
cf=camera.CFrame
if
(part.Position-cf.Position).Magnitude<0.01
then
return
end
local
smooth=math.max(tonumber(_G.AimbotSmoothness)
or
1,1)
local
alpha=1-(1-math.clamp(1/smooth,0.01,1))^(math.max(dt,0)*60)
camera.CFrame=cf:Lerp(CFrame.lookAt(cf.Position,part.Position),alpha)
end)
RunService.RenderStepped:Connect(function()
if
_G.PlayerLock
and
LocalPlayer.Character
and
LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
then
local
target
=
getClosestTarget()
if
target
and
target.Character
and
target.Character:FindFirstChild("HumanoidRootPart")
then
local
hrp
=
LocalPlayer.Character.HumanoidRootPart
local
tHrp
=
target.Character.HumanoidRootPart
hrp.CFrame
=
CFrame.new(hrp.Position,
Vector3.new(tHrp.Position.X,
hrp.Position.Y,
tHrp.Position.Z))
end
end
if
_G.Spinbot
and
LocalPlayer.Character
and
LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
then
local
hrp
=
LocalPlayer.Character.HumanoidRootPart
hrp.CFrame
=
hrp.CFrame
*
CFrame.Angles(0,
math.rad(_G.SpinSpeed
*
0.2),
0)
end
if
_G.GodMode
and
LocalPlayer.Character
and
LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
then
LocalPlayer.Character.Humanoid.Health
=
LocalPlayer.Character.Humanoid.MaxHealth
end
if
_G.TouchFling
and
LocalPlayer.Character
and
LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
then
local
hrp
=
LocalPlayer.Character.HumanoidRootPart
local
v
=
hrp.Velocity
hrp.Velocity
=
v
*
10000
+
Vector3.new(0,
10000,
0)
RunService.RenderStepped:Wait()
hrp.Velocity
=
v
end
 
end)
 
 
 
VisualsTab:CreateSlider({
Name
=
"FOV Changer",
Range
=
{10,
120},
Increment
=
1,
CurrentValue
=
70,
Callback
=
function(v)
Camera.FieldOfView
=
v
end,
})
VisualsTab:CreateToggle({
Name
=
"Invisibility",
CurrentValue
=
false,
Callback
=
function(state)
_G.Invisibility
=
state
local
char
=
LocalPlayer.Character
if
char
then
for
_,
part
in
ipairs(char:GetDescendants())
do
if
part:IsA("BasePart")
and
part.Name
~=
"HumanoidRootPart"
then
part.Transparency
=
state
and
1
or
0
end
end
end
end,
})
VisualsTab:CreateToggle({
Name
=
"Fullbright",
CurrentValue
=
false,
Callback
=
function(state)
_G.Fullbright
=
state
end,
})
VisualsTab:CreateSlider({
Name
=
"Fullbright Intensity",
Range
=
{1,
10},
Increment
=
0.5,
CurrentValue
=
2,
Callback
=
function(v)
_G.FullbrightIntensity
=
v
end,
})
RunService.RenderStepped:Connect(function()
if
_G.Fullbright
then
Lighting.Brightness
=
_G.FullbrightIntensity
Lighting.ClockTime
=
14
Lighting.GlobalShadows
=
false
end
end)
VisualsTab:CreateToggle({
Name
=
"Freecam",
CurrentValue
=
false,
Callback
=
function(state)
_G.Freecam
=
state
Camera.CameraType
=
state
and
Enum.CameraType.Scriptable
or
Enum.CameraType.Custom
end,
})
local
freecamCF
=
Camera.CFrame
RunService.RenderStepped:Connect(function()
if
_G.Freecam
then
local
move
=
Vector3.new()
local
cf
=
Camera.CFrame
if
UserInputService:IsKeyDown(Enum.KeyCode.W)
then
move
=
move
+
cf.LookVector
end
if
UserInputService:IsKeyDown(Enum.KeyCode.S)
then
move
=
move
-
cf.LookVector
end
if
UserInputService:IsKeyDown(Enum.KeyCode.A)
then
move
=
move
-
cf.RightVector
end
if
UserInputService:IsKeyDown(Enum.KeyCode.D)
then
move
=
move
+
cf.RightVector
end
freecamCF
=
freecamCF
+
(move
*
1)
Camera.CFrame
=
freecamCF
else
freecamCF
=
Camera.CFrame
end
end)
 
 
 
do
local
style
=
{
BoxColor
=
Color3.fromRGB(90,
190,
255),
TracerColor
=
Color3.fromRGB(170,
210,
255),
SkeletonColor
=
Color3.fromRGB(255,
255,
255),
OutlineColor
=
Color3.fromRGB(12,
16,
24),
Thickness
=
1.5,
Opacity
=
0.9,
MaxDistance
=
1500,
Outline
=
true,
TracerOrigin
=
"Bottom",
}
local
entries
=
{}
local
function
hide(entry)
for
_,
object
in
ipairs(entry.objects)
do
object.Visible
=
false
end
end
local
function
clear(player)
local
entry
=
entries[player]
if
not
entry
then
return
end
for
_,
object
in
ipairs(entry.objects)
do
object:Remove()
end
entries[player]
=
nil
end
local
function
toggle(name,
key,
default)
ESPTab:CreateToggle({Name
=
name,
CurrentValue
=
default,
Callback
=
function(value)
_G[key]
=
value
for
_,
entry
in
pairs(entries)
do
hide(entry)
end
end})
end
toggle("Enable ESP",
"ESPEnabled",
false)
toggle("ESP Team Check",
"ESPTeamCheck",
true)
toggle("Box ESP",
"BoxESP",
false)
toggle("Tracer ESP",
"TracerESP",
false)
toggle("Skeleton ESP",
"SkeletonESP",
false)
ESPTab:CreateSection("Colors & Quality")
for
_,
definition
in
ipairs({
{"Box Color",
"BoxColor"},
{"Tracer Color",
"TracerColor"},
{"Skeleton Color",
"SkeletonColor"},
{"Outline Color",
"OutlineColor"},
})
do
local
key
=
definition[2]
ESPTab:CreateColorPicker({Name
=
definition[1],
Color
=
style[key],
Flag
=
"ESP_"
..
key,
Callback
=
function(color)
style[key]
=
color
end})
end
ESPTab:CreateToggle({Name
=
"Dark Outline",
CurrentValue
=
true,
Callback
=
function(value)
style.Outline
=
value
end})
for
_,
definition
in
ipairs({
{"Line Thickness",
"Thickness",
1,
4,
0.5},
{"ESP Opacity",
"Opacity",
0.1,
1,
0.05},
{"Max Distance (studs)",
"MaxDistance",
100,
5000,
50},
})
do
local
key
=
definition[2]
ESPTab:CreateSlider({Name
=
definition[1],
Range
=
{definition[3],
definition[4]},
Increment
=
definition[5],
CurrentValue
=
style[key],
Callback
=
function(value)
style[key]
=
value
end})
end
ESPTab:CreateDropdown({Name
=
"Tracer Origin",
Options
=
{"Bottom",
"Center",
"Top"},
CurrentOption
=
{"Bottom"},
MultipleOptions
=
false,
Callback
=
function(value)
style.TracerOrigin
=
type(value)
==
"table"
and
value[1]
or
value
end})
local
r6
=
{
{"Head",
"Torso"},
{"Torso",
"Left Arm"},
{"Torso",
"Right Arm"},
{"Torso",
"Left Leg"},
{"Torso",
"Right Leg"},
}
local
r15
=
{
{"Head",
"UpperTorso"},
{"UpperTorso",
"LowerTorso"},
{"UpperTorso",
"LeftUpperArm"},
{"LeftUpperArm",
"LeftLowerArm"},
{"LeftLowerArm",
"LeftHand"},
{"UpperTorso",
"RightUpperArm"},
{"RightUpperArm",
"RightLowerArm"},
{"RightLowerArm",
"RightHand"},
{"LowerTorso",
"LeftUpperLeg"},
{"LeftUpperLeg",
"LeftLowerLeg"},
{"LeftLowerLeg",
"LeftFoot"},
{"LowerTorso",
"RightUpperLeg"},
{"RightUpperLeg",
"RightLowerLeg"},
{"RightLowerLeg",
"RightFoot"},
}
local
corners
=
{}
for
x
=
-1,
1,
2
do
for
y
=
-1,
1,
2
do
for
z
=
-1,
1,
2
do
table.insert(corners,
Vector3.new(x,
y,
z)
*
0.5)
end
end
end
local
function
pair(entry,
kind,
layer)
local
result
=
{}
for
i
=
1,
2
do
local
object
=
Drawing.new(kind)
object.Visible
=
false
object.Transparency
=
1
object.ZIndex
=
layer
+
i
-
1
if
kind
==
"Square"
then
object.Filled
=
false
end
result[i]
=
object
table.insert(entry.objects,
object)
end
return
result
end
local
function
create(player,
character)
local
entry
=
{objects
=
{},
character
=
character,
bones
=
{}}
entries[player]
=
entry
entry.box
=
pair(entry,
"Square",
4)
entry.tracer
=
pair(entry,
"Line",
0)
for
i
=
1,
#r15
do
entry.bones[i]
=
pair(entry,
"Line",
2)
end
return
entry
end
local
function
paint(objects,
color,
opacity)
for
i,
object
in
ipairs(objects)
do
object.Color
=
i
==
1
and
style.OutlineColor
or
color
object.Thickness
=
style.Thickness
+
(i
==
1
and
2
or
0)
object.Transparency
=
opacity
object.Visible
=
i
==
2
or
style.Outline
end
end
local
function
line(objects,
a,
b,
color,
opacity)
for
_,
object
in
ipairs(objects)
do
object.From
=
a;
object.To
=
b
end
paint(objects,
color,
opacity)
end
local
function
project(camera,
position)
local
point
=
camera:WorldToViewportPoint(position)
if
point.Z
<=
0.1
then
return
nil
end
return
Vector2.new(point.X,
point.Y)
end
 
local
function
bounds(camera,
character)
local
left,
top,
right,
bottom
=
math.huge,
math.huge,
-math.huge,
-math.huge
for
_,
part
in
ipairs(character:GetChildren())
do
if
part:IsA("BasePart")
and
part.Name
~=
"HumanoidRootPart"
then
for
_,
corner
in
ipairs(corners)
do
local
point
=
project(camera,
part.CFrame:PointToWorldSpace(part.Size
*
corner))
 
if
not
point
then
return
nil
end
left,
top
=
math.min(left,
point.X),
math.min(top,
point.Y)
right,
bottom
=
math.max(right,
point.X),
math.max(bottom,
point.Y)
end
end
end
local
viewport
=
camera.ViewportSize
if
right
<
0
or
bottom
<
0
or
left
>
viewport.X
or
top
>
viewport.Y
or
left
==
math.huge
then
return
nil
end
left,
top
=
math.max(0,
left
-
2),
math.max(0,
top
-
2)
right,
bottom
=
math.min(viewport.X,
right
+
2),
math.min(viewport.Y,
bottom
+
2)
return
Vector2.new(math.floor(left),
math.floor(top)),
Vector2.new(math.max(1,
math.ceil(right
-
left)),
math.max(1,
math.ceil(bottom
-
top)))
end
 
local
function
clip(a,
b,
viewport)
local
delta,
first,
last
=
b
-
a,
0,
1
local
p
=
{-delta.X,
delta.X,
-delta.Y,
delta.Y}
local
q
=
{a.X,
viewport.X
-
a.X,
a.Y,
viewport.Y
-
a.Y}
for
i
=
1,
4
do
if
math.abs(p[i])
<
0.00001
then
if
q[i]
<
0
then
return
nil
end
else
local
t
=
q[i]
/
p[i]
if
p[i]
<
0
then
first
=
math.max(first,
t)
else
last
=
math.min(last,
t)
end
if
first
>
last
then
return
nil
end
end
end
return
a
+
delta
*
first,
a
+
delta
*
last
end
local
bindName
=
"KoreanHub_ESP_Quality"
 
if
type(_G.KoreanHubESPCleanup)
==
"function"
then
_G.KoreanHubESPCleanup()
end
local
removing
=
Players.PlayerRemoving:Connect(clear)
_G.KoreanHubESPCleanup
=
function()
RunService:UnbindFromRenderStep(bindName)
removing:Disconnect()
for
player
in
pairs(entries)
do
clear(player)
end
end
RunService:BindToRenderStep(bindName,
Enum.RenderPriority.Camera.Value
+
1,
function()
local
camera
=
workspace.CurrentCamera
local
active
=
camera
and
_G.ESPEnabled
and
(_G.BoxESP
or
_G.TracerESP
or
_G.SkeletonESP)
for
_,
entry
in
pairs(entries)
do
hide(entry)
end
if
not
active
then
return
end
local
myRoot
=
LocalPlayer.Character
and
LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
local
origin
=
myRoot
and
myRoot.Position
or
camera.CFrame.Position
for
_,
player
in
ipairs(Players:GetPlayers())
do
local
character
=
player.Character
local
root
=
character
and
character:FindFirstChild("HumanoidRootPart")
local
humanoid
=
character
and
character:FindFirstChildOfClass("Humanoid")
local
entry
=
entries[player]
if
entry
and
entry.character
~=
character
then
clear(player);
entry
=
nil
end
local
teammate
=
not
player.Neutral
and
not
LocalPlayer.Neutral
and
player.Team
~=
nil
and
player.Team
==
LocalPlayer.Team
if
player
~=
LocalPlayer
and
root
and
humanoid
and
humanoid.Health
>
0
and
not
(_G.ESPTeamCheck
and
teammate)
and
(origin
-
root.Position).Magnitude
<=
style.MaxDistance
then
local
position,
size
=
bounds(camera,
character)
if
position
then
entry
=
entry
or
create(player,
character)
if
_G.BoxESP
then
for
_,
object
in
ipairs(entry.box)
do
object.Position
=
position;
object.Size
=
size
end
paint(entry.box,
style.BoxColor,
style.Opacity)
end
if
_G.TracerESP
then
local
viewport
=
camera.ViewportSize
local
y
=
style.TracerOrigin
==
"Top"
and
2
or
(style.TracerOrigin
==
"Center"
and
viewport.Y
/
2
or
viewport.Y
-
2)
 
local
targetY
=
style.TracerOrigin
==
"Top"
and
position.Y
or
position.Y
+
size.Y
line(entry.tracer,
Vector2.new(viewport.X
/
2,
y),
Vector2.new(position.X
+
size.X
/
2,
targetY),
style.TracerColor,
style.Opacity
*
0.65)
end
if
_G.SkeletonESP
then
local
bones
=
humanoid.RigType
==
Enum.HumanoidRigType.R15
and
r15
or
r6
for
i,
names
in
ipairs(bones)
do
local
a,
b
=
character:FindFirstChild(names[1]),
character:FindFirstChild(names[2])
if
a
and
b
and
a:IsA("BasePart")
and
b:IsA("BasePart")
then
local
pa,
pb
=
project(camera,
a.Position),
project(camera,
b.Position)
if
pa
and
pb
then
local
ca,
cb
=
clip(pa,
pb,
camera.ViewportSize)
if
ca
then
line(entry.bones[i],
ca,
cb,
style.SkeletonColor,
style.Opacity)
end
end
end
end
end
end
end
end
end)
end
 
 
 
PerfTab:CreateButton({
Name
=
"Unlock FPS (Max)",
Callback
=
function()
if
setfpscap
then
setfpscap(9999)
end
end,
})
 
local
boosterBackup
=
setmetatable({},
{
__mode
=
"k"
})
local
qualityBackup
=
nil
local
boosterBusy
=
false
 
local
function
setProp(inst,
prop,
value)
local
ok,
current
=
pcall(function()
return
inst[prop]
end)
if
not
ok
then
return
end
boosterBackup[inst]
=
boosterBackup[inst]
or
{}
if
boosterBackup[inst][prop]
==
nil
then
boosterBackup[inst][prop]
=
current
end
pcall(function()
inst[prop]
=
value
end)
end
local
function
setQuality(level)
pcall(function()
local
rendering
=
settings().Rendering
if
qualityBackup
==
nil
then
qualityBackup
=
rendering.QualityLevel
end
rendering.QualityLevel
=
level
end)
end
 
local
function
eachDescendant(root,
fn)
local
count
=
0
for
_,
d
in
ipairs(root:GetDescendants())
do
fn(d)
count
=
count
+
1
if
count
%
500
==
0
then
task.wait()
end
end
end
local
EFFECT_CLASSES
=
{
"ParticleEmitter",
"Trail",
"Beam",
"Smoke",
"Fire",
"Sparkles"
}
local
function
isEffect(d)
for
_,
className
in
ipairs(EFFECT_CLASSES)
do
if
d:IsA(className)
then
return
true
end
end
return
false
end
 
local
function
boostLevel1()
setProp(Lighting,
"GlobalShadows",
false)
eachDescendant(Lighting,
function(d)
if
d:IsA("PostEffect")
then
setProp(d,
"Enabled",
false)
end
end)
end
 
local
function
boostLevel2()
eachDescendant(workspace,
function(d)
if
isEffect(d)
then
setProp(d,
"Enabled",
false)
end
end)
local
terrain
=
workspace:FindFirstChildOfClass("Terrain")
if
terrain
then
setProp(terrain,
"Decoration",
false)
setProp(terrain,
"WaterWaveSize",
0)
setProp(terrain,
"WaterWaveSpeed",
0)
setProp(terrain,
"WaterReflectance",
0)
end
setQuality(Enum.QualityLevel.Level05)
end
 
local
function
boostLevel3()
eachDescendant(workspace,
function(d)
if
d:IsA("BasePart")
and
not
d:IsA("Terrain")
then
setProp(d,
"Material",
Enum.Material.SmoothPlastic)
setProp(d,
"Reflectance",
0)
setProp(d,
"CastShadow",
false)
elseif
d:IsA("Decal")
or
d:IsA("Texture")
then
setProp(d,
"Transparency",
1)
end
end)
eachDescendant(Lighting,
function(d)
if
d:IsA("Atmosphere")
then
setProp(d,
"Density",
0)
setProp(d,
"Haze",
0)
end
end)
setQuality(Enum.QualityLevel.Level01)
end
local
function
applyBooster(level)
if
boosterBusy
then
return
notify("FPS Booster",
"Still applying, wait a moment.")
end
boosterBusy
=
true
notify("FPS Booster",
"Applying level "
..
level
..
"...")
task.spawn(function()
local
ok,
err
=
pcall(function()
boostLevel1()
if
level
>=
2
then
boostLevel2()
end
if
level
>=
3
then
boostLevel3()
end
end)
boosterBusy
=
false
if
ok
then
notify("FPS Booster",
"Level "
..
level
..
" applied.")
else
notify("FPS Booster",
"Error: "
..
tostring(err))
end
end)
end
local
function
restoreGraphics()
if
boosterBusy
then
return
notify("FPS Booster",
"Still applying, wait a moment.")
end
for
inst,
props
in
pairs(boosterBackup)
do
for
prop,
value
in
pairs(props)
do
pcall(function()
inst[prop]
=
value
end)
end
end
boosterBackup
=
setmetatable({},
{
__mode
=
"k"
})
if
qualityBackup
~=
nil
then
pcall(function()
settings().Rendering.QualityLevel
=
qualityBackup
end)
qualityBackup
=
nil
end
notify("FPS Booster",
"Graphics restored.")
end
PerfTab:CreateButton({
Name
=
"FPS Booster - Level 1 (Light)",
Callback
=
function()
applyBooster(1)
end,
})
PerfTab:CreateButton({
Name
=
"FPS Booster - Level 2 (Medium)",
Callback
=
function()
applyBooster(2)
end,
})
PerfTab:CreateButton({
Name
=
"FPS Booster - Level 3 (Max)",
Callback
=
function()
applyBooster(3)
end,
})
PerfTab:CreateButton({
Name
=
"Restore Graphics",
Callback
=
restoreGraphics,
})
 
 
 
local
targetName
=
""
MiscTab:CreateInput({
Name
=
"Target Player Name",
PlaceholderText
=
"Username",
Callback
=
function(text)
targetName
=
text
end,
})
MiscTab:CreateButton({
Name
=
"Join Player's Server",
Callback
=
function()
local
target
=
Players:FindFirstChild(targetName)
if
target
then
TeleportService:TeleportToPlaceInstance(game.PlaceId,
target.JobId,
LocalPlayer)
end
end,
})
 
 
 
local
ServerTab
=
Window:CreateTab("Server",
4483362458)
local
HttpService
=
game:GetService("HttpService")
 
local
function
findServer(order)
local
cursor
=
""
for
_
=
1,
5
do
local
url
=
("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=%s&limit=100%s")
:format(game.PlaceId,
order,
cursor
~=
""
and
("&cursor="
..
cursor)
or
"")
local
okGet,
body
=
pcall(function()
return
game:HttpGet(url)
end)
if
not
okGet
then
return
nil
end
local
okJson,
data
=
pcall(function()
return
HttpService:JSONDecode(body)
end)
if
not
okJson
or
not
data
or
not
data.data
then
return
nil
end
for
_,
s
in
ipairs(data.data)
do
if
s.id
~=
game.JobId
and
s.playing
and
s.maxPlayers
and
s.playing
>=
1
and
s.playing
<
s.maxPlayers
-
1
then
return
s
end
end
if
not
data.nextPageCursor
then
break
end
cursor
=
data.nextPageCursor
end
return
nil
end
local
function
hop(order,
label)
notify(label,
"Searching...")
task.spawn(function()
local
server
=
findServer(order)
if
server
then
notify(label,
("Joining server (%d/%d)"):format(server.playing,
server.maxPlayers))
TeleportService:TeleportToPlaceInstance(game.PlaceId,
server.id,
LocalPlayer)
else
notify(label,
"No server found.")
end
end)
end
ServerTab:CreateButton({
Name
=
"Join Low Population Server",
Callback
=
function()
hop("Asc",
"Low Pop Hop")
end,
})
ServerTab:CreateButton({
Name
=
"Join High Population Server",
Callback
=
function()
hop("Desc",
"High Pop Hop")
end,
})
 
 
 
local
UtilityTab
=
Window:CreateTab("Utility",
4483362458)
autoFlag(UtilityTab,
"Util")
local
DEFAULT_WALKSPEED
=
16
local
DEFAULT_JUMPPOWER
=
50
local
DEFAULT_GRAVITY
=
196.2
 
local
function
setFlag(flag,
value)
local
el
=
Rayfield.Flags[flag]
if
el
then
pcall(function()
el:Set(value)
end)
end
end
 
local
gravitySlider
=
UtilityTab:CreateSlider({
Name
=
"Gravity",
Range
=
{0,
400},
Increment
=
0.1,
CurrentValue
=
DEFAULT_GRAVITY,
Callback
=
function(v)
workspace.Gravity
=
v
end,
})
UtilityTab:CreateInput({
Name
=
"Type Gravity",
CurrentValue
=
"",
PlaceholderText
=
"0-400 (press Enter)",
RemoveTextAfterFocusLost
=
false,
Flag
=
"Util_TypeGravity",
Callback
=
function(text)
local
number
=
tonumber(text)
if
not
number
or
number
~=
number
or
number
==
math.huge
or
number
==
-math.huge
then
return
end
gravitySlider:Set(math.clamp(math.floor(number
*
10
+
0.5)
/
10,
0,
400))
end,
})
 
UtilityTab:CreateButton({
Name
=
"Reset Movement",
Callback
=
function()
setFlag("Move_FlyHack",
false)
setFlag("Move_Noclip",
false)
setFlag("Move_InfiniteJump",
false)
setFlag("Move_ClickTP",
false)
setFlag("Move_StunMovementAssist",
false)
_G.LoopSpeed
=
false
_G.LoopJumpPower
=
false
setFlag("Move_LoopSpeed",
false)
setFlag("Move_LoopJumpPower",
false)
setFlag("Move_WalkSpeed",
DEFAULT_WALKSPEED)
setFlag("Move_JumpPower",
DEFAULT_JUMPPOWER)
setFlag("Util_Gravity",
DEFAULT_GRAVITY)
workspace.Gravity
=
DEFAULT_GRAVITY
_G.WalkSpeedVal
=
DEFAULT_WALKSPEED
_G.JumpPowerVal
=
DEFAULT_JUMPPOWER
local
char
=
LocalPlayer.Character
local
hum
=
char
and
char:FindFirstChildOfClass("Humanoid")
if
hum
then
hum.WalkSpeed
=
DEFAULT_WALKSPEED
hum.UseJumpPower
=
true
hum.JumpPower
=
DEFAULT_JUMPPOWER
hum.PlatformStand
=
false
end
notify("Reset Movement",
"Speed, jump power and gravity restored.")
end,
})
 
local
fogOn
=
false
local
fogBackup
=
nil
local
function
backupFog()
fogBackup
=
{
FogStart
=
Lighting.FogStart,
FogEnd
=
Lighting.FogEnd,
Atmospheres
=
{},
}
for
_,
v
in
ipairs(Lighting:GetChildren())
do
if
v:IsA("Atmosphere")
then
fogBackup.Atmospheres[v]
=
{
Density
=
v.Density,
Haze
=
v.Haze
}
end
end
end
local
function
applyFogRemoval()
Lighting.FogStart
=
9e9
Lighting.FogEnd
=
9e9
for
_,
v
in
ipairs(Lighting:GetChildren())
do
if
v:IsA("Atmosphere")
then
v.Density
=
0
v.Haze
=
0
end
end
end
local
function
restoreFog()
if
not
fogBackup
then
return
end
Lighting.FogStart
=
fogBackup.FogStart
Lighting.FogEnd
=
fogBackup.FogEnd
for
atmos,
values
in
pairs(fogBackup.Atmospheres)
do
if
atmos.Parent
then
atmos.Density
=
values.Density
atmos.Haze
=
values.Haze
end
end
fogBackup
=
nil
end
RunService.RenderStepped:Connect(function()
if
fogOn
then
applyFogRemoval()
end
end)
UtilityTab:CreateToggle({
Name
=
"Fog Removal",
CurrentValue
=
false,
Callback
=
function(state)
fogOn
=
state
if
state
then
backupFog()
applyFogRemoval()
else
restoreFog()
end
end,
})
 
UtilityTab:CreateButton({
Name
=
"Reset Character",
Callback
=
function()
 
_G.GodMode
=
false
setFlag("Combat_GodModeHealthLock",
false)
setFlag("Move_FlyHack",
false)
local
char
=
LocalPlayer.Character
if
not
char
then
return
notify("Reset Character",
"No character found.")
end
local
hum
=
char:FindFirstChildOfClass("Humanoid")
if
hum
then
hum.Health
=
0
end
pcall(function()
char:BreakJoints()
end)
end,
})
 
local
function
rejoinServer()
notify("Rejoin Server",
"Rejoining...")
if
#Players:GetPlayers()
<=
1
then
LocalPlayer:Kick("\nRejoining...")
task.wait()
TeleportService:Teleport(game.PlaceId,
LocalPlayer)
else
TeleportService:TeleportToPlaceInstance(game.PlaceId,
game.JobId,
LocalPlayer)
end
end
UtilityTab:CreateButton({
Name
=
"Rejoin Server",
Callback
=
rejoinServer,
})
 
 
 
local
PlayersTab
=
Window:CreateTab("Players",
4483362458)
local
selectedTarget
=
nil
local
loopTpOn
=
false
local
followDistance
=
3
local
LoopToggle
local
function
getPlayerNames()
local
names
=
{}
for
_,
p
in
ipairs(Players:GetPlayers())
do
if
p
~=
LocalPlayer
then
table.insert(names,
p.Name)
end
end
table.sort(names)
return
names
end
local
function
getRoot(player)
local
char
=
player
and
player.Character
return
char
and
char:FindFirstChild("HumanoidRootPart")
end
local
function
teleportToTarget()
local
myRoot
=
getRoot(LocalPlayer)
local
targetRoot
=
getRoot(selectedTarget
and
Players:FindFirstChild(selectedTarget))
if
not
myRoot
or
not
targetRoot
then
return
false
end
myRoot.CFrame
=
targetRoot.CFrame
*
CFrame.new(0,
0,
followDistance)
myRoot.AssemblyLinearVelocity
=
Vector3.new(0,
0,
0)
return
true
end
local
PlayerDropdown
=
PlayersTab:CreateDropdown({
Name
=
"Select Player",
Options
=
getPlayerNames(),
CurrentOption
=
{},
MultipleOptions
=
false,
Callback
=
function(option)
selectedTarget
=
type(option)
==
"table"
and
option[1]
or
option
end,
})
local
function
refreshPlayerList()
pcall(function()
PlayerDropdown:Refresh(getPlayerNames())
end)
end
PlayersTab:CreateButton({
Name
=
"Refresh Player List",
Callback
=
function()
refreshPlayerList()
notify("Players",
"Player list refreshed.")
end,
})
Players.PlayerAdded:Connect(refreshPlayerList)
Players.PlayerRemoving:Connect(function()
task.delay(0.5,
refreshPlayerList)
end)
PlayersTab:CreateButton({
Name
=
"Teleport to Player",
Callback
=
function()
if
not
selectedTarget
then
return
notify("Teleport",
"Select a player first.")
end
if
not
teleportToTarget()
then
notify("Teleport",
"Target has no character.")
end
end,
})
PlayersTab:CreateSlider({
Name
=
"Follow Distance",
Range
=
{0,
20},
Increment
=
1,
CurrentValue
=
3,
Callback
=
function(v)
followDistance
=
v
end,
})
LoopToggle
=
PlayersTab:CreateToggle({
Name
=
"Loop Teleport (Follow)",
CurrentValue
=
false,
Callback
=
function(state)
if
state
and
not
selectedTarget
then
notify("Loop Teleport",
"Select a player first.")
if
LoopToggle
then
LoopToggle:Set(false)
end
return
end
loopTpOn
=
state
end,
})
RunService.Heartbeat:Connect(function()
if
loopTpOn
then
teleportToTarget()
end
end)
 
 
 
local
xrayOn
=
false
local
xrayParts
=
{}
local
xrayConn
=
nil
local
XRAY_AMOUNT
=
0.6
local
function
isCharacterPart(part)
local
model
=
part:FindFirstAncestorOfClass("Model")
return
model
~=
nil
and
model:FindFirstChildOfClass("Humanoid")
~=
nil
end
local
function
xrayPart(part)
if
part:IsA("BasePart")
and
not
isCharacterPart(part)
then
part.LocalTransparencyModifier
=
XRAY_AMOUNT
xrayParts[part]
=
true
end
end
VisualsTab:CreateToggle({
Name
=
"X-Ray Mode",
CurrentValue
=
false,
Callback
=
function(state)
xrayOn
=
state
if
state
then
if
xrayConn
then
xrayConn:Disconnect()
end
xrayConn
=
workspace.DescendantAdded:Connect(function(d)
if
xrayOn
then
xrayPart(d)
end
end)
task.spawn(function()
local
count
=
0
for
_,
d
in
ipairs(workspace:GetDescendants())
do
if
not
xrayOn
then
break
end
xrayPart(d)
count
=
count
+
1
if
count
%
300
==
0
then
task.wait()
end
end
end)
else
if
xrayConn
then
xrayConn:Disconnect()
xrayConn
=
nil
end
for
part
in
pairs(xrayParts)
do
if
part.Parent
then
part.LocalTransparencyModifier
=
0
end
end
xrayParts
=
{}
end
end,
})
 
 
 
local
antiAfkOn
=
true
LocalPlayer.Idled:Connect(function()
if
antiAfkOn
then
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new(0,
0))
end
end)
MiscTab:CreateToggle({
Name
=
"Anti AFK",
CurrentValue
=
true,
Callback
=
function(state)
antiAfkOn
=
state
end,
})
local
antiDevOn
=
false
local
staffRankThreshold
=
100
local
ROBLOX_STAFF_GROUP_ID
=
1200769
 
local
function
isStaff(p)
if
p
==
LocalPlayer
then
return
false
end
local
ok,
result
=
pcall(function()
if
game.CreatorType
==
Enum.CreatorType.User
then
if
p.UserId
==
game.CreatorId
then
return
true
end
else
if
p:GetRankInGroup(game.CreatorId)
>=
staffRankThreshold
then
return
true
end
end
return
p:GetRankInGroup(ROBLOX_STAFF_GROUP_ID)
>
0
end)
return
ok
and
result
==
true
end
local
function
checkStaff(p)
if
not
antiDevOn
then
return
end
task.spawn(function()
if
antiDevOn
and
isStaff(p)
then
LocalPlayer:Kick("Anti Dev: staff detected ("
..
p.Name
..
")")
end
end)
end
Players.PlayerAdded:Connect(checkStaff)
MiscTab:CreateToggle({
Name
=
"Anti Dev",
CurrentValue
=
false,
Callback
=
function(state)
antiDevOn
=
state
if
state
then
for
_,
p
in
ipairs(Players:GetPlayers())
do
checkStaff(p)
end
end
end,
})
MiscTab:CreateSlider({
Name
=
"Staff Rank Threshold",
Range
=
{1,
255},
Increment
=
1,
CurrentValue
=
100,
Callback
=
function(v)
staffRankThreshold
=
v
end,
})
 
 
 
local
AnimTab
=
Window:CreateTab("Animations",
4483362458)
autoFlag(AnimTab,
"Anim")
 
local
ANIMATIONS
=
{
["Dance 1"]
=
{
R15
=
507771019,
R6
=
182435998
},
["Dance 2"]
=
{
R15
=
507776043,
R6
=
182491037
},
["Dance 3"]
=
{
R15
=
507777268,
R6
=
182491065
},
["Wave"]
=
{
R15
=
507770239,
R6
=
128777973
},
["Point"]
=
{
R15
=
507770453,
R6
=
128853357
},
["Cheer"]
=
{
R15
=
507770677,
R6
=
129423030
},
["Laugh"]
=
{
R15
=
507770818,
R6
=
129423131
},
}
local
animNames
=
{
"Dance 1",
"Dance 2",
"Dance 3",
"Wave",
"Point",
"Cheer",
"Laugh"
}
local
selectedAnim
=
"Dance 1"
local
customAnimId
=
""
local
animLoop
=
true
local
animSpeed
=
1
local
currentTrack
=
nil
local
function
getHumanoid()
local
char
=
LocalPlayer.Character
return
char
and
char:FindFirstChildOfClass("Humanoid")
end
local
function
stopAnimation()
if
currentTrack
then
pcall(function()
currentTrack:Stop()
currentTrack:Destroy()
end)
currentTrack
=
nil
end
end
local
function
playAnimation(id)
local
hum
=
getHumanoid()
if
not
hum
then
return
notify("Animations",
"No character found.")
end
stopAnimation()
local
animator
=
hum:FindFirstChildOfClass("Animator")
if
not
animator
then
animator
=
Instance.new("Animator")
animator.Parent
=
hum
end
local
anim
=
Instance.new("Animation")
anim.AnimationId
=
"rbxassetid://"
..
tostring(id)
local
ok,
track
=
pcall(function()
return
animator:LoadAnimation(anim)
end)
if
not
ok
or
not
track
then
return
notify("Animations",
"Failed to load animation.")
end
track.Priority
=
Enum.AnimationPriority.Action
track.Looped
=
animLoop
track:Play()
track:AdjustSpeed(animSpeed)
currentTrack
=
track
end
local
function
playNamedAnimation(name)
local
hum
=
getHumanoid()
local
ids
=
ANIMATIONS[name]
if
not
hum
or
not
ids
then
return
notify("Animations",
"No character or animation found.")
end
local
rig
=
hum.RigType
==
Enum.HumanoidRigType.R15
and
"R15"
or
"R6"
playAnimation(ids[rig])
end
LocalPlayer.CharacterAdded:Connect(function()
currentTrack
=
nil
end)
AnimTab:CreateDropdown({
Name
=
"Select Animation",
Options
=
animNames,
CurrentOption
=
{"Dance 1"},
MultipleOptions
=
false,
Callback
=
function(option)
selectedAnim
=
type(option)
==
"table"
and
option[1]
or
option
end,
})
AnimTab:CreateButton({
Name
=
"Play Animation",
Callback
=
function()
playNamedAnimation(selectedAnim)
end,
})
AnimTab:CreateButton({
Name
=
"Stop Animation",
Callback
=
function()
stopAnimation()
end,
})
AnimTab:CreateToggle({
Name
=
"Loop Animation",
CurrentValue
=
true,
Callback
=
function(state)
animLoop
=
state
if
currentTrack
then
pcall(function()
currentTrack.Looped
=
state
end)
end
end,
})
AnimTab:CreateSlider({
Name
=
"Animation Speed",
Range
=
{0.1,
5},
Increment
=
0.1,
CurrentValue
=
1,
Callback
=
function(v)
animSpeed
=
v
if
currentTrack
then
pcall(function()
currentTrack:AdjustSpeed(v)
end)
end
end,
})
AnimTab:CreateInput({
Name
=
"Custom Animation ID",
PlaceholderText
=
"Animation asset ID",
RemoveTextAfterFocusLost
=
false,
Callback
=
function(text)
customAnimId
=
text:match("%d+")
or
""
end,
})
AnimTab:CreateButton({
Name
=
"Play Custom ID",
Callback
=
function()
if
customAnimId
==
""
then
return
notify("Animations",
"Enter an animation ID first.")
end
playAnimation(customAnimId)
end,
})
 
 
 
local
ConfigTab
=
Window:CreateTab("Config",
4483362458)
local
ROOT_DIR
=
"KoreanHubConfigs"
local
PROFILE_DIR
=
ROOT_DIR
..
"/Profiles"
local
fsReady
=
writefile
and
readfile
and
listfiles
and
isfolder
and
makefolder
and
delfile
and
isfile
local
function
ensureFolders()
if
not
isfolder(ROOT_DIR)
then
makefolder(ROOT_DIR)
end
if
not
isfolder(PROFILE_DIR)
then
makefolder(PROFILE_DIR)
end
end
local
function
listProfiles()
if
not
fsReady
then
return
{}
end
ensureFolders()
local
names
=
{}
for
_,
path
in
ipairs(listfiles(PROFILE_DIR))
do
local
name
=
path:match("([^/\\]+)%.json$")
if
name
then
table.insert(names,
name)
end
end
table.sort(names)
return
names
end
local
function
serializeFlags()
local
data
=
{}
for
flag,
el
in
pairs(Rayfield.Flags)
do
if
el.Type
==
"ColorPicker"
then
local
c
=
el.Color
if
typeof(c)
==
"Color3"
then
data[flag]
=
{R
=
c.R,
G
=
c.G,
B
=
c.B}
end
elseif
el.Type
==
"Dropdown"
then
data[flag]
=
el.CurrentOption
elseif
el.CurrentValue
~=
nil
then
data[flag]
=
el.CurrentValue
end
end
return
HttpService:JSONEncode(data)
end
local
function
applyFlags(data)
local
applied
=
0
for
flag,
value
in
pairs(data)
do
local
el
=
Rayfield.Flags[flag]
if
el
then
local
ok
=
pcall(function()
if
el.Type
==
"ColorPicker"
and
type(value)
==
"table"
then
el:Set(Color3.new(value.R,
value.G,
value.B))
else
el:Set(value)
end
end)
if
ok
then
applied
=
applied
+
1
end
end
end
return
applied
end
local
profileName
=
""
local
selectedProfile
=
nil
ConfigTab:CreateInput({
Name
=
"Profile Name",
PlaceholderText
=
"e.g. legit, rage, pvp",
RemoveTextAfterFocusLost
=
false,
Callback
=
function(text)
profileName
=
(text:gsub("[^%w_%-]",
""))
end,
})
local
ProfileDropdown
=
ConfigTab:CreateDropdown({
Name
=
"Saved Profiles",
Options
=
listProfiles(),
CurrentOption
=
{},
MultipleOptions
=
false,
Callback
=
function(option)
selectedProfile
=
type(option)
==
"table"
and
option[1]
or
option
end,
})
ConfigTab:CreateButton({
Name
=
"Create · 새 설정 생성",
Callback
=
function()
if
not
fsReady
then
return
notify("Config",
"파일 저장 기능을 지원하지 않습니다.")
end
if
profileName
==
""
then
return
notify("Config",
"Profile Name에 이름을 입력하세요.")
end
local
ok,err=pcall(function()
ensureFolders()
local
path=PROFILE_DIR
..
"/"
..
profileName
..
".json"
if
isfile(path)
then
error("이미 같은 이름이 있습니다. 다른 이름을 사용하거나 Save Profile을 누르세요.",0)
end
writefile(path,serializeFlags())
ProfileDropdown:Refresh(listProfiles())
ProfileDropdown:Set({profileName})
end)
notify("Config",ok
and
("생성 완료: "..profileName)
or
tostring(err))
end,
})
ConfigTab:CreateButton({
Name
=
"Save Profile",
Callback
=
function()
if
not
fsReady
then
return
notify("Config",
"Executor has no file functions.")
end
if
profileName
==
""
then
return
notify("Config",
"Enter a profile name.")
end
ensureFolders()
writefile(PROFILE_DIR
..
"/"
..
profileName
..
".json",
serializeFlags())
ProfileDropdown:Refresh(listProfiles())
notify("Config",
"Saved: "
..
profileName)
end,
})
ConfigTab:CreateButton({
Name
=
"Load Profile",
Callback
=
function()
if
not
fsReady
then
return
notify("Config",
"Executor has no file functions.")
end
if
not
selectedProfile
or
selectedProfile
==
""
then
return
notify("Config",
"Select a profile.")
end
local
path
=
PROFILE_DIR
..
"/"
..
selectedProfile
..
".json"
if
not
isfile(path)
then
return
notify("Config",
"Profile file missing.")
end
local
ok,
data
=
pcall(function()
return
HttpService:JSONDecode(readfile(path))
end)
if
not
ok
then
return
notify("Config",
"Profile is corrupted.")
end
notify("Config",
("Loaded %s (%d settings)"):format(selectedProfile,
applyFlags(data)))
end,
})
ConfigTab:CreateButton({
Name
=
"Delete Profile",
Callback
=
function()
if
not
fsReady
then
return
notify("Config",
"Executor has no file functions.")
end
if
not
selectedProfile
or
selectedProfile
==
""
then
return
notify("Config",
"Select a profile.")
end
local
path
=
PROFILE_DIR
..
"/"
..
selectedProfile
..
".json"
if
isfile(path)
then
delfile(path)
end
notify("Config",
"Deleted: "
..
selectedProfile)
selectedProfile
=
nil
ProfileDropdown:Refresh(listProfiles())
end,
})
ConfigTab:CreateButton({
Name
=
"Refresh Profile List",
Callback
=
function()
ProfileDropdown:Refresh(listProfiles())
end,
})
do
local
function
autoloadStatus()
if
not
(isfile
and
readfile)
then
return
"Autoload: 파일 기능 미지원"
end
local
ok,on=pcall(function()
if
not
isfile(ROOT_DIR.."/LinoriaUniversal.json")
then
return
false
end
if
isfile(ROOT_DIR.."/LinoriaAutoload.txt")
then
return
readfile(ROOT_DIR.."/LinoriaAutoload.txt")=="on"
end
return
true
end)
if
not
ok
then
return
"Autoload: 상태 읽기 실패"
end
return
on
and
"Autoload: 켜짐"
or
"Autoload: 꺼짐"
end
local
status=ConfigTab:CreateLabel(autoloadStatus())
ConfigTab:CreateButton({
Name="Save Default Config (Auto-Load)",
Callback=function()
local
ok,err=pcall(function()
Rayfield:SaveConfiguration()
end)
status:Set(autoloadStatus())
notify("Config",ok
and
"현재 설정 저장 · 다음 실행부터 자동 불러오기 켜짐"
or
tostring(err))
end,
})
ConfigTab:CreateButton({
Name="Remove Autoload · 자동 불러오기 해제",
Callback=function()
if
not
(writefile
and
isfolder
and
makefolder)
then
return
notify("Config","파일 저장 기능을 지원하지 않습니다.")
end
local
ok,err=pcall(function()
if
not
isfolder(ROOT_DIR)
then
makefolder(ROOT_DIR)
end
writefile(ROOT_DIR.."/LinoriaAutoload.txt","off")
end)
status:Set(autoloadStatus())
notify("Config",ok
and
"자동 불러오기 해제 완료 · 저장된 프로필과 현재 설정은 유지됩니다."
or
tostring(err))
end,
})
end
 
do
if
type(_G.KoreanHubCombatExtrasCleanup)
==
"function"
then
_G.KoreanHubCombatExtrasCleanup()
end
local
settings
=
{Hitbox
=
false,
Size
=
8,
NPC
=
false,
Player
=
false,
Radius
=
30,
Interval
=
0.25,
TeamCheck
=
true}
local
humanoids,
backups,
connections
=
{},
{},
{}
local
activeTool,
releaseAt
=
nil,
0
local
function
releaseTool()
if
type(_G.KoreanHubCombatRelease)
==
"function"
then
_G.KoreanHubCombatRelease("aura")
end
if
activeTool
then
pcall(function()
activeTool:Deactivate()
end)
end
activeTool
=
nil
end
local
function
restore(part)
local
original
=
backups[part]
if
original
then
if
part.Parent
then
pcall(function()
part.Size
=
original.Size
part.Transparency
=
original.Transparency
part.CanCollide
=
original.CanCollide
end)
end
backups[part]
=
nil
end
end
local
function
restoreAll()
for
part
in
pairs(backups)
do
restore(part)
end
end
local
function
track(instance)
if
instance:IsA("Humanoid")
then
humanoids[instance]
=
true
end
end
table.insert(connections,
workspace.DescendantAdded:Connect(track))
table.insert(connections,
workspace.DescendantRemoving:Connect(function(instance)
humanoids[instance]
=
nil
if
backups[instance]
then
restore(instance)
end
end))
for
_,
instance
in
ipairs(workspace:GetDescendants())
do
track(instance)
end
CombatTab:CreateSection("NPC Hitbox & Kill Aura")
CombatTab:CreateParagraph({Title
=
"Equipped-tool mode",
Content
=
"Aura activates an equipped tool when a target is within the selected radius. A larger radius does not extend a weapon’s server-validated hit range."})
CombatTab:CreateToggle({Name
=
"NPC Hitbox",
CurrentValue
=
false,
Callback
=
function(value)
settings.Hitbox
=
value
if
not
value
then
restoreAll()
end
end})
CombatTab:CreateSlider({Name
=
"NPC Hitbox Size",
Range
=
{2,
30},
Increment
=
1,
CurrentValue
=
8,
Callback
=
function(value)
settings.Size
=
value
end})
CombatTab:CreateToggle({Name
=
"NPC Kill Aura (Tool)",
Flag
=
"Combat_NPCKillAura",
CurrentValue
=
false,
Callback
=
function(value)
settings.NPC
=
value;
releaseTool()
end})
CombatTab:CreateToggle({Name
=
"Player Kill Aura (Tool)",
Flag
=
"Combat_PlayerKillAura",
CurrentValue
=
false,
Callback
=
function(value)
settings.Player
=
value;
releaseTool()
end})
CombatTab:CreateSlider({Name
=
"Aura Radius (studs)",
Range
=
{3,
100},
Increment
=
1,
CurrentValue
=
30,
Callback
=
function(value)
settings.Radius
=
value
end})
CombatTab:CreateSlider({Name
=
"Aura Attack Interval",
Range
=
{0.15,
2},
Increment
=
0.05,
CurrentValue
=
0.25,
Callback
=
function(value)
settings.Interval
=
value
end})
CombatTab:CreateToggle({Name
=
"Aura Team Check",
CurrentValue
=
true,
Callback
=
function(value)
settings.TeamCheck
=
value
end})
local
elapsed,
lastAttack
=
0,
-math.huge
table.insert(connections,
RunService.Heartbeat:Connect(function(dt)
local
now
=
os.clock()
if
activeTool
and
now
>=
releaseAt
then
releaseTool()
end
elapsed
=
elapsed
+
dt
if
elapsed
<
0.1
then
return
end
elapsed
=
0
if
not
(settings.Hitbox
or
settings.NPC
or
settings.Player)
then
return
end
local
character
=
LocalPlayer.Character
local
root
=
character
and
character:FindFirstChild("HumanoidRootPart")
local
ownHumanoid
=
character
and
character:FindFirstChildOfClass("Humanoid")
local
alive
=
root
and
ownHumanoid
and
ownHumanoid.Health
>
0
local
touched,
targetNearby
=
{},
false
for
humanoid
in
pairs(humanoids)
do
local
model
=
humanoid.Parent
if
model
and
model:IsA("Model")
and
model:IsDescendantOf(workspace)
then
local
owner
=
Players:GetPlayerFromCharacter(model)
local
targetRoot
=
model:FindFirstChild("HumanoidRootPart")
if
targetRoot
and
targetRoot:IsA("BasePart")
and
model
~=
character
and
humanoid.Health
>
0
then
local
npc
=
owner
==
nil
if
settings.Hitbox
and
npc
then
if
not
backups[targetRoot]
then
backups[targetRoot]
=
{Size
=
targetRoot.Size,
Transparency
=
targetRoot.Transparency,
CanCollide
=
targetRoot.CanCollide}
end
touched[targetRoot]
=
true
targetRoot.Size
=
Vector3.new(settings.Size,
settings.Size,
settings.Size)
targetRoot.Transparency
=
0.75
targetRoot.CanCollide
=
false
end
local
teammate
=
owner
and
not
owner.Neutral
and
not
LocalPlayer.Neutral
and
owner.Team
~=
nil
and
owner.Team
==
LocalPlayer.Team
local
eligible
=
(npc
and
settings.NPC)
or
(owner
and
owner
~=
LocalPlayer
and
settings.Player
and
not
(settings.TeamCheck
and
teammate))
if
alive
and
eligible
and
(targetRoot.Position
-
root.Position).Magnitude
<=
settings.Radius
then
targetNearby
=
true
end
end
end
end
for
part
in
pairs(backups)
do
if
not
touched[part]
then
restore(part)
end
end
if
not
alive
or
not
targetNearby
then
releaseTool();
return
end
if
now
-
lastAttack
<
settings.Interval
then
return
end
local
tool
=
character:FindFirstChildOfClass("Tool")
if
not
tool
or
not
tool.Enabled
or
(tool.RequiresHandle
and
not
tool:FindFirstChild("Handle"))
then
return
end
if
type(_G.KoreanHubCombatTryActivate)
==
"function"
then
if
_G.KoreanHubCombatTryActivate(tool,
settings.Interval,
0.15,
"aura",
settings.Radius)
then
lastAttack
=
now
end
return
end
lastAttack
=
now
releaseTool()
local
ok
=
pcall(function()
tool:Activate()
end)
if
ok
then
activeTool
=
tool;
releaseAt
=
now
+
0.05
end
end))
_G.KoreanHubCombatExtrasCleanup
=
function()
for
_,
connection
in
ipairs(connections)
do
connection:Disconnect()
end
releaseTool()
restoreAll()
end
end
 
do
if
type(_G.KoreanHubAutoHoldCleanup)
==
"function"
then
_G.KoreanHubAutoHoldCleanup()
end
local
promptService
=
game:GetService("ProximityPromptService")
local
enabled,
current,
generation
=
false,
nil,
0
local
connections
=
{}
local
function
stop()
generation
=
generation
+
1
if
current
and
current.Parent
then
pcall(function()
current:InputHoldEnd()
end)
end
current
=
nil
end
local
function
begin(prompt)
if
not
enabled
or
current
or
not
prompt.Enabled
or
not
prompt:IsDescendantOf(workspace)
then
return
end
current
=
prompt
generation
=
generation
+
1
local
ticket
=
generation
local
ok
=
pcall(function()
prompt:InputHoldBegin()
end)
if
not
ok
then
current
=
nil;
return
end
task.delay(math.max(0,
prompt.HoldDuration)
+
0.15,
function()
if
ticket
==
generation
and
current
==
prompt
then
stop()
end
end)
end
table.insert(connections,
promptService.PromptShown:Connect(begin))
table.insert(connections,
promptService.PromptHidden:Connect(function(prompt)
if
current
==
prompt
then
stop()
end
end))
MiscTab:CreateToggle({Name
=
"Auto Hold Prompts",
CurrentValue
=
false,
Flag
=
"Misc_AutoHoldPrompts",
Callback
=
function(state)
enabled
=
state
if
not
state
then
stop()
end
end})
_G.KoreanHubAutoHoldCleanup
=
function()
enabled
=
false
stop()
for
_,
connection
in
ipairs(connections)
do
connection:Disconnect()
end
end
end
 
do
if
type(_G.KoreanHubUniversalExtrasCleanup)=="function"
then
_G.KoreanHubUniversalExtrasCleanup()
end
local
show,instant,rangeOn=false,false,false
local
boxes,holds,ranges,connections={},{},{},{}
local
rangeScale=3
local
color=Color3.fromRGB(255,95,75)
local
function
clearBoxes()
for
part,box
in
pairs(boxes)
do
box:Destroy();boxes[part]=nil
end
end
local
function
restoreHolds()
for
prompt,value
in
pairs(holds)
do
pcall(function()
prompt.HoldDuration=value
end)
holds[prompt]=nil
end
end
local
function
restoreRanges()
for
prompt,value
in
pairs(ranges)
do
pcall(function()
prompt.MaxActivationDistance=value
end)
ranges[prompt]=nil
end
end
local
function
shorten(prompt)
if
not
prompt:IsA("ProximityPrompt")
then
return
end
if
instant
then
if
holds[prompt]==nil
then
holds[prompt]=prompt.HoldDuration
end
prompt.HoldDuration=0
end
if
rangeOn
then
if
ranges[prompt]==nil
then
ranges[prompt]=prompt.MaxActivationDistance
end
prompt.MaxActivationDistance=ranges[prompt]*rangeScale
end
end
CombatTab:CreateSection("플레이어 히트박스 표시")
CombatTab:CreateToggle({Name="플레이어 히트박스 테두리",Flag="Combat_HitboxOutline",CurrentValue=false,Callback=function(v)
show=v;if
not
v
then
clearBoxes()
end
end})
CombatTab:CreateColorPicker({Name="히트박스 표시 색상",Flag="Combat_HitboxOutlineColor",Color=color,Callback=function(v)
color=v
end})
MiscTab:CreateSection("길게 누르는 상호작용")
MiscTab:CreateToggle({Name="길게 누르기 → 즉시 누르기",Flag="Misc_InstantPrompt",CurrentValue=false,Callback=function(v)
instant=v
if
v
then
for
_,o
in
ipairs(workspace:GetDescendants())
do
shorten(o)
end
else
restoreHolds()
end
end})
MiscTab:CreateToggle({Name="상호작용 거리 늘리기 (얼음땡 얼리기·녹이기 등)",Flag="Misc_PromptRangeV1",CurrentValue=false,Callback=function(v)
rangeOn=v
if
v
then
for
_,o
in
ipairs(workspace:GetDescendants())
do
shorten(o)
end
else
restoreRanges()
end
end})
MiscTab:CreateSlider({Name="상호작용 거리 배율",Flag="Misc_PromptRangeScaleV1",Range={1,10},Increment=0.5,CurrentValue=3,Callback=function(v)
rangeScale=v
for
prompt
in
pairs(ranges)
do
pcall(function()
prompt.MaxActivationDistance=ranges[prompt]*rangeScale
end)
end
end})
MiscTab:CreateParagraph({Title="적용 범위",Content="Roblox ProximityPrompt의 로컬 대기시간과 MaxActivationDistance(상호작용 거리)를 조절합니다. 직접 만든 버튼이나 서버에서 거리·시간을 따로 확인하는 상호작용에는 적용되지 않을 수 있습니다. 얼음땡의 얼리기·녹이기가 홀드서클 없는 전용 UI라면 ProximityPrompt가 아니라서 이 기능이 안 먹습니다 — 그땐 구조가 달라서 별도로 봐야 합니다. 끄면 원래 값으로 복구합니다."})
table.insert(connections,workspace.DescendantAdded:Connect(shorten))
table.insert(connections,game:GetService("ProximityPromptService").PromptShown:Connect(shorten))
local
elapsed=0
table.insert(connections,RunService.Heartbeat:Connect(function(dt)
elapsed=elapsed+dt;if
elapsed<0.15
then
return
end;elapsed=0
if
not
show
then
return
end
local
keep={}
for
_,p
in
ipairs(Players:GetPlayers())
do
local
char=p.Character
local
hum=char
and
char:FindFirstChildOfClass("Humanoid")
if
p~=LocalPlayer
and
hum
and
hum.Health>0
then
for
_,part
in
ipairs(char:GetChildren())
do
if
part:IsA("BasePart")
and
(part.Name=="HumanoidRootPart"
or
(_G.HitboxExpander
and
part.Transparency>=0.5
and
part.Name~="Handle"))
then
keep[part]=true
local
box=boxes[part]
if
not
box
then
box=Instance.new("SelectionBox");box.Name="KoreanHubHitboxOutline"
box.Adornee=part;box.LineThickness=0.025;box.SurfaceTransparency=1;box.Parent=part;boxes[part]=box
end
box.Color3=color
end
end
end
end
for
part,box
in
pairs(boxes)
do
if
not
keep[part]
then
box:Destroy();boxes[part]=nil
end
end
end))
_G.KoreanHubUniversalExtrasCleanup=function()
show=false;instant=false;rangeOn=false
for
_,c
in
ipairs(connections)
do
c:Disconnect()
end
clearBoxes();restoreHolds();restoreRanges()
end
end
 
do
if
type(_G.KoreanHubTriggerCleanup)=="function"
then
_G.KoreanHubTriggerCleanup()
end
local
enabled,teamCheck=false,true
local
interval,distance,hold=0.25,500,0.08
local
lastLauncherAttempt=-math.huge
local
elapsed,lastMessage=0,nil
local
modelDown=false
local
function
equipped(char)
return
WeaponCompat.equipped(char)
end
local
function
modelReady(model)
local
flag=model:FindFirstChild("Enabled")
return
not
flag
or
not
flag:IsA("BoolValue")
or
flag.Value
end
local
tapAim=false
local
aimPart,aimUntil=nil,0
local
function
chooseFOV(camera,char,radius)
local
center=camera.ViewportSize/2
local
best=radius
or
30
local
selected,selectedPart=nil,nil
local
params=RaycastParams.new()
params.FilterType=Enum.RaycastFilterType.Exclude;params.FilterDescendantsInstances={char}
for
_,p
in
ipairs(Players:GetPlayers())
do
local
c=p.Character
local
h=c
and
c:FindFirstChildOfClass("Humanoid")
local
friend=teamCheck
and
not
p.Neutral
and
not
LocalPlayer.Neutral
and
p.Team
and
p.Team==LocalPlayer.Team
if
p~=LocalPlayer
and
not
friend
and
h
and
h.Health>0
then
local
part=c:FindFirstChild(_G.AimPart=="Body"
and
"HumanoidRootPart"
or
"Head")
or
c:FindFirstChild("HumanoidRootPart")
if
part
and
part:IsA("BasePart")
then
local
delta=part.Position-camera.CFrame.Position
local
pos,visible=camera:WorldToViewportPoint(part.Position)
local
gap=(Vector2.new(pos.X,pos.Y)-center).Magnitude
if
part.Name~=_G.KHTriggerBlack
and
visible
and
pos.Z>0
and
gap<=best
and
delta.Magnitude<=distance
then
local
hit=workspace:Raycast(camera.CFrame.Position,delta,params)
if
not
hit
or
hit.Instance:IsDescendantOf(c)
then
best=gap;selected=p;selectedPart=part
end
end
end
end
end
return
selected,selectedPart
end
local
function
face(camera,part)
if
part
and
part.Parent
and
(part.Position-camera.CFrame.Position).Magnitude>0.01
then
camera.CFrame=CFrame.lookAt(camera.CFrame.Position,part.Position)
end
end
 
local
env=type(getgenv)=='function'
and
getgenv()
or
_G
if
env.KoreanHubShotRedirect
then
env.KoreanHubShotRedirect.Enabled=false
end
if
env.KoreanHubShotRedirectV2
then
env.KoreanHubShotRedirectV2.Enabled=false
end
local
redirect={Enabled=false,OtherGuns=false,Count=0,Cache=nil,Reason="꺼짐"}
env.KoreanHubShotRedirectV2=redirect
local
redirectLabel=CombatTab:CreateLabel("발사 좌표 보정 꺼짐")
local
function
redirectStatus(text)
pcall(function()
redirectLabel:Set(text)
end)
end
local
function
prepareShot()
if
not
redirect.Enabled
or
game.PlaceId~=86437684815842
then
redirect.Reason="지원 게임/스위치 확인";return
end
local
char=LocalPlayer.Character
local
weapon=equipped(char)
if
not
weapon
then
redirect.Reason="총 장착 대기";return
end
local
name=weapon.Name
if
name~="Launcher"
and
not
(redirect.OtherGuns
and
(name=="Flintlock"
or
name=="Paintball"))
then
redirect.Reason=name.." 미지원";return
end
local
remote=weapon:FindFirstChild("Activate")
if
not
remote
or
not
remote:IsA("RemoteEvent")
then
redirect.Reason="Activate 없음";return
end
local
hum=char:FindFirstChildOfClass("Humanoid")
local
camera=workspace.CurrentCamera
if
not
hum
or
hum.Health<=0
or
not
camera
or
UserInputService:GetFocusedTextBox()
then
return
end
local
target,part=chooseFOV(camera,char,_G.KHSilentFOV
or
250)
if
not
target
or
not
part
then
redirect.Reason="보이는 적 없음 · 원래 발사 유지";return
end
local
handle=weapon:FindFirstChild("Handle")
if
handle
and
handle:IsA("BasePart")
then
local
params=RaycastParams.new();params.FilterType=Enum.RaycastFilterType.Exclude
params.FilterDescendantsInstances={char}
local
hit=workspace:Raycast(handle.Position,part.Position-handle.Position,params)
if
hit
and
not
hit.Instance:IsDescendantOf(target.Character)
then
redirect.Reason="총구 앞 장애물 · 원래 발사 유지";return
end
end
redirect.Reason=name.." → "..target.Name
return
{Remote=remote,Point=part.Position,At=os.clock()}
end
local
cacheElapsed,displayElapsed=0,0
local
cacheConnection=RunService.Heartbeat:Connect(function(dt)
if
not
redirect.Enabled
then
redirect.Cache=nil;return
end
cacheElapsed=cacheElapsed+dt;displayElapsed=displayElapsed+dt
if
cacheElapsed<0.05
then
return
end;cacheElapsed=0
local
ok,cache=pcall(prepareShot)
redirect.Cache=ok
and
cache
or
nil
if
not
ok
then
redirect.Reason="준비 오류 · 원래 발사 유지"
end
if
displayElapsed>=0.3
then
displayElapsed=0
redirectStatus("발사 보정 · "..redirect.Reason.." · 좌표 변경 "..redirect.Count.."회 · 명중 미확인")
end
end)
local
function
installRedirect()
if
env.KoreanHubShotRedirectHookV2
then
return
true
end
if
type(hookmetamethod)~="function"
or
type(getnamecallmethod)~="function"
then
return
false
end
local
original
local
function
intercept(self,...)
local
current=env.KoreanHubShotRedirectV2
local
method=getnamecallmethod()
if
current
and
current.Enabled
and
method=="FireServer"
then
local
cache=current.Cache
if
cache
and
self==cache.Remote
and
os.clock()-cache.At>=0
and
os.clock()-cache.At<0.2
then
local
args=table.pack(...)
if
args.n==1
and
typeof(args[1])=="Vector3"
then
current.Count=current.Count+1
 
return
original(self,cache.Point)
end
end
end
return
original(self,...)
end
local
callback=type(newcclosure)=="function"
and
newcclosure(intercept)
or
intercept
local
ok,result=pcall(function()
return
hookmetamethod(game,"__namecall",callback)
end)
if
not
ok
then
redirectStatus("연결 실패 · 보정 꺼짐: "..tostring(result));return
false
end
original=result;env.KoreanHubShotRedirectHookV2=true;return
true
end
CombatTab:CreateToggle({Name="직접 발사 · 탄환 좌표만 상대에게",Flag="Combat_ShotRedirectV1",CurrentValue=false,Callback=function(v)
if
v
and
not
installRedirect()
then
redirect.Enabled=false;redirectStatus("발사 보정 미지원: 후크 API 확인 필요");return
end
redirect.Enabled=v==true
redirectStatus(v
and
"Launcher 발사 좌표 보정 켜짐 · 직접 터치해서 발사하세요"
or
"발사 좌표 보정 꺼짐")
end})
CombatTab:CreateToggle({Name="Flintlock·Paintball 좌표 보정 시험",Flag="Combat_ShotRedirectOtherV1",CurrentValue=false,Callback=function(v)
redirect.OtherGuns=v
end})
CombatTab:CreateParagraph({Title="캐릭터·카메라 고정, 발사 좌표만 변경",Content="별도 발사나 가상 클릭 없이 실제 발사 호출의 Vector3 좌표만 바꿉니다. 확인된 게임의 Launcher 전용이며 Flintlock·Paintball은 단일 Vector3 형식일 때만 선택적으로 시험합니다. 게임마다 다른 총은 지원되지 않습니다. Aimbot·Triggerbot·Player Lock은 끄고 단독으로 시험하세요."})
RunService:UnbindFromRenderStep("KoreanHubTapAimV1")
local
label
local
function
status(text)
if
text~=lastMessage
then
if
label
then
local
ok=pcall(function()
label:Set(text)
end)
if
ok
then
lastMessage=text
end
end
end
end
local
function
stop()
local
release=_G.KoreanHubCombatRelease
if
type(release)=="function"
then
release("trigger")
end
end
CombatTab:CreateSection("모바일 Triggerbot")
local
triggerControl
triggerControl=CombatTab:CreateToggle({Name="Triggerbot · 화면 안의 상대 자동 조준·사용",Flag="Combat_MobileTrigger",CurrentValue=false,Callback=function(v)
enabled=v==true;lastMessage=nil
if
not
enabled
then
stop()
end
status(enabled
and
"Triggerbot 켜짐 · 화면 대상 대기"
or
"Triggerbot 꺼짐")
end})
CombatTab:CreateToggle({Name="Triggerbot 아군 제외",Flag="Combat_TriggerTeam",CurrentValue=true,Callback=function(v)
teamCheck=v
end})
CombatTab:CreateSlider({Name="Triggerbot 발사 간격",Flag="Combat_TriggerInterval",Range={0.05,2},Increment=0.05,CurrentValue=0.25,Callback=function(v)
interval=v
end})
CombatTab:CreateSlider({Name="Triggerbot 최대 거리",Flag="Combat_TriggerDistance",Range={10,2000},Increment=10,CurrentValue=500,Callback=function(v)
distance=v
end})
CombatTab:CreateSlider({Name="Triggerbot 누르는 시간",Flag="Combat_TriggerHold",Range={0.05,1},Increment=0.05,CurrentValue=0.08,Callback=function(v)
hold=v
end})
CombatTab:CreateParagraph({Title="화면 전체 자동 조준·발사 시도",Content="화면 전체에서 상대를 찾아 카메라를 조준합니다. 일반 Tool은 자동 사용을 시도합니다. 가상 마우스를 사용하지 않습니다. 기록된 게임의 Launcher만 Vector3 발사 형식으로 시험 지원하며, 다른 Model 무기는 아직 미지원입니다."})
label=CombatTab:CreateLabel(enabled
and
"Triggerbot 켜짐 · 화면 대상 대기"
or
"Triggerbot 꺼짐")
CombatTab:CreateButton({Name="Triggerbot 상태 동기화",Callback=function()
if
triggerControl
and
type(triggerControl.CurrentValue)=="boolean"
then
enabled=triggerControl.CurrentValue
end
lastMessage=nil
status(enabled
and
"Triggerbot 켜짐 · 화면 대상 대기"
or
"Triggerbot 꺼짐")
end})
local
dwellTarget,dwellAt
local
function
updateTrigger(dt)
if
not
enabled
then
return
end
elapsed=elapsed+dt;if
elapsed<0.04
then
return
end;elapsed=0
local
camera=workspace.CurrentCamera
local
char=LocalPlayer.Character
local
hum=char
and
char:FindFirstChildOfClass("Humanoid")
local
tool=equipped(char)
local
function
waitFor(text)
dwellTarget=nil;stop();status(text)
end
if
not
camera
or
not
hum
or
hum.Health<=0
then
waitFor("Triggerbot · 캐릭터 대기");return
end
if
UserInputService:GetFocusedTextBox()
or
camera.CameraType==Enum.CameraType.Scriptable
then
waitFor("Triggerbot · 입력/연출 중 대기");return
end
if
not
tool
then
waitFor("Triggerbot · 총/툴을 장착하세요");return
end
local
target,part=chooseFOV(camera,char,_G.KHTriggerScan
or
30)
if
not
target
then
waitFor("Triggerbot · "..tool.Name.." 감지 · 화면 안의 상대 대기");return
end
if
dwellTarget~=target
then
dwellTarget=target;dwellAt=os.clock()
end
if
os.clock()-dwellAt<(_G.KHTriggerDelay
or
0)/1000
then
stop();return
end
local
point=camera:WorldToViewportPoint(part.Position)
local
gap=(Vector2.new(point.X,point.Y)-camera.ViewportSize/2).Magnitude
if
gap>(_G.KHTriggerFOV
or
10)
then
face(camera,part);stop();return
end
aimPart=part;aimUntil=os.clock()+0.12
face(camera,part)
if
tool:IsA("Model")
then
if
game.PlaceId~=86437684815842
or
tool.Name~="Launcher"
then
waitFor("자동 조준: "..tool.Name.." · 이 무기의 발사 형식은 아직 미확인")
return
end
if
not
modelReady(tool)
then
waitFor("Launcher · 게임 재사용 대기");return
end
if
os.clock()-lastLauncherAttempt<math.max(interval,0.1)
then
return
end
local
remote=tool:FindFirstChild("Activate")
if
not
remote
or
not
remote:IsA("RemoteEvent")
or
tool.Parent~=LocalPlayer.Character
then
waitFor("Launcher · 장착/Activate 확인 필요");return
end
if
not
part
or
not
part:IsDescendantOf(target.Character)
then
return
end
lastLauncherAttempt=os.clock()
 
 
local
ok,err=pcall(function()
remote:FireServer(part.Position)
end)
if
not
ok
then
status("Launcher 요청 실패: "..tostring(err):sub(1,140));return
end
status("Launcher · "..target.Name.." 위치로 발사 요청 · 명중 미확인")
return
end
local
activate=_G.KoreanHubCombatTryActivate
if
type(activate)~="function"
then
waitFor("Triggerbot · 툴 제어기 없음");return
end
local
ok,result=pcall(activate,tool,interval,hold,"trigger")
if
not
ok
then
waitFor("Triggerbot · 툴 실행 실패");return
end
status("Triggerbot · "..target.Name..(result
and
" · 툴 사용 시도"
or
" · 발사 간격/툴 준비 대기"))
end
local
connection=RunService.Heartbeat:Connect(function(dt)
local
ok,err=pcall(updateTrigger,dt)
if
not
ok
then
stop()
status("Triggerbot 오류: "..tostring(err):sub(1,220))
end
end)
_G.KoreanHubTriggerCleanup=function()
enabled=false;tapAim=false;aimPart=nil
redirect.Enabled=false;redirect.Cache=nil;cacheConnection:Disconnect();connection:Disconnect()
RunService:UnbindFromRenderStep("KoreanHubTapAimV1");stop()
end
end
 
do
if
type(_G.KoreanHubFPSCleanup)
==
"function"
then
_G.KoreanHubFPSCleanup()
end
local
gui
=
Instance.new("ScreenGui")
gui.Name
=
"KoreanHubFPS"
gui.ResetOnSpawn
=
false
gui.DisplayOrder
=
100
gui.Enabled
=
false
local
label
=
Instance.new("TextLabel")
label.Name
=
"Counter"
label.AnchorPoint
=
Vector2.new(1,
0)
label.Position
=
UDim2.new(1,
-14,
0,
12)
label.Size
=
UDim2.fromOffset(126,
34)
label.BackgroundColor3
=
Color3.fromRGB(18,
22,
30)
label.BackgroundTransparency
=
0.15
label.BorderSizePixel
=
0
label.Font
=
Enum.Font.GothamBold
label.TextSize
=
16
label.TextColor3
=
Color3.fromRGB(125,
240,
180)
label.Text
=
"FPS: --"
label.Parent
=
gui
local
corner
=
Instance.new("UICorner")
corner.CornerRadius
=
UDim.new(0,
8)
corner.Parent
=
label
gui.Parent
=
LocalPlayer:WaitForChild("PlayerGui")
local
elapsed,
frames,
connection
=
0,
0,
nil
local
function
setVisible(value)
gui.Enabled
=
value
if
connection
then
connection:Disconnect();
connection
=
nil
end
elapsed,
frames
=
0,
0
label.Text
=
"FPS: --"
if
value
then
connection
=
RunService.RenderStepped:Connect(function(dt)
elapsed,
frames
=
elapsed
+
dt,
frames
+
1
if
elapsed
>=
0.5
then
local
fps
=
math.floor(frames
/
elapsed
+
0.5)
label.Text
=
"FPS: "
..
tostring(fps)
label.TextColor3
=
fps
>=
55
and
Color3.fromRGB(125,
240,
180)
or
(fps
>=
30
and
Color3.fromRGB(255,
212,
110)
or
Color3.fromRGB(255,
120,
120))
elapsed,
frames
=
0,
0
end
end)
end
end
PerfTab:CreateToggle({Name
=
"Show FPS",
CurrentValue
=
false,
Flag
=
"Perf_ShowFPS",
Callback
=
setVisible})
_G.KoreanHubFPSCleanup
=
function()
if
connection
then
connection:Disconnect()
end
gui:Destroy()
end
end
 
do
local
ThemeTab
=
Window:CreateTab("Theme",
4483362458)
local
themes
=
Oasis.ThemeNames
local
allowed
=
{}
for
_,
name
in
ipairs(themes)
do
allowed[name]
=
true
end
local
themeDropdown
=
ThemeTab:CreateDropdown({
Name
=
"Select Theme",
Options
=
themes,
CurrentOption
=
{Oasis:GetThemeName()},
MultipleOptions
=
false,
Flag
=
"Theme_SelectedTheme",
Callback
=
function(option)
local
name
=
type(option)
==
"table"
and
option[1]
or
option
if
not
allowed[name]
then
return
end
Window.ModifyTheme(name)
end,
})
ThemeTab:CreateButton({
Name
=
"Reset Theme to Dark",
Callback
=
function()
themeDropdown:Set({"Dark"})
end,
})
end
 
do
if
type(_G.KoreanHubSwordAICleanup)=="function"
then
pcall(_G.KoreanHubSwordAICleanup)
end
local
function
mount(onChanged)
local
active=true
local
teamCheck,strictTeam=true,true
local
function
teamRelation(a,b)
 
for
_,field
in
ipairs({"Team","TeamName","TeamId","TeamID","Faction","Side"})
do
local
function
get(p)
for
_,owner
in
ipairs({p,p.Character
or
p})
do
local
value=owner:GetAttribute(field)
if
value==nil
then
local
obj=owner:FindFirstChild(field)
if
obj
and
obj:IsA("ValueBase")
then
value=obj.Value
end
end
if
value~=nil
and
tostring(value)~=""
then
return
tostring(value):lower():gsub("%s+","")
end
end
end
local
x,y=get(a),get(b)
if
x
and
y
then
return
x==y
and
"ally"
or
"enemy"
end
end
if
a.Team
and
b.Team
then
return
a.Team==b.Team
and
"ally"
or
"enemy"
end
return
"unknown"
end
local
function
eligiblePlayer(p)
if
not
p
or
p==game:GetService("Players").LocalPlayer
then
return
false
end
if
not
teamCheck
then
return
true
end
local
relation=teamRelation(game:GetService("Players").LocalPlayer,p)
return
relation=="enemy"
or
(relation=="unknown"
and
not
strictTeam)
end
local
connections={}
local
function
track(signal,fn)
local
connection=signal:Connect(function(...)
if
active
then
return
fn(...)
end
end)
connections[#connections+1]=connection
return
connection
end
local
Players
=
game:GetService("Players")
local
RunService
=
game:GetService("RunService")
local
UserInputService
=
game:GetService("UserInputService")
local
TweenService
=
game:GetService("TweenService")
local
Workspace
=
game:GetService("Workspace")
local
LocalPlayer
=
Players.LocalPlayer
local
PlayerGui
=
LocalPlayer:WaitForChild("PlayerGui")
local
gui
=
Instance.new("ScreenGui")
gui.Name
=
"KoreanHubSwordAI"
gui.ResetOnSpawn
=
false
gui.IgnoreGuiInset
=
true
gui.Parent
=
PlayerGui
local
button
=
Instance.new("TextButton")
button.Size
=
UDim2.fromOffset(150,
44)
button.Position
=
UDim2.new(0.5,
-75,
0.72,
0)
button.BackgroundColor3
=
Color3.fromRGB(35,
35,
35)
button.TextColor3
=
Color3.fromRGB(255,
255,
255)
button.TextScaled
=
true
button.Font
=
Enum.Font.GothamSemibold
button.Text
=
"AI: OFF"
button.AutoButtonColor
=
true
button.Parent
=
gui
local
corner
=
Instance.new("UICorner")
corner.CornerRadius
=
UDim.new(0,
10)
corner.Parent
=
button
local
stroke
=
Instance.new("UIStroke")
stroke.Thickness
=
1
stroke.Color
=
Color3.fromRGB(90,
90,
90)
stroke.Parent
=
button
local
enabled
=
false
local
function
alive()
return
active
and
enabled
end
local
dragging
=
false
local
dragStart
local
startPos
local
activeTouch
local
dragInput
local
currentCharacter
local
currentHumanoid
local
currentRoot
local
targetState
=
{}
local
lastAutoEquip
=
0
local
lastAttack
=
0
local
lastJump
=
0
local
sideSign
=
1
local
function
f_up(val,
min,
max)
return
math.clamp((val
-
min)
/
(max
-
min),
0,
1)
end
local
function
f_down(val,
min,
max)
return
math.clamp(1
-
((val
-
min)
/
(max
-
min)),
0,
1)
end
local
function
f_tri(val,
min,
mid,
max)
if
val
<=
min
or
val
>=
max
then
return
0
end
if
val
<=
mid
then
return
(val
-
min)
/
(mid
-
min)
end
return
1
-
((val
-
mid)
/
(max
-
mid))
end
local
function
setButtonState()
button.Text
=
enabled
and
"AI: ON"
or
"AI: OFF"
button.BackgroundColor3
=
enabled
and
Color3.fromRGB(35,
85,
45)
or
Color3.fromRGB(35,
35,
35)
end
local
function
getCharacter()
currentCharacter
=
LocalPlayer.Character
or
LocalPlayer.CharacterAdded:Wait()
currentHumanoid
=
currentCharacter:FindFirstChildOfClass("Humanoid")
or
currentCharacter:WaitForChild("Humanoid")
currentRoot
=
currentCharacter:FindFirstChild("HumanoidRootPart")
or
currentCharacter:WaitForChild("HumanoidRootPart")
end
local
function
getCharHumRoot(plr)
local
char
=
plr.Character
if
not
char
then
return
end
local
hum
=
char:FindFirstChildOfClass("Humanoid")
local
root
=
char:FindFirstChild("HumanoidRootPart")
if
not
hum
or
not
root
or
hum.Health
<=
0
then
return
end
return
char,
hum,
root
end
local
function
getEquippedTool(char)
if
not
char
then
return
nil
end
for
_,
obj
in
ipairs(char:GetChildren())
do
if
obj:IsA("Tool")
then
return
obj
end
end
return
nil
end
local
function
getPreferredTool()
local
charTool
=
getEquippedTool(currentCharacter)
if
charTool
then
return
charTool
end
local
backpack
=
LocalPlayer:FindFirstChildOfClass("Backpack")
if
backpack
then
for
_,
obj
in
ipairs(backpack:GetChildren())
do
if
obj:IsA("Tool")
then
return
obj
end
end
end
end
local
function
getAdvancedToolMetrics(tool,
char)
local
root
=
char
and
char:FindFirstChild("HumanoidRootPart")
local
fallbackPos
=
root
and
root.Position
or
Vector3.zero
local
defaultMetrics
=
{
size
=
Vector3.new(1,
1,
1),
thickness
=
1,
length
=
1,
com
=
fallbackPos,
tip
=
root
and
(root.CFrame
*
CFrame.new(0,
0,
-2)).Position
or
Vector3.zero,
effectiveReach
=
3.0,
swingRadius
=
4.5,
max
=
5.0,
handlePos
=
fallbackPos
}
if
not
tool
then
return
defaultMetrics
end
local
parts
=
{}
for
_,
obj
in
ipairs(tool:GetDescendants())
do
if
obj:IsA("BasePart")
then
table.insert(parts,
obj)
end
end
local
handle
=
tool:FindFirstChild("Handle")
if
not
handle
and
#parts
>
0
then
handle
=
parts[1]
end
if
#parts
==
0
or
not
handle
then
return
defaultMetrics
end
local
totalMass
=
0
local
comWeighted
=
Vector3.zero
local
handleCF
=
handle.CFrame
local
minExtents
=
Vector3.new(math.huge,
math.huge,
math.huge)
local
maxExtents
=
Vector3.new(-math.huge,
-math.huge,
-math.huge)
for
_,
part
in
ipairs(parts)
do
totalMass
=
totalMass
+
part.Mass
comWeighted
=
comWeighted
+
part.Position
*
part.Mass
local
partCF
=
part.CFrame
local
size
=
part.Size
local
hs
=
size
/
2
local
corners
=
{
partCF
*
Vector3.new(hs.X,
hs.Y,
hs.Z),
partCF
*
Vector3.new(-hs.X,
hs.Y,
hs.Z),
partCF
*
Vector3.new(hs.X,
-hs.Y,
hs.Z),
partCF
*
Vector3.new(-hs.X,
-hs.Y,
hs.Z),
partCF
*
Vector3.new(hs.X,
hs.Y,
-hs.Z),
partCF
*
Vector3.new(-hs.X,
hs.Y,
-hs.Z),
partCF
*
Vector3.new(hs.X,
-hs.Y,
-hs.Z),
partCF
*
Vector3.new(-hs.X,
-hs.Y,
-hs.Z),
}
for
_,
corner
in
ipairs(corners)
do
local
localPos
=
handleCF:PointToObjectSpace(corner)
minExtents
=
Vector3.new(
math.min(minExtents.X,
localPos.X),
math.min(minExtents.Y,
localPos.Y),
math.min(minExtents.Z,
localPos.Z)
)
maxExtents
=
Vector3.new(
math.max(maxExtents.X,
localPos.X),
math.max(maxExtents.Y,
localPos.Y),
math.max(maxExtents.Z,
localPos.Z)
)
end
end
local
com
=
totalMass
>
0
and
(comWeighted
/
totalMass)
or
handle.Position
local
dimensions
=
maxExtents
-
minExtents
local
length
=
math.max(dimensions.X,
dimensions.Y,
dimensions.Z)
local
thickness
=
math.min(dimensions.X,
dimensions.Y,
dimensions.Z)
local
tipLocalPos
=
Vector3.zero
if
length
==
dimensions.X
then
tipLocalPos
=
Vector3.new(math.abs(maxExtents.X)
>
math.abs(minExtents.X)
and
maxExtents.X
or
minExtents.X,
0,
0)
elseif
length
==
dimensions.Y
then
tipLocalPos
=
Vector3.new(0,
math.abs(maxExtents.Y)
>
math.abs(minExtents.Y)
and
maxExtents.Y
or
minExtents.Y,
0)
else
tipLocalPos
=
Vector3.new(0,
0,
math.abs(maxExtents.Z)
>
math.abs(minExtents.Z)
and
maxExtents.Z
or
minExtents.Z)
end
local
tipWorld
=
handleCF:PointToWorldSpace(tipLocalPos)
local
effectiveReach
=
(tipWorld
-
handle.Position).Magnitude
local
gripOffset
=
root
and
(handle.Position
-
root.Position).Magnitude
or
1.5
local
swingRadius
=
effectiveReach
+
gripOffset
return
{
size
=
dimensions,
thickness
=
thickness,
length
=
length,
com
=
com,
tip
=
tipWorld,
effectiveReach
=
effectiveReach,
swingRadius
=
swingRadius,
max
=
length
+
gripOffset,
handlePos
=
handle.Position
}
end
local
function
equipToolDelayed()
if
tick()
-
lastAutoEquip
<
0.8
then
return
end
lastAutoEquip
=
tick()
task.delay(0.2,
function()
if
not
alive()
then
return
end
getCharacter()
if
not
currentHumanoid
or
currentHumanoid.Health
<=
0
then
return
end
local
tool
=
getPreferredTool()
if
tool
and
tool.Parent
~=
currentCharacter
then
pcall(function()
currentHumanoid:EquipTool(tool)
end)
end
end)
end
local
function
scanTargetParts(targetChar)
local
root
=
targetChar
and
targetChar:FindFirstChild("HumanoidRootPart")
if
not
root
then
return
{}
end
local
probe
=
Instance.new("Part")
probe.Name
=
"TargetProbe"
probe.Anchored
=
true
probe.CanCollide
=
false
probe.CanTouch
=
false
probe.CanQuery
=
true
probe.Transparency
=
1
probe.Size
=
Vector3.new(7,
8,
7)
probe.CFrame
=
root.CFrame
probe.Parent
=
Workspace
local
overlap
=
OverlapParams.new()
overlap.FilterType
=
Enum.RaycastFilterType.Exclude
overlap.FilterDescendantsInstances
=
{
currentCharacter,
probe
}
overlap.RespectCanCollide
=
false
local
hits
=
{}
local
ok,
parts
=
pcall(function()
return
Workspace:GetPartsInPart(probe,
overlap)
end)
if
ok
and
parts
then
for
_,
part
in
ipairs(parts)
do
local
model
=
part:FindFirstAncestorOfClass("Model")
if
model
==
targetChar
or
part:IsDescendantOf(targetChar)
then
hits[#hits
+
1]
=
part
end
end
end
probe:Destroy()
return
hits
end
local
function
targetStats(targetHum,
targetRoot,
dt)
local
state
=
targetState[targetHum]
local
pos
=
targetRoot.Position
local
vel
=
targetRoot.AssemblyLinearVelocity
local
aVel
=
targetRoot.AssemblyAngularVelocity
local
now
=
tick()
if
not
state
then
state
=
{
pos
=
pos,
vel
=
vel,
acc
=
Vector3.zero,
jerk
=
Vector3.zero,
aVel
=
aVel,
lastPos
=
pos,
lastVel
=
vel,
lastUpdate
=
now,
lastStopT
=
now,
lastDir
=
Vector3.zero,
rhythm
=
0,
mirrorBias
=
0,
}
targetState[targetHum]
=
state
end
local
a
=
dt
>
0
and
((vel
-
state.lastVel)
/
math.max(dt,
1
/
240))
or
Vector3.zero
local
j
=
dt
>
0
and
((a
-
state.acc)
/
math.max(dt,
1
/
240))
or
Vector3.zero
state.pos
=
state.pos:Lerp(pos,
0.45)
state.vel
=
state.vel:Lerp(vel,
0.45)
state.acc
=
state.acc:Lerp(a,
0.35)
state.jerk
=
state.jerk:Lerp(j,
0.25)
state.aVel
=
state.aVel:Lerp(aVel,
0.45)
local
flatVel
=
Vector3.new(vel.X,
0,
vel.Z)
local
speed
=
flatVel.Magnitude
local
speedLow
=
f_down(speed,
0.1,
currentHumanoid
and
currentHumanoid.WalkSpeed
*
0.3
or
5)
if
speedLow
>
0.5
then
if
now
-
state.lastStopT
>
0.15
then
state.rhythm
=
math.clamp(state.rhythm
+
0.08,
0,
1)
state.lastStopT
=
now
end
else
state.rhythm
=
math.clamp(state.rhythm
-
0.02,
0,
1)
end
local
moveDir
=
speed
>
0.1
and
flatVel.Unit
or
Vector3.zero
if
moveDir.Magnitude
>
0
then
local
lateral
=
(state.lastDir.Magnitude
>
0
and
moveDir:Dot(state.lastDir)
or
1)
local
mirrorFactor
=
f_down(lateral,
0,
0.6)
if
mirrorFactor
>
0.3
then
state.mirrorBias
=
math.clamp(state.mirrorBias
+
(mirrorFactor
*
0.1),
-1,
1)
else
state.mirrorBias
=
state.mirrorBias
*
0.92
end
end
state.lastDir
=
moveDir
state.lastVel
=
vel
state.lastPos
=
pos
state.lastUpdate
=
now
local
momentumFuzzy
=
f_up(speed,
currentHumanoid
and
currentHumanoid.WalkSpeed
*
0.5
or
8,
currentHumanoid
and
currentHumanoid.WalkSpeed
*
2.5
or
40)
local
rhythmFuzzy
=
f_up(state.rhythm,
0,
1)
local
ping
=
0.15
+
(momentumFuzzy
*
0.1)
+
(rhythmFuzzy
*
0.1)
local
predicted
=
state.pos
+
state.vel
*
ping
+
state.acc
*
(ping
*
ping
*
0.5)
+
state.jerk
*
(ping
*
ping
*
ping
/
6)
return
state,
predicted,
speed,
ping
end
local
function
chooseTarget()
local
bestPlr,
bestChar,
bestHum,
bestRoot
local
bestScore
=
math.huge
for
_,
plr
in
ipairs(Players:GetPlayers())
do
if
eligiblePlayer(plr)
then
local
char,
hum,
root
=
getCharHumRoot(plr)
if
char
and
hum
and
root
then
local
dist
=
(root.Position
-
currentRoot.Position).Magnitude
local
healthFactor
=
hum.Health
>
0
and
(hum.Health
/
math.max(hum.MaxHealth,
1))
or
0
local
score
=
dist
*
(1
+
(1
-
healthFactor)
*
0.18)
if
score
<
bestScore
then
bestScore
=
score
bestPlr,
bestChar,
bestHum,
bestRoot
=
plr,
char,
hum,
root
end
end
end
end
return
bestPlr,
bestChar,
bestHum,
bestRoot
end
local
function
predictedLookAt(targetChar,
targetHum,
targetRoot,
dt,
myMetrics)
local
state,
predictedRoot,
speed,
ping
=
targetStats(targetHum,
targetRoot,
dt)
local
angularOffset
=
state.aVel
*
ping
local
rotationDelta
=
CFrame.Angles(angularOffset.X,
angularOffset.Y,
angularOffset.Z)
local
handlePos
=
myMetrics.handlePos
local
bestAttackPoint
=
predictedRoot
local
bestScore
=
math.huge
for
_,
part
in
ipairs(targetChar:GetChildren())
do
if
part:IsA("BasePart")
then
local
rootToPart
=
part.Position
-
targetRoot.Position
local
rotatedRootToPart
=
rotationDelta
*
rootToPart
local
predictedPartPos
=
predictedRoot
+
rotatedRootToPart
local
toTarget
=
predictedPartPos
-
handlePos
local
distToHandle
=
toTarget.Magnitude
local
rayParams
=
RaycastParams.new()
rayParams.FilterType
=
Enum.RaycastFilterType.Exclude
rayParams.FilterDescendantsInstances
=
{currentCharacter,
targetChar}
rayParams.IgnoreWater
=
true
local
ray
=
Workspace:Raycast(handlePos,
toTarget.Unit
*
distToHandle,
rayParams)
local
obstructionScore
=
ray
and
1
or
0
local
score
=
distToHandle
+
(obstructionScore
*
40)
if
score
<
bestScore
then
bestScore
=
score
bestAttackPoint
=
predictedPartPos
end
end
end
local
myPos
=
currentRoot.Position
local
flatTargetPos
=
Vector3.new(bestAttackPoint.X,
myPos.Y,
bestAttackPoint.Z)
local
desiredVector
=
flatTargetPos
-
myPos
if
desiredVector.Magnitude
>
0.001
then
desiredVector
=
desiredVector.Unit
else
desiredVector
=
currentRoot.CFrame.LookVector
end
local
currentLook
=
currentRoot.CFrame.LookVector
local
currentFlatLook
=
Vector3.new(currentLook.X,
0,
currentLook.Z)
if
currentFlatLook.Magnitude
>
0.001
then
currentFlatLook
=
currentFlatLook.Unit
else
currentFlatLook
=
desiredVector
end
local
turnSpeed
=
12
+
(speed
*
0.25)
local
t
=
math.clamp(dt
*
turnSpeed,
0,
1)
local
dotProduct
=
math.clamp(currentFlatLook:Dot(desiredVector),
-1,
1)
local
theta
=
math.acos(dotProduct)
local
slerpedVector
if
theta
>
0.001
then
local
sinTheta
=
math.sin(theta)
local
weight1
=
math.sin((1
-
t)
*
theta)
/
sinTheta
local
weight2
=
math.sin(t
*
theta)
/
sinTheta
slerpedVector
=
(currentFlatLook
*
weight1)
+
(desiredVector
*
weight2)
else
slerpedVector
=
desiredVector
end
slerpedVector
=
slerpedVector.Unit
local
upVector
=
Vector3.yAxis
local
rightVector
=
slerpedVector:Cross(upVector).Unit
local
backVector
=
-slerpedVector
return
CFrame.fromMatrix(myPos,
rightVector,
upVector,
backVector),
state,
predictedRoot,
speed,
bestAttackPoint
end
local
evade={Enabled=true,Strength=0.85,MinSwitch=0.35,MaxSwitch=0.8,NextSwitch=0,Sign=1}
local
nav={target=nil,points=nil,index=2,busy=false,last=-math.huge,epoch=0,owned=false}
local
controls
pcall(function()
local
scripts=LocalPlayer:FindFirstChild("PlayerScripts")
local
module=scripts
and
scripts:FindFirstChild("PlayerModule")
if
module
then
controls=require(module):GetControls()
end
end)
local
function
releaseMovement()
if
nav.owned
and
currentHumanoid
then
currentHumanoid:Move(Vector3.zero,false)
end
nav.owned=false
end
local
function
sightClear(targetChar,targetRoot)
if
not
currentRoot
or
not
targetRoot
then
return
false
end
local
params=RaycastParams.new()
params.FilterType=Enum.RaycastFilterType.Exclude;params.FilterDescendantsInstances={currentCharacter}
local
head=currentCharacter:FindFirstChild("Head")
local
origin=head
and
head.Position
or
currentRoot.Position
local
delta=targetRoot.Position-origin
local
hit=Workspace:Raycast(origin,delta,params)
return
not
hit
or
hit.Instance:IsDescendantOf(targetChar)
end
local
function
movementClear(direction,targetChar)
if
direction.Magnitude<0.01
then
return
true
end
local
params=RaycastParams.new()
params.FilterType=Enum.RaycastFilterType.Exclude;params.FilterDescendantsInstances={currentCharacter,targetChar}
params.RespectCanCollide=true
local
length=math.max(3,currentHumanoid.WalkSpeed*0.18)
return
Workspace:Blockcast(CFrame.new(currentRoot.Position),Vector3.new(2,3,2),direction.Unit*length,params)==nil
end
local
function
groundAhead(direction,targetChar)
if
direction.Magnitude<0.01
then
return
true
end
local
params=RaycastParams.new()
params.FilterType=Enum.RaycastFilterType.Exclude;params.FilterDescendantsInstances={currentCharacter,targetChar}
params.RespectCanCollide=true
local
step=math.max(3,currentHumanoid.WalkSpeed*0.2)
for
_,fraction
in
ipairs({0.5,1})
do
local
origin=currentRoot.Position+direction.Unit*step*fraction+Vector3.new(0,2,0)
local
hit=Workspace:Raycast(origin,Vector3.new(0,-9,0),params)
if
not
hit
or
hit.Normal.Y<0.5
then
return
false
end
end
return
true
end
local
function
evadeDirection(base,forward,right,dist,spacing,targetChar,targetRoot)
if
not
evade.Enabled
or
dist>math.max(18,spacing*2.5)
then
return
base
end
local
now=os.clock()
if
now>=evade.NextSwitch
then
evade.Sign=-evade.Sign
evade.NextSwitch=now+evade.MinSwitch+math.random()*(evade.MaxSwitch-evade.MinSwitch)
end
local
facing=targetRoot.CFrame.LookVector:Dot(-forward)
local
retreat=dist<spacing*0.8
and
0.9
or
(facing>0.65
and
0.35
or
0.05)
local
candidates={
base*(1-evade.Strength)+right*evade.Sign*evade.Strength-forward*retreat,
-right*evade.Sign-forward*retreat,
-forward,
}
for
i,direction
in
ipairs(candidates)
do
if
direction.Magnitude>0.01
then
direction=direction.Unit
if
movementClear(direction,targetChar)
and
groundAhead(direction,targetChar)
then
if
i==2
then
evade.Sign=-evade.Sign;evade.NextSwitch=now+0.35
end
return
direction
end
end
end
return
Vector3.zero
end
local
function
requestPath(targetRoot)
if
nav.target~=targetRoot
then
nav.target=targetRoot;nav.points=nil;nav.epoch=nav.epoch+1
end
if
nav.busy
or
os.clock()-nav.last<0.8
then
return
end
nav.busy=true;nav.last=os.clock()
local
epoch,root,start=nav.epoch,currentRoot,currentRoot.Position
local
destination=targetRoot.Position
task.spawn(function()
local
ok,path=pcall(function()
local
p=game:GetService("PathfindingService"):CreatePath({AgentRadius=2,AgentHeight=5,AgentCanJump=true,WaypointSpacing=3})
p:ComputeAsync(start,destination)
return
p
end)
nav.busy=false
if
not
active
or
not
enabled
or
epoch~=nav.epoch
or
root~=currentRoot
then
return
end
if
ok
and
path.Status==Enum.PathStatus.Success
then
nav.points=path:GetWaypoints();nav.index=2
else
nav.points=nil
end
end)
end
local
function
steer(direction,targetChar,targetRoot)
local
routeBlocked=not
sightClear(targetChar,targetRoot)
or
not
movementClear(direction,targetChar)
if
routeBlocked
then
requestPath(targetRoot)
local
points=nav.points
local
waypoint=points
and
points[nav.index]
while
waypoint
and
(Vector3.new(waypoint.Position.X,currentRoot.Position.Y,waypoint.Position.Z)-currentRoot.Position).Magnitude<2
do
nav.index=nav.index+1;waypoint=points[nav.index]
end
if
not
waypoint
then
releaseMovement();return
end
local
delta=waypoint.Position-currentRoot.Position
direction=Vector3.new(delta.X,0,delta.Z)
if
direction.Magnitude<0.01
then
releaseMovement();return
end
direction=direction.Unit
if
waypoint.Action==Enum.PathWaypointAction.Jump
then
currentHumanoid.Jump=true
end
if
not
movementClear(direction,targetChar)
then
releaseMovement();return
end
else
nav.points=nil
end
if
not
groundAhead(direction,targetChar)
then
releaseMovement();return
end
nav.owned=true
currentHumanoid:Move(direction,false)
end
local
function
controlMovement(targetChar,
targetHum,
targetRoot,
state,
predicted,
speed,
myMetrics,
targetMetrics)
local
myPos
=
currentRoot.Position
local
toTarget
=
predicted
-
myPos
local
flat
=
Vector3.new(toTarget.X,
0,
toTarget.Z)
local
dist
=
flat.Magnitude
if
dist
<
0.001
then
currentHumanoid:Move(Vector3.zero,
false)
return
dist
end
local
healthRatio
=
currentHumanoid.Health
/
math.max(1,
currentHumanoid.MaxHealth)
local
enemyHealthRatio
=
targetHum.Health
/
math.max(1,
targetHum.MaxHealth)
local
aggroFuzzy
=
f_up(healthRatio
-
enemyHealthRatio
+
0.2,
0,
1)
local
baseSpacing
=
myMetrics.effectiveReach
local
safeSpacing
=
math.max(myMetrics.effectiveReach,
targetMetrics.swingRadius
+
targetMetrics.length
*
0.5)
local
desiredSpacing
=
(baseSpacing
*
aggroFuzzy)
+
(safeSpacing
*
(1
-
aggroFuzzy))
local
forward
=
flat.Unit
local
right
=
Vector3.new(-forward.Z,
0,
forward.X)
local
distClose
=
f_down(dist,
desiredSpacing
*
0.6,
desiredSpacing)
local
distMed
=
f_tri(dist,
desiredSpacing
*
0.7,
desiredSpacing,
desiredSpacing
*
1.4)
local
distFar
=
f_up(dist,
desiredSpacing
*
1.1,
desiredSpacing
*
2.5)
local
fwdWeight
=
(distFar
*
1.0)
+
(distMed
*
(aggroFuzzy
*
0.6
-
0.2))
+
(distClose
*
-0.85)
local
strafeWeight
=
(distFar
*
0.1)
+
(distMed
*
0.95)
+
(distClose
*
0.8)
local
mirrorForce
=
f_up(math.abs(state.mirrorBias),
0.3,
1)
if
mirrorForce
>
0.5
then
sideSign
=
state.mirrorBias
>
0
and
-1
or
1
else
if
(tick()
%
1.5)
<
0.05
then
sideSign
=
math.random()
>
0.5
and
1
or
-1
end
end
local
desiredDir
=
(forward
*
fwdWeight)
+
(right
*
sideSign
*
strafeWeight)
if
desiredDir.Magnitude
>
0.01
then
desiredDir
=
desiredDir.Unit
end
desiredDir=evadeDirection(desiredDir,forward,right,dist,desiredSpacing,targetChar,targetRoot)
if
currentHumanoid
then
steer(desiredDir,targetChar,targetRoot)
end
local
jumpUrgency
=
(distClose
*
0.8)
+
(f_up(state.rhythm,
0.4,
1)
*
0.4)
if
jumpUrgency
>
0.75
and
currentHumanoid
and
currentHumanoid.FloorMaterial
~=
Enum.Material.Air
then
if
tick()
-
lastJump
>
0.8
then
lastJump
=
tick()
currentHumanoid.Jump
=
true
end
end
return
dist
end
local
function
attackTarget(targetChar,
targetHum,
targetRoot,
dist,
myMetrics,
targetMetrics)
if
not
eligiblePlayer(Players:GetPlayerFromCharacter(targetChar))
or
not
sightClear(targetChar,targetRoot)
then
return
end
local
tool
=
getPreferredTool()
if
not
tool
then
return
end
if
tool.Parent
~=
currentCharacter
then
equipToolDelayed()
return
end
if
tick()
-
lastAttack
<
0.18
then
return
end
local
attackDesire
=
f_down(dist,
myMetrics.effectiveReach
*
0.8,
myMetrics.swingRadius
*
1.2)
local
scanHits
=
scanTargetParts(targetChar)
if
#scanHits
>
0
then
attackDesire
=
1
end
local
toolDist
=
(targetMetrics.com
-
currentRoot.Position).Magnitude
local
toolThreat
=
f_down(toolDist,
targetMetrics.effectiveReach
*
0.5,
targetMetrics.swingRadius
*
1.1)
attackDesire
=
math.max(attackDesire,
toolThreat
*
0.8)
if
attackDesire
>
0.6
then
lastAttack
=
tick()
pcall(function()
tool:Activate()
end)
task.delay(0.05,
function()
if
not
alive()
or
not
eligiblePlayer(Players:GetPlayerFromCharacter(targetChar))
or
not
sightClear(targetChar,targetRoot)
then
return
end
local
currentTool
=
getPreferredTool()
if
currentTool
and
currentTool.Parent
==
currentCharacter
then
pcall(function()
currentTool:Activate()
end)
end
end)
end
end
local
recovery={Enabled=true,MissingAt=nil,ResumeAt=0,RetryAt=0,Attempts=0,Character=nil,Tool=nil}
local
function
resetRecovery()
recovery.MissingAt=nil;recovery.ResumeAt=0;recovery.RetryAt=0
recovery.Attempts=0;recovery.Character=currentCharacter;recovery.Tool=nil
end
local
function
equipmentReady()
if
recovery.Character~=currentCharacter
then
resetRecovery()
end
local
equipped=getEquippedTool(currentCharacter)
if
equipped
then
 
if
recovery.MissingAt
then
resetRecovery()
end
if
button.Text~="AI: ON"
then
setButtonState()
end
return
true
end
releaseMovement()
local
candidate=getPreferredTool()
if
not
candidate
then
button.Text="AI: ON · 무기 대기";return
false
end
if
not
recovery.Enabled
then
button.Text="AI: ON · 직접 무기를 장착하세요";return
false
end
local
now=os.clock()
if
recovery.Tool~=candidate
then
resetRecovery();recovery.Tool=candidate
end
if
not
recovery.MissingAt
then
recovery.MissingAt=now
end
if
now<recovery.ResumeAt
then
button.Text="AI: 복구 대기";return
false
end
if
now<recovery.RetryAt
then
button.Text="AI: 장착 확인 중";return
false
end
if
now-recovery.MissingAt<1.2
then
equipToolDelayed();button.Text="AI: 무기 장착 중";return
false
end
if
recovery.Attempts>=3
then
recovery.Attempts=0;recovery.ResumeAt=now+5;recovery.MissingAt=now+5
button.Text="AI: 장착 제한 · 5초 뒤 재시도";return
false
end
recovery.Attempts=recovery.Attempts+1
recovery.ResumeAt=now+0.6;recovery.RetryAt=now+1.8
nav.epoch=nav.epoch+1;nav.points=nil
pcall(function()
candidate:Deactivate()
end)
pcall(function()
currentHumanoid:UnequipTools()
end)
local
character,humanoid=currentCharacter,currentHumanoid
task.delay(0.6,function()
if
not
active
or
not
enabled
or
not
recovery.Enabled
or
currentCharacter~=character
or
not
humanoid.Parent
or
humanoid.Health<=0
or
humanoid.Sit
or
currentRoot.Anchored
then
return
end
if
candidate.Parent==LocalPlayer:FindFirstChildOfClass("Backpack")
then
pcall(function()
humanoid:EquipTool(candidate)
end)
end
end)
button.Text="AI: 장착 복구 중"
return
false
end
local
function
updateAI(dt)
if
not
enabled
then
return
end
if
not
currentCharacter
or
not
currentCharacter.Parent
or
not
currentHumanoid
or
currentHumanoid.Health
<=
0
or
not
currentRoot
then
getCharacter()
return
end
if
controls
then
local
ok,move=pcall(function()
return
controls:GetMoveVector()
end)
if
ok
and
move.Magnitude>0.15
then
releaseMovement();return
end
end
if
currentHumanoid.Sit
or
currentRoot.Anchored
then
releaseMovement();return
end
if
not
equipmentReady()
then
return
end
local
_,
targetChar,
targetHum,
targetRoot
=
chooseTarget()
if
not
targetChar
then
nav.epoch=nav.epoch+1;nav.points=nil;releaseMovement();return
end
local
myTool
=
getPreferredTool()
local
targetTool
=
getEquippedTool(targetChar)
local
myMetrics
=
getAdvancedToolMetrics(myTool,
currentCharacter)
local
targetMetrics
=
getAdvancedToolMetrics(targetTool,
targetChar)
local
lookMatrix,
state,
predicted,
speed,
_
=
predictedLookAt(targetChar,
targetHum,
targetRoot,
dt,
myMetrics)
if
currentRoot
and
currentHumanoid
then
currentRoot.CFrame
=
lookMatrix
end
local
dist
=
controlMovement(targetChar,
targetHum,
targetRoot,
state,
predicted,
speed,
myMetrics,
targetMetrics)
attackTarget(targetChar,
targetHum,
targetRoot,
dist,
myMetrics,
targetMetrics)
end
local
function
setEnabled(value)
if
not
active
then
return
end
enabled=value==true
resetRecovery()
if
not
enabled
then
nav.epoch=nav.epoch+1;nav.points=nil;releaseMovement()
end
setButtonState()
if
enabled
then
getCharacter();equipToolDelayed()
else
if
currentHumanoid
then
pcall(function()
currentHumanoid:Move(Vector3.zero,false)
end)
end
local
tool=getEquippedTool(currentCharacter)
if
tool
then
pcall(function()
tool:Deactivate()
end)
end
end
end
track(button.Activated,function()
setEnabled(not
enabled)
if
onChanged
then
onChanged(enabled)
end
end)
track(button.InputBegan,function(input)
if
input.UserInputType
==
Enum.UserInputType.MouseButton1
or
input.UserInputType
==
Enum.UserInputType.Touch
then
dragging
=
true
dragStart
=
input.Position
startPos
=
button.Position
activeTouch
=
input
end
end)
track(button.InputChanged,function(input)
if
input.UserInputType
==
Enum.UserInputType.MouseMovement
or
input.UserInputType
==
Enum.UserInputType.Touch
then
dragInput
=
input
end
end)
track(UserInputService.InputChanged,function(input)
if
not
dragging
then
return
end
if
input
~=
dragInput
and
input
~=
activeTouch
then
return
end
local
delta
=
input.Position
-
dragStart
button.Position
=
UDim2.new(
startPos.X.Scale,
startPos.X.Offset
+
delta.X,
startPos.Y.Scale,
startPos.Y.Offset
+
delta.Y
)
end)
track(UserInputService.InputEnded,function(input)
if
input
==
activeTouch
or
input
==
dragInput
then
dragging
=
false
end
end)
track(LocalPlayer.CharacterAdded,function()
task.wait(0.15)
if
not
active
then
return
end
getCharacter()
equipToolDelayed()
end)
track(LocalPlayer.CharacterRemoving,function()
currentCharacter
=
nil
currentHumanoid
=
nil
currentRoot
=
nil
end)
getCharacter()
setButtonState()
track(RunService.RenderStepped,function(dt)
if
active
and
enabled
then
local
ok,err=pcall(updateAI,dt)
if
not
ok
then
setEnabled(false);if
onChanged
then
onChanged(false)
end;warn("KoreanHub Sword AI: "..tostring(err))
end
end
end)
track(LocalPlayer.Backpack.ChildAdded,function(child)
if
child:IsA("Tool")
and
enabled
then
task.defer(equipToolDelayed)
end
end)
track(LocalPlayer.CharacterAdded,function(char)
track(char.ChildAdded,function(child)
if
child:IsA("Tool")
and
enabled
then
task.defer(equipToolDelayed)
end
end)
end)
return
{
SetRecovery=function(v)
recovery.Enabled=v;resetRecovery()
end,
SetEvasion=function(v)
evade.Enabled=v
end,
SetEvasionStrength=function(v)
evade.Strength=v
end,
SetTeamCheck=function(v)
teamCheck=v
end,
SetStrictTeam=function(v)
strictTeam=v
end,
SetEnabled=setEnabled,
SetVisible=function(value)
gui.Enabled=value==true
end,
Cleanup=function()
setEnabled(false);active=false
for
_,connection
in
ipairs(connections)
do
connection:Disconnect()
end
gui:Destroy()
end,
}
end
local
aiController,aiToggle
local
syncing=false
local
ok,result=pcall(mount,function(value)
if
aiToggle
and
not
syncing
then
syncing=true;pcall(function()
aiToggle:Set(value)
end);syncing=false
end
end)
if
ok
then
aiController=result
else
notify("Sword AI 초기화 실패",tostring(result))
end
CombatTab:CreateSection("Aether V2 · Sword Fighting AI")
CombatTab:CreateParagraph({Title="첨부한 검 전투 AI",Content="자동 이동·회전·점프·툴 장착·공격을 수행합니다. 일반 Tool 전용이며 Model 검은 지원하지 않습니다. Fly·Player Lock·다른 자동 공격과 함께 켜면 조작이 충돌할 수 있습니다."})
CombatTab:CreateToggle({Name="Sword AI 아군 제외",Flag="Combat_AetherTeamCheck",CurrentValue=true,Callback=function(v)
if
aiController
then
aiController.SetTeamCheck(v)
end
end})
CombatTab:CreateToggle({Name="Sword AI 팀 불명확 시 공격 보류",Flag="Combat_AetherStrictTeam",CurrentValue=true,Callback=function(v)
if
aiController
then
aiController.SetStrictTeam(v)
end
end})
CombatTab:CreateParagraph({Title="벽 회피·수동 이동",Content="벽이 막으면 경로 탐색을 시도하고, 공격 직전 시야를 확인합니다. 경로가 없거나 대상이 없으면 이동 제어를 놓습니다. 기본 Roblox 조이스틱 입력을 감지하면 수동 조작을 우선합니다. 커스텀 이동 시스템은 별도 확인이 필요합니다."})
CombatTab:CreateParagraph({Title="팀 판정",Content="Player.Team과 플레이어·캐릭터의 명시적 팀 속성/값을 확인합니다. 순위표 표시 여부와 무관합니다. 팀 정보를 찾지 못하면 기본적으로 AI 이동·공격을 보류합니다. 옷이나 바닥 색으로 팀을 추측하지 않습니다."})
CombatTab:CreateToggle({Name="Sword AI 회피 이동",Flag="Combat_SwordEvasion",CurrentValue=true,Callback=function(v)
if
aiController
then
aiController.SetEvasion(v)
end
end})
CombatTab:CreateSlider({Name="Sword AI 회피 강도",Flag="Combat_SwordEvasionStrength",Range={0.3,1},Increment=0.05,CurrentValue=0.85,Callback=function(v)
if
aiController
then
aiController.SetEvasionStrength(v)
end
end})
CombatTab:CreateParagraph({Title="회피 이동",Content="근거리에서 좌우 전환과 후퇴를 섞습니다. 이동할 방향의 장애물과 앞쪽 바닥을 확인합니다. 스킬 감지 기능은 포함되지 않으며, 모든 공격을 피하는 것을 보장하지 않습니다."})
CombatTab:CreateToggle({Name="Sword AI 장착 실패 자동 복구",Flag="Combat_SwordEquipRecovery",CurrentValue=true,Callback=function(v)
if
aiController
then
aiController.SetRecovery(v)
end
end})
CombatTab:CreateParagraph({Title="자동 일시 중지·재장착",Content="AI 실행 중 무기가 가방에만 남으면 이동을 놓고 잠시 대기한 뒤 재장착합니다. 연속 실패 시 5초 쉬고 다시 시도합니다. AI를 직접 끄면 재시도도 중지됩니다. 서버의 스턴·수감·장착 제한을 해제하는 기능은 아닙니다."})
aiToggle=CombatTab:CreateToggle({Name="Sword Fighting AI 실행",Flag="Combat_AetherSwordAI",CurrentValue=false,Callback=function(value)
if
aiController
and
not
syncing
then
aiController.SetEnabled(value)
end
end})
CombatTab:CreateToggle({Name="Sword AI 화면 버튼 표시",Flag="Combat_AetherSwordUI",CurrentValue=true,Callback=function(value)
if
aiController
then
aiController.SetVisible(value)
end
end})
CombatTab:CreateButton({Name="Sword AI 즉시 중지",Callback=function()
if
aiController
then
aiController.SetEnabled(false)
end
if
aiToggle
then
aiToggle:Set(false)
end
end})
_G.KoreanHubSwordAICleanup=function()
if
aiController
then
aiController.Cleanup()
end
end
end
 
do
local
env=type(getgenv)=='function'
and
getgenv()
or
_G
local
state=env.KoreanHubScopedWaitState
if
not
state
then
state={Enabled=false,Installed=false,InstallError=nil};env.KoreanHubScopedWaitState=state
end
state.Enabled=false
local
function
weaponCaller()
if
not
state.Enabled
or
type(getcallingscript)~="function"
then
return
false
end
local
ok,scriptObject=pcall(getcallingscript)
if
not
ok
or
typeof(scriptObject)~="Instance"
then
return
false
end
local
char=LocalPlayer.Character
if
not
char
or
not
scriptObject:IsDescendantOf(char)
then
return
false
end
local
node=scriptObject.Parent
while
node
and
node~=char
do
if
node:IsA("Tool")
then
return
true
end
if
node:IsA("Model")
and
node:FindFirstChild("ToolSlot")
and
node:FindFirstChild("Activate")
then
return
true
end
node=node.Parent
end
return
false
end
 
state.ShouldShorten=weaponCaller
local
function
install()
if
state.Installed
then
return
true
end
if
type(hookfunction)~="function"
or
type(getcallingscript)~="function"
then
return
false,"hookfunction / getcallingscript 미지원"
end
if
state.InstallError
then
return
false,state.InstallError
end
local
originalWait,originalTaskWait
local
function
shortened(seconds)
if
type(seconds)~="number"
or
seconds<=0
then
return
false
end
local
ok,result=pcall(state.ShouldShorten)
return
ok
and
result
end
local
ok,err=pcall(function()
originalWait=hookfunction(wait,function(seconds,...)
if
shortened(seconds)
then
return
originalWait(0,...)
end
return
originalWait(seconds,...)
end)
originalTaskWait=hookfunction(task.wait,function(seconds,...)
if
shortened(seconds)
then
return
originalTaskWait(0,...)
end
return
originalTaskWait(seconds,...)
end)
end)
if
not
ok
then
state.Enabled=false;state.InstallError=tostring(err);return
false,tostring(err)
end
state.Installed=true;return
true
end
CombatTab:CreateSection("무기 로컬 대기 단축 · 시험")
CombatTab:CreateParagraph({Title="첨부 No Cooldown의 제한 적용본",Content="장착한 무기 내부 스크립트가 호출한 wait/task.wait만 단축을 시도합니다. 전역 tick/os.clock은 바꾸지 않습니다. 서버 쿨타임·시간차 비교 방식에는 적용되지 않을 수 있으며, 무기 애니메이션·재장전에 영향을 줄 수 있습니다."})
local
toggle,changing
toggle=CombatTab:CreateToggle({Name="무기 로컬 대기 단축",Flag="Combat_ScopedNoCooldown",CurrentValue=false,Callback=function(v)
if
changing
then
return
end
if
not
v
then
state.Enabled=false;return
end
local
ok,err=install()
if
ok
then
state.Enabled=true;notify("로컬 대기 단축","장착 무기 내부 스크립트에만 단축을 시도합니다. 실제 쿨타임 해제는 미확인입니다.")
else
state.Enabled=false;notify("지원 확인 필요",tostring(err))
if
toggle
then
changing=true;toggle:Set(false);changing=false
end
end
end})
CombatTab:CreateButton({Name="로컬 대기 단축 중지",Callback=function()
state.Enabled=false;if
toggle
then
toggle:Set(false)
end
end})
end
 
do
local
tab=Window:CreateTab('Aim / Weapon')
local
function
set(flag,value)
local
e=Rayfield.Flags[flag]
if
e
then
e:Set(value)
else
notify('연결 오류',flag)
end
end
local
function
toggle(name,flag)
tab:CreateToggle({Name=name,CurrentValue=false,Callback=function(v)
set(flag,v)
end})
end
local
function
slider(name,min,max,default,callback)
tab:CreateSlider({Name=name,Range={min,max},CurrentValue=default,Increment=1,Callback=callback})
end
local
function
drop(name,values,default,callback)
tab:CreateDropdown({Name=name,Options=values,CurrentOption={default},Callback=function(v)
callback(v[1])
end})
end
tab:CreateSection('Aimbot')
toggle('Aimbot','Combat_AimbotCameraLock')
drop('Target Part',{'Head','Body'},'Head',function(v)
set('Combat_AimPart',{v})
end)
drop('Blacklist Part',{'None','Head','HumanoidRootPart'},'None',function(v)
_G.KHBlackPart=v
end)
slider('Smoothing',1,50,1,function(v)
set('Combat_AimbotSmoothness',v)
end)
slider('FOV',1,800,100,function(v)
_G.FOVSize=v
end)
tab:CreateToggle({Name='Show FOV',CurrentValue=false,Callback=function(v)
_G.FOVCircle=v
end})
tab:CreateSection('Triggerbot')
toggle('Triggerbot','Combat_MobileTrigger')
slider('Delay (ms)',0,500,0,function(v)
_G.KHTriggerDelay=v
end)
slider('Set FOV',1,200,10,function(v)
_G.KHTriggerFOV=v
end)
slider('Scan FOV',1,400,30,function(v)
_G.KHTriggerScan=v
end)
drop('Trigger Blacklist Part',{'None','Head','HumanoidRootPart'},'None',function(v)
_G.KHTriggerBlack=v
end)
tab:CreateToggle({Name='Trigger Show FOV',CurrentValue=false,Callback=function(v)
_G.KHTriggerCircle=v
end})
tab:CreateSection('Silent Aim · 기존 지원 무기')
toggle('Silent Aim','Combat_ShotRedirectV1')
tab:CreateParagraph({Title='지원 범위',Content='기존 Launcher 좌표 보정에 연결됩니다. 다른 게임의 총기 발사 형식은 미지원입니다. Aim Part는 기존 Head/Body 설정을 공유합니다.'})
drop('Aim Part',{'Head','Body'},'Head',function(v)
set('Combat_AimPart',{v})
end)
slider('Silent FOV',1,800,250,function(v)
_G.KHSilentFOV=v
end)
tab:CreateToggle({Name='Silent Show FOV',CurrentValue=false,Callback=function(v)
_G.KHSilentCircle=v
end})
tab:CreateSection('Checks')
tab:CreateToggle({Name='Team Check',CurrentValue=true,Callback=function(v)
set('Combat_AimbotTeamCheck',v);set('Combat_TriggerTeam',v)
end})
tab:CreateToggle({Name='Visual Check (Aimbot)',CurrentValue=false,Callback=function(v)
_G.KHVisualCheck=v
end})
tab:CreateParagraph({Title='Trigger / Silent 시야 확인',Content='기존 발사 제어기의 장애물 검사는 항상 유지됩니다.'})
 
tab:CreateSection('Weapon / Ragebot · 게임별 연결 필요')
for
_,feature
in
ipairs({'Wallbang','No Recoil / No Spread','Rapid Fire','Ragebot','Void Spam','Void Hide','Anti-Katana/Shield'})
do
tab:CreateButton({Name=feature..' · 미지원',Callback=function()
notify(feature,'첨부 코드에 이 기능의 게임별 구현이 없습니다. 활성화하지 않았습니다.')
end})
end
tab:CreateParagraph({Title='Preferred Weapon / Hide / Attack',Content='Ragebot 구현이 없어 이 설정들은 아직 적용되지 않습니다. 대상 게임과 무기 동작 확인이 필요합니다.'})
local
circles={Drawing.new('Circle'),Drawing.new('Circle')}
for
_,c
in
ipairs(circles)
do
c.Filled=false;c.Thickness=1;c.Color=Color3.fromRGB(0,85,255);c.Transparency=0.8
end
RunService:UnbindFromRenderStep('KoreanHubExtraFOV')
RunService:BindToRenderStep('KoreanHubExtraFOV',Enum.RenderPriority.Camera.Value+2,function()
local
camera=workspace.CurrentCamera;if
not
camera
then
return
end
circles[1].Visible=_G.KHTriggerCircle==true;circles[1].Radius=_G.KHTriggerScan
or
30;circles[1].Position=camera.ViewportSize/2
circles[2].Visible=_G.KHSilentCircle==true;circles[2].Radius=_G.KHSilentFOV
or
250;circles[2].Position=camera.ViewportSize/2
end)
end
Rayfield:LoadConfiguration()
