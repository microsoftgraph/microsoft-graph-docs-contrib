---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	isMembershipLimitedToOwners = $true
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

Update-MgTeam -TeamId $teamId -BodyParameter $params

```