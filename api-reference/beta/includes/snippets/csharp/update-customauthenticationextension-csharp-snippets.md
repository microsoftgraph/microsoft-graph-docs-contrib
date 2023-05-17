---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomAuthenticationExtension
{
	OdataType = "#microsoft.graph.onTokenIssuanceStartCustomExtension",
	DisplayName = "onTokenIssuanceStartCustomExtension",
	Description = "Fetch additional claims from custom user store",
	EndpointConfiguration = new CustomExtensionEndpointConfiguration
	{
		OdataType = "#microsoft.graph.httpRequestEndpoint",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"targetUrl" , "https://authenticationeventsAPI.contoso.com"
			},
		},
	},
	AuthenticationConfiguration = new CustomExtensionAuthenticationConfiguration
	{
		OdataType = "#microsoft.graph.azureAdTokenAuthentication",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"resourceId" , "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4"
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"claimsForTokenConfiguration" , new List<>
			{
				new 
				{
					ClaimIdInApiResponse = "DateOfBirth",
				},
				new 
				{
					ClaimIdInApiResponse = "CustomRoles",
				},
			}
		},
	},
};
var result = await graphClient.Identity.CustomAuthenticationExtensions["{customAuthenticationExtension-id}"].PatchAsync(requestBody);


```