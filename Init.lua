local id = {7074860883}

local request = syn and syn.request or http and http.request or http_request or request or httprequest
local access = nil
for _, v in ipairs(id) do
	if game.GameId == v then
		access = v
		break
	end
end

if access then
	local response = request({
		Url = string.format("https://raw.githubusercontent.com/SixZensED/Sense-ware/refs/heads/main/list/%s.lua",access),
		Method = "GET"
	})
	if response and response.Body then
		loadstring(response.Body, true)()
	end
end
