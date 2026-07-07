---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernanceActivateAndWait;
using Microsoft.Graph.Beta.Models.IdentityGovernance;

var requestBody = new ActivateAndWaitPostRequestBody
{
	Subject = new ProvisioningObjectWorkflowSubject
	{
		OdataType = "#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject",
		Id = "b74f0fae-b1f3-4c96-9bf0-d4d8a8e37cbe",
		AttributeSetEntries = new List<AttributeSetEntry>
		{
			new AttributeSetEntry
			{
				Name = "department",
				Value = "Engineering",
			},
			new AttributeSetEntry
			{
				Name = "jobTitle",
				Value = "Software Engineer",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceActivateAndWait.PostAsync(requestBody);


```