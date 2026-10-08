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
							{
								"agents", new UntypedArray(new List<UntypedNode>
								{
									new UntypedObject(new Dictionary<string, UntypedNode>
									{
										{
											"identifier", new UntypedString("b262a092-6a2b-4682-9c7f-00baf80dbd84")
										},
										{
											"name", new UntypedString("Copilot Agent")
										},
										{
											"version", new UntypedString("1.2")
										},
										{
											"blueprintId", new UntypedString("c262a092-6a2b-4682-9c7f-00baf80dbd94")
										},
									}),
								})
							},
							{
								"plugins", new UntypedArray(new List<UntypedNode>
								{
									new UntypedObject(new Dictionary<string, UntypedNode>
									{
										{
											"identifier", new UntypedString("f1a2b3c4-d5e6-7890-abcd-ef1234567890")
										},
										{
											"name", new UntypedString("Microsoft Purview Data Scanner")
										},
										{
											"version", new UntypedString("1.1")
										},
									}),
								})
							},
							{
								"accessedResources_v2", new UntypedArray(new List<UntypedNode>
								{
									new UntypedObject(new Dictionary<string, UntypedNode>
									{
										{
											"identifier", new UntypedString("3f2d6e5b-98d4-4f2a-9a61-45c0a8b7d123")
										},
										{
											"name", new UntypedString("Report.xlsx")
										},
										{
											"url", new UntypedString("https://contoso.sharepoint.com/sites/finance")
										},
										{
											"labelId", new UntypedString("a7b4f8c9-1e2d-4f45-89b1-23456789abcd")
										},
										{
											"accessType", new UntypedString("read")
										},
										{
											"status", new UntypedString("success")
										},
										{
											"isCrossPromptInjectionDetected", new UntypedBoolean(false)
										},
									}),
								})
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