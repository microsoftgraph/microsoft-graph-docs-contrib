---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Identity.ConditionalAccess.Evaluate;
using Microsoft.Graph.Models;

var requestBody = new EvaluatePostRequestBody
{
	SignInIdentity = new UserSignIn
	{
		OdataType = "#microsoft.graph.userSignIn",
		UserId = "15dc174b-f34c-4588-ac45-61d6e05dce93",
	},
	SignInContext = new ApplicationContext
	{
		OdataType = "#microsoft.graph.applicationContext",
		IncludeApplications = new List<string>
		{
			"00000003-0000-0ff1-ce00-000000000000",
		},
	},
	SignInConditions = new SignInConditions
	{
		DevicePlatform = ConditionalAccessDevicePlatform.Android,
		ClientAppType = ConditionalAccessClientApp.Browser,
		SignInRiskLevel = RiskLevel.High,
		UserRiskLevel = RiskLevel.High,
		Country = "US",
		IpAddress = "40.77.182.32",
		InsiderRiskLevel = InsiderRiskLevel.Elevated,
		AuthenticationFlow = new AuthenticationFlow
		{
			TransferMethod = ConditionalAccessTransferMethods.DeviceCodeFlow,
		},
		DeviceInfo = new DeviceInfo
		{
			IsCompliant = true,
		},
	},
	AppliedPoliciesOnly = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.Evaluate.PostAsEvaluatePostResponseAsync(requestBody);


```