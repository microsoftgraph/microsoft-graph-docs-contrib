---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new ContentActivity
{
	ContentMetadata = new ProcessContentRequest
	{
		ContentEntries = new List<ProcessContentMetadataBase>
		{
			new ProcessConversationMetadata
			{
				OdataType = "microsoft.graph.processConversationMetadata",
				Identifier = "68fa951a-898a-4427-8e9e-6f8c05e9fe2b",
				Name = "API Explorer message",
				CorrelationId = "559a2343-7aa2-4912-93fe-72c47b2706ed",
				IsTruncated = false,
				CreatedDateTime = DateTimeOffset.Parse("2025-04-28T20:17:55"),
				ModifiedDateTime = DateTimeOffset.Parse("2025-04-28T20:17:55"),
				AdditionalData = new Dictionary<string, object>
				{
					{
						"sequenceNo" , 0
					},
				},
			},
		},
		ActivityMetadata = new ActivityMetadata
		{
			Activity = UserActivityType.UploadText,
		},
		IntegratedAppMetadata = new IntegratedApplicationMetadata
		{
			Name = "API Explorer",
			Version = "0.1",
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"deviceMetadata" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"deviceType", new UntypedString("unmanaged")
					},
					{
						"operatingSystemSpecifications", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"operatingSystemPlatform", new UntypedString("Windows 11")
							},
							{
								"operatingSystemVersion", new UntypedString("10.0.26100.0")
							},
						})
					},
				})
			},
			{
				"userId" , "7c2f8f10-cba8-4a8d-9449-db4b76d17390"
			},
			{
				"scopeIdentifier" , "0"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.DataSecurityAndGovernance.Activities.ContentActivities.PostAsync(requestBody);


```