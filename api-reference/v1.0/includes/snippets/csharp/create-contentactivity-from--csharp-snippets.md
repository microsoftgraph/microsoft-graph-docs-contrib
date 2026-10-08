---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new ContentActivity
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"contentToProcess" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"contentEntries", new UntypedArray(new List<UntypedNode>
					{
						new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"@odata.type", new UntypedString("microsoft.graph.processConversationMetadata")
							},
							{
								"identifier", new UntypedString("07785517-9081-4fe7-a9dc-85bcdf5e9075")
							},
							{
								"name", new UntypedString("PC Purview API Explorer message")
							},
							{
								"correlationId", new UntypedString("d63eafd2-e3a9-4c1a-b726-a2e9b9d9580d")
							},
							{
								"sequenceNumber", new UntypedString("0")
							},
							{
								"isTruncated", new UntypedBoolean(false)
							},
							{
								"createdDateTime", new UntypedString("2025-05-27T17:23:20")
							},
							{
								"modifiedDateTime", new UntypedString("2025-05-27T17:23:20")
							},
						}),
					})
				},
				{
					"activityMetadata", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"activity", new UntypedString("uploadText")
						},
					})
				},
				{
					"deviceMetadata", new UntypedObject(new Dictionary<string, UntypedNode>
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
						{
							"ipAddress", new UntypedString("127.0.0.1")
						},
					})
				},
				{
					"protectedAppMetadata", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"name", new UntypedString("PC Purview API Explorer")
						},
						{
							"version", new UntypedString("0.2")
						},
						{
							"applicationLocation", new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"@odata.type", new UntypedString("microsoft.graph.policyLocationApplication")
								},
								{
									"value", new UntypedString("83ef208a-0396-4893-9d4f-d36efbffc8bd")
								},
							})
						},
					})
				},
				{
					"integratedAppMetadata", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"name", new UntypedString("PC Purview API Explorer")
						},
						{
							"version", new UntypedString("0.2")
						},
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.DataSecurityAndGovernance.Activities.ContentActivities.PostAsync(requestBody);


```