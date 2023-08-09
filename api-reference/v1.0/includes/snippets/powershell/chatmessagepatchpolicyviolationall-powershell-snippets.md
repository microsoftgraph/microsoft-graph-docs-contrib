---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	policyViolation = @{
		policyTip = @{
			generalText = "This item has been blocked by the administrator."
			complianceUrl = "https://contoso.com/dlp-policy-page"
			matchedConditionDescriptions = @(
				"Credit Card Number"
			)
		}
		verdictDetails = "AllowOverrideWithoutJustification,AllowFalsePositiveOverride"
		dlpAction = "BlockAccess"
	}
}

Update-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -ChatMessageId $chatMessageId -BodyParameter $params

```