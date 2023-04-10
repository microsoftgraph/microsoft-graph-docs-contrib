---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityApiConnector
{
	DisplayName = "New Test API",
	TargetUrl = "https://otherapi.com/api/endpoint",
	AuthenticationConfiguration = new ApiAuthenticationConfigurationBase
	{
		OdataType = "microsoft.graph.basicAuthentication",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"username" , "<NEW_USERNAME>"
			},
			{
				"password" , "<NEW_PASSWORD>"
			},
		},
	},
};
var result = await graphClient.Identity.ApiConnectors["{identityApiConnector-id}"].PatchAsync(requestBody);


```