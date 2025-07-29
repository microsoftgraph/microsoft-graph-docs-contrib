---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.DataSecurityAndGovernance.ProcessContent;
using Microsoft.Graph.Beta.Models;

var requestBody = new ProcessContentPostRequestBody
{
	ContentToProcess = new ProcessContentRequest
	{
		ContentEntries = new List<ProcessContentMetadataBase>
		{
			new ProcessConversationMetadata
			{
				OdataType = "microsoft.graph.processConversationMetadata",
				Identifier = "07785517-9081-4fe7-a9dc-85bcdf5e9075",
				Content = new TextContent
				{
					OdataType = "microsoft.graph.textContent",
					Data = "Write an acceptance letter for Alex Wilber with Credit card number 4532667785213500, ssn: 120-98-1437 at One Microsoft Way, Redmond, WA 98052",
				},
				Name = "PC Purview API Explorer message",
				CorrelationId = "d63eafd2-e3a9-4c1a-b726-a2e9b9d9580d",
				SequenceNumber = 0L,
				IsTruncated = false,
				CreatedDateTime = DateTimeOffset.Parse("2025-05-27T17:23:20"),
				ModifiedDateTime = DateTimeOffset.Parse("2025-05-27T17:23:20"),
			},
		},
		ActivityMetadata = new ActivityMetadata
		{
			Activity = UserActivityType.UploadText,
		},
		DeviceMetadata = new DeviceMetadata
		{
			DeviceType = "Unmanaged",
			OperatingSystemSpecifications = new OperatingSystemSpecifications
			{
				OperatingSystemPlatform = "Windows 11",
				OperatingSystemVersion = "10.0.26100.0",
			},
			IpAddress = "127.0.0.1",
		},
		ProtectedAppMetadata = new ProtectedApplicationMetadata
		{
			Name = "PC Purview API Explorer",
			Version = "0.2",
			ApplicationLocation = new PolicyLocationApplication
			{
				OdataType = "microsoft.graph.policyLocationApplication",
				Value = "83ef208a-0396-4893-9d4f-d36efbffc8bd",
			},
		},
		IntegratedAppMetadata = new IntegratedApplicationMetadata
		{
			Name = "PC Purview API Explorer",
			Version = "0.2",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.DataSecurityAndGovernance.ProcessContent.PostAsync(requestBody);


```