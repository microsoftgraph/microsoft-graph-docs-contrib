---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	displayName = "Library Assist"
	description = "Self help community for library"
	mailNickname = "libassist"
	partsToClone = "apps,tabs,settings,channels,members"
	visibility = "public"
}

Copy-MgBetaTeam -TeamId $teamId -BodyParameter $params

```