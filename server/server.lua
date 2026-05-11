local config = require 'config'

local function CheckVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/L0stedMrlion/lion_scripts_versions/main/versions.json',
        function(err, responseData, headers)
            local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')
            local resourcename = "lion_recoil"

            if not responseData or responseData == "" then
                print("^1[" .. resourcename .. "] Unable to run version check.^7")
                return
            end

            local ok, versions = pcall(json.decode, responseData)
            if not ok or not versions or not versions[resourcename] then
                print("^1[" .. resourcename .. "] Failed to parse versions.json^7")
                return
            end

            local data = versions[resourcename]
            local newest = type(data) == "table" and tostring(data.version or "") or tostring(data)

            if newest == "" then return end

            local current = currentVersion:gsub("%s+", "")
            local latest  = newest:gsub("%s+", "")

            if current ~= latest then
                print("^3An update is available for " .. resourcename .. "^7")
                print("^3Your Version: ^1" .. current .. "^3 | Latest Version: ^2" .. latest .. "^7")
                print(
                    "^3Download the latest release from ^4https://github.com/L0stedMrlion/lion_recoil/releases")
            end
        end)
end

if config.VersionCheck then
    CheckVersion()
end
