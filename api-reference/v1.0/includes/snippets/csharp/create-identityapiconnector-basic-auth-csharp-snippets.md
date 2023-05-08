---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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
				"username" , "MyUsername"
			},
			{
				"password" , "MyPassword"
			},
		},
	},
};
var result = await graphClient.Identity.ApiConnectors.PostAsync(requestBody);


```