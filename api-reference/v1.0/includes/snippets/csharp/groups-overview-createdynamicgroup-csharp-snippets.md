---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
	Description = "Marketing department folks",
	DisplayName = "Marketing department",
	GroupTypes = new List<string>
	{
		"Unified",
		"DynamicMembership",
	},
	MailEnabled = true,
	MailNickname = "marketing",
	SecurityEnabled = false,
	MembershipRule = "user.department -eq \"Marketing\"",
	MembershipRuleProcessingState = "on",
};
var result = await graphClient.Groups.PostAsync(requestBody);


```