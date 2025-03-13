---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	values = @(
		@{
			name = "AllowToAddGuests"
			value = "true"
		}
	)
}

Update-MgGroupSetting -GroupId $groupId -GroupSettingId $groupSettingId -BodyParameter $params

```