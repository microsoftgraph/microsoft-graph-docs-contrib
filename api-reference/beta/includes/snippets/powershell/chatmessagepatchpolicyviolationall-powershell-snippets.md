---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

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

Update-MgBetaTeamChannelMessage -TeamId $teamId -ChannelId $channelId -ChatMessageId $chatMessageId -BodyParameter $params

```