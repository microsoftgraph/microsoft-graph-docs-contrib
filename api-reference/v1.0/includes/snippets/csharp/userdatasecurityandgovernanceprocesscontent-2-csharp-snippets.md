---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Users.Item.DataSecurityAndGovernance.ProcessContent;
using Microsoft.Graph.Models;

var requestBody = new ProcessContentPostRequestBody
{
	ContentToProcess = new ProcessContentRequest
	{
		ContentEntries = new List<ProcessContentMetadataBase>
		{
			new ProcessConversationMetadata
			{
				OdataType = "#microsoft.graph.processConversationMetadata",
				Identifier = "f7af180f-dc2e-467c-9719-757e1c61eabf",
				Content = new TextContent
				{
					OdataType = "#microsoft.graph.textContent",
					Data = "some data",
				},
				CorrelationId = "d63eafd2-e3a9-4c1a-b726-a2e9b9d95811",
				SequenceNumber = 0L,
				Name = "Test Content",
			},
		},
		ActivityMetadata = new ActivityMetadata
		{
			Activity = UserActivityType.UploadText,
		},
		DeviceMetadata = new DeviceMetadata
		{
			DeviceType = "unmanaged",
			IpAddress = null,
			OperatingSystemSpecifications = new OperatingSystemSpecifications
			{
				OperatingSystemPlatform = "Windows",
				OperatingSystemVersion = "11.1",
			},
		},
		IntegratedAppMetadata = new IntegratedApplicationMetadata
		{
			Name = "My Entra App",
			Version = "0.1",
		},
		ProtectedAppMetadata = new ProtectedApplicationMetadata
		{
			Name = "My Entra App",
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
var result = await graphClient.Users["{user-id}"].DataSecurityAndGovernance.ProcessContent.PostAsync(requestBody);


```