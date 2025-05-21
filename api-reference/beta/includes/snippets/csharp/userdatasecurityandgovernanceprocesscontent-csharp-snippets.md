---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.DataSecurityAndGovernance.ProcessContent;
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new ProcessContentPostRequestBody
{
	ContentToProcess = new ProcessContentRequest
	{
		ContentEntries = new List<ProcessContentMetadataBase>
		{
			new ProcessContentMetadataBase
			{
				OdataType = "microsoft.graph.processFileMetadata",
				Identifier = "91e1ca70-6e5b-4120-abf0-472034ba05c3",
				Content = new ContentBase
				{
					OdataType = "microsoft.graph.binaryContent",
					AdditionalData = new Dictionary<string, object>
					{
						{
							"data" , "<some-binary-data>"
						},
					},
				},
				Name = "Example.docx",
				CreatedDateTime = DateTimeOffset.Parse("2024-07-23T01:31:40.2020463Z"),
				CorrelationId = "54689",
				SequenceNumber = 1L,
				Length = 17352L,
				IsTruncated = false,
				AdditionalData = new Dictionary<string, object>
				{
					{
						"updatedDateTime" , "2024-09-17T13:45:21.0000000Z"
					},
					{
						"ownerId" , "ffe1ca70-6e5b-4120-abf0-472034ba05d4"
					},
					{
						"customProperties" , new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"department", new UntypedString("Finance")
							},
							{
								"reviewerName", new UntypedString("John Smith")
							},
						})
					},
				},
			},
		},
		ActivityMetadata = new ActivityMetadata
		{
			Activity = UserActivityType.UploadFile,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"applicationLocation" , "bing.com"
				},
			},
		},
		IntegratedAppMetadata = new IntegratedApplicationMetadata
		{
			Name = "ContosoIsvApplication",
			Version = "1.2",
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
								"operatingSystemPlatform", new UntypedString("windows")
							},
							{
								"operatingSystemVersion", new UntypedString("10.0.2.4")
							},
						})
					},
				})
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.DataSecurityAndGovernance.ProcessContent.PostAsync(requestBody);


```