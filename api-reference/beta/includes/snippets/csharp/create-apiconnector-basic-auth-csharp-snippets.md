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
	AuthenticationConfiguration = new BasicAuthentication
	{
		OdataType = "#microsoft.graph.basicAuthentication",
		Username = "<USERNAME>",
		Password = "<PASSWORD>",
	},
};
var result = await graphClient.Identity.ApiConnectors.PostAsync(requestBody);


```