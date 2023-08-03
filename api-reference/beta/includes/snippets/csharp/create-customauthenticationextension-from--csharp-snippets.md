---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OnTokenIssuanceStartCustomExtension
{
	OdataType = "#microsoft.graph.onTokenIssuanceStartCustomExtension",
	DisplayName = "onTokenIssuanceStartCustomExtension",
	Description = "Fetch additional claims from custom user store",
	EndpointConfiguration = new HttpRequestEndpoint
	{
		OdataType = "#microsoft.graph.httpRequestEndpoint",
		TargetUrl = "https://authenticationeventsAPI.contoso.com",
	},
	AuthenticationConfiguration = new AzureAdTokenAuthentication
	{
		OdataType = "#microsoft.graph.azureAdTokenAuthentication",
		ResourceId = "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4",
	},
	ClientConfiguration = new CustomExtensionClientConfiguration
	{
		TimeoutInMilliseconds = 2000,
		MaximumRetries = 1,
	},
	ClaimsForTokenConfiguration = new List<OnTokenIssuanceStartReturnClaim>
	{
		new OnTokenIssuanceStartReturnClaim
		{
			ClaimIdInApiResponse = "DateOfBirth",
		},
		new OnTokenIssuanceStartReturnClaim
		{
			ClaimIdInApiResponse = "CustomRoles",
		},
	},
};
var result = await graphClient.Identity.CustomAuthenticationExtensions.PostAsync(requestBody);


```