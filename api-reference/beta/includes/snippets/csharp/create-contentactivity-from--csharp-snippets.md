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
				Identifier = "d6ab5054-e111-45c3-9fba-9f2a59c9bbf8",
				Name = "CA Purview API Explorer message",
				CorrelationId = "edfb7f88-b963-4ef2-8b30-5cb90f80e01e",
				SequenceNumber = 0L,
				IsTruncated = false,
				CreatedDateTime = DateTimeOffset.Parse("2025-05-28T20:20:37"),
				ModifiedDateTime = DateTimeOffset.Parse("2025-05-28T20:20:37"),
			},
		},
		ActivityMetadata = new ActivityMetadata
		{
			Activity = UserActivityType.DownloadText,
		},
		IntegratedAppMetadata = new IntegratedApplicationMetadata
		{
			Name = "CA Purview API Explorer",
			Version = "0.1",
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"deviceMetadata" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
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
				"userId" , "7c497f10-cba8-4a8d-9449-db4b76d1ef80"
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