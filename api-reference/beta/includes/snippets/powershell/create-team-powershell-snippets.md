---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	memberSettings = @{
		allowCreateUpdateChannels = $true
	}
	messagingSettings = @{
		allowUserEditMessages = $true
		allowUserDeleteMessages = $true
	}
	funSettings = @{
		allowGiphy = $true
		giphyContentRating = "strict"
	}
	discoverySettings = @{
		showInTeamsSearchAndSuggestions = $true
	}
}

Set-MgGroupTeam -GroupId $groupId -BodyParameter $params

```