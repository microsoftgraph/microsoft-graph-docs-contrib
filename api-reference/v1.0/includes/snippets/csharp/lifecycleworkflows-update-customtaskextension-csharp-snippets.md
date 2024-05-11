---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.IdentityGovernance;
using Microsoft.Graph.Models;

var requestBody = new CustomTaskExtension
{
	DisplayName = "Grant manager access to mailbox and OneDrive",
	Description = "Grant manager access to mailbox and OneDrive",
	EndpointConfiguration = new LogicAppTriggerEndpointConfiguration
	{
		OdataType = "#microsoft.graph.logicAppTriggerEndpointConfiguration",
		SubscriptionId = "c500b67c-e9b7-4ad2-a90d-77d41385ae55",
		ResourceGroupName = "RG-LCM",
		LogicAppWorkflowName = "ManagerAccess",
	},
	AuthenticationConfiguration = new AzureAdPopTokenAuthentication
	{
		OdataType = "#microsoft.graph.azureAdPopTokenAuthentication",
	},
	ClientConfiguration = new CustomExtensionClientConfiguration
	{
		OdataType = "#microsoft.graph.customExtensionClientConfiguration",
		MaximumRetries = 1,
		TimeoutInMilliseconds = 1000,
	},
	CallbackConfiguration = new CustomTaskExtensionCallbackConfiguration
	{
		OdataType = "#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration",
		TimeoutDuration = TimeSpan.Parse("PT20M"),
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.CustomTaskExtensions["{customTaskExtension-id}"].PatchAsync(requestBody);


```