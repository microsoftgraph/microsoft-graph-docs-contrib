---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityApiConnector
{
	DisplayName = "Test API",
	TargetUrl = "https://someapi.com/api",
	AuthenticationConfiguration = new ApiAuthenticationConfigurationBase
	{
		OdataType = "#microsoft.graph.basicAuthentication",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"username" , "<USERNAME>"
			},
			{
				"password" , "<PASSWORD>"
			},
		},
	},
};
var result = await graphClient.Identity.ApiConnectors.PostAsync(requestBody);


```