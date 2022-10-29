---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	IsMembershipLimitedToOwners = $true
	MemberSettings = @{
		AllowCreateUpdateChannels = $true
	}
	MessagingSettings = @{
		AllowUserEditMessages = $true
		AllowUserDeleteMessages = $true
	}
	FunSettings = @{
		AllowGiphy = $true
		GiphyContentRating = "strict"
	}
	DiscoverySettings = @{
		ShowInTeamsSearchAndSuggestions = $true
	}
}

Update-MgTeam -TeamId $teamId -BodyParameter $params

```