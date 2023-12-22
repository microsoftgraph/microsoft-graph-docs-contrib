---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ChatMessage
{
	PolicyViolation = new ChatMessagePolicyViolation
	{
		PolicyTip = new ChatMessagePolicyViolationPolicyTip
		{
			GeneralText = "This item has been blocked by the administrator.",
			ComplianceUrl = "https://contoso.com/dlp-policy-page",
			MatchedConditionDescriptions = new List<string>
			{
				"Credit Card Number",
			},
		},
		VerdictDetails = ChatMessagePolicyViolationVerdictDetailsTypes.AllowOverrideWithoutJustification | ChatMessagePolicyViolationVerdictDetailsTypes.AllowFalsePositiveOverride,
		DlpAction = ChatMessagePolicyViolationDlpActionTypes.BlockAccess,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages["{chatMessage-id}"].PatchAsync(requestBody);


```