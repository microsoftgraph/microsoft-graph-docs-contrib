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
	SignInContext = new UserActionContext
	{
		OdataType = "#microsoft.graph.userActionContext",
		UserAction = UserAction.RegisterSecurityInformation,
	},
	SignInConditions = new SignInConditions
	{
		DevicePlatform = ConditionalAccessDevicePlatform.MacOS,
		ClientAppType = ConditionalAccessClientApp.Browser,
		SignInRiskLevel = RiskLevel.Low,
		UserRiskLevel = RiskLevel.High,
		ServicePrincipalRiskLevel = RiskLevel.None,
		Country = "CA",
		IpAddress = "40.77.182.32",
		InsiderRiskLevel = InsiderRiskLevel.Minor,
		AuthenticationFlow = new AuthenticationFlow
		{
			TransferMethod = ConditionalAccessTransferMethods.DeviceCodeFlow,
		},
		DeviceInfo = new DeviceInfo
		{
			TrustType = "EntraID",
		},
	},
	AppliedPoliciesOnly = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.Evaluate.PostAsEvaluatePostResponseAsync(requestBody);


```