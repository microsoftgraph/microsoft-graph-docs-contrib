---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	displayName = "Library Assist"
	description = "Self help community for library"
	mailNickname = "libassist"
	partsToClone = "apps,tabs,settings,channels,members"
	visibility = "public"
}

Copy-MgTeam -TeamId $teamId -BodyParameter $params

```