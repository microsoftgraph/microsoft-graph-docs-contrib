---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages["{chatMessage-id}"].PatchAsync(requestBody);


```