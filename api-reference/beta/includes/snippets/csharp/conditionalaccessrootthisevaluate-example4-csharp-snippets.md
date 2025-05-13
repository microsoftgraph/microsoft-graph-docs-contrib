---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Identity.ConditionalAccess.Evaluate;
using Microsoft.Graph.Beta.Models;

var requestBody = new EvaluatePostRequestBody
{
	SignInIdentity = new ServicePrincipalSignIn
	{
		OdataType = "#microsoft.graph.servicePrincipalSignIn",
		ServicePrincipalId = "c65b94a5-0049-439a-a6fd-bce307077730",
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
		ServicePrincipalRiskLevel = RiskLevel.High,
		Country = "CA",
		IpAddress = "40.77.182.32",
	},
	AppliedPoliciesOnly = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.Evaluate.PostAsEvaluatePostResponseAsync(requestBody);


```