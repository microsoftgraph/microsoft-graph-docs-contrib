---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.Windows.Updates.Deployments.Item.Audience.MicrosoftGraphWindowsUpdatesUpdateAudienceById;

var requestBody = new UpdateAudienceByIdPostRequestBody
{
	MemberEntityType = "String",
	AddMembers = new List<string>
	{
		"String",
	},
	RemoveMembers = new List<string>
	{
		"String",
	},
	AddExclusions = new List<string>
	{
		"String",
	},
	RemoveExclusions = new List<string>
	{
		"String",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Admin.Windows.Updates.Deployments["{deployment-id}"].Audience.MicrosoftGraphWindowsUpdatesUpdateAudienceById.PostAsync(requestBody);


```