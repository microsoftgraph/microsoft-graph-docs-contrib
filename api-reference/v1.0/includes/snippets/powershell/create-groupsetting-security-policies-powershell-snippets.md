---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	templateId = "7e0abea2-5c20-405f-9658-bfc9a523fd49"
	values = @(
		@{
			name = "AllowToAddGuests"
			value = "false"
		}
	)
}

New-MgGroupSetting -GroupId $groupId -BodyParameter $params

```