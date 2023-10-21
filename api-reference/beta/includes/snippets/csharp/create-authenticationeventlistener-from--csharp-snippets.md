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
			IncludeApplications = new List<AuthenticationConditionApplication>
			{
				new AuthenticationConditionApplication
				{
					AppId = "a13d0fc1-04ab-4ede-b215-63de0174cbb4",
				},
			},
		},
	},
	Priority = 500,
	Handler = new OnTokenIssuanceStartCustomExtensionHandler
	{
		OdataType = "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler",
		CustomExtension = new OnTokenIssuanceStartCustomExtension
		{
			Id = "6fc5012e-7665-43d6-9708-4370863f4e6e",
		},
	},
};
var result = await graphClient.Identity.AuthenticationEventListeners.PostAsync(requestBody);


```