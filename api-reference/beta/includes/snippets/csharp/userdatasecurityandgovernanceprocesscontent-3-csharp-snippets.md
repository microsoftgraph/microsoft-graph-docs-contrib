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
			new ProcessFileMetadata
			{
				OdataType = "#microsoft.graph.processFileMetadata",
				Identifier = "f7af180f-dc2e-467c-9719-757e1c61eabf",
				Content = new TextContent
				{
					OdataType = "#microsoft.graph.textContent",
					Data = "Base64 encoded content",
				},
				Name = "Test File.docx",
				CorrelationId = "d63eafd2-e3a9-4c1a-b726-a2e9b9d95822",
				CreatedDateTime = DateTimeOffset.Parse("2024-07-23T01:31:40.2020463Z"),
				ModifiedDateTime = DateTimeOffset.Parse("2024-09-17T13:45:21.0000000Z"),
				CorrelationId = "9d84223c-521c-42f4-8f35-3cdeabe515d3",
				Length = 17352L,
				IsTruncated = false,
				OwnerId = "ffe1ca70-6e5b-4120-abf0-472034ba05d4",
				CustomProperties = new CustomMetadataDictionary
				{
					AdditionalData = new Dictionary<string, object>
					{
						{
							"Department" , "Finance"
						},
						{
							"ReviewerName" , "John Smith"
						},
					},
				},
			},
		},
		ActivityMetadata = new ActivityMetadata
		{
			Activity = UserActivityType.UploadFile,
		},
		DeviceMetadata = new DeviceMetadata
		{
			DeviceType = "unmanaged",
			OperatingSystemSpecifications = new OperatingSystemSpecifications
			{
				OperatingSystemPlatform = "Windows",
				OperatingSystemVersion = "11.1",
			},
		},
		IntegratedAppMetadata = new IntegratedApplicationMetadata
		{
			Name = "Network Proxy App",
			Version = "1.0.0",
		},
		ProtectedAppMetadata = new ProtectedApplicationMetadata
		{
			Name = "My App",
			Version = "0.1",
			ApplicationLocation = new PolicyLocationUrl
			{
				OdataType = "#microsoft.graph.policyLocationUrl",
				Value = "https://gemini.google.com",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.DataSecurityAndGovernance.ProcessContent.PostAsync(requestBody);


```