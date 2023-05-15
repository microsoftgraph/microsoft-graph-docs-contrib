---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IdentityGovernance.CustomTaskExtension
{
	DisplayName = "Grant manager access to mailbox and OneDrive",
	Description = "Grant manager access to mailbox and OneDrive",
	EndpointConfiguration = new CustomExtensionEndpointConfiguration
	{
		OdataType = "#microsoft.graph.logicAppTriggerEndpointConfiguration",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"subscriptionId" , "c500b67c-e9b7-4ad2-a90d-77d41385ae55"
			},
			{
				"resourceGroupName" , "RG-LCM"
			},
			{
				"logicAppWorkflowName" , "ManagerAccess"
			},
		},
	},
	AuthenticationConfiguration = new CustomExtensionAuthenticationConfiguration
	{
		OdataType = "#microsoft.graph.azureAdTokenAuthentication",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"resourceId" , "542dc01a-0b5d-4edc-b3f9-5cfe6393f557"
			},
		},
	},
	ClientConfiguration = new CustomExtensionClientConfiguration
	{
		OdataType = "#microsoft.graph.customExtensionClientConfiguration",
		TimeoutInMilliseconds = 1000,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"maximumRetries" , 1
			},
		},
	},
	CallbackConfiguration = new CustomExtensionCallbackConfiguration
	{
		OdataType = "#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration",
		TimeoutDuration = TimeSpan.Parse("PT5M"),
	},
};
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.CustomTaskExtensions.PostAsync(requestBody);


```