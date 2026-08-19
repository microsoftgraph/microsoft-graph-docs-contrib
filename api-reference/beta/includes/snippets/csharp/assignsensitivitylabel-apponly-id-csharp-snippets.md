---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.AssignSensitivityLabel;
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AssignSensitivityLabelPostRequestBody
{
	SensitivityLabelId = "5feba255-812e-446a-ac59-a7044ef827b5",
	AssignmentMethod = SensitivityLabelAssignmentMethod.Standard,
	JustificationText = "test_justification",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"appliedByUser" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"id", new UntypedString("4a2ec3c4-1b2d-3e4f-5a6b-7c8d9e0f1a2b")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].AssignSensitivityLabel.PostAsync(requestBody);


```