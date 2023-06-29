---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OnTokenIssuanceStartListener
{
	OdataType = "#microsoft.graph.onTokenIssuanceStartListener",
	Conditions = new AuthenticationConditions
	{
		Applications = new AuthenticationConditionsApplications
		{
			IncludeAllApplications = false,
		},
	},
	Priority = 500,
};
var result = await graphClient.Identity.AuthenticationEventListeners["{authenticationEventListener-id}"].PatchAsync(requestBody);


```