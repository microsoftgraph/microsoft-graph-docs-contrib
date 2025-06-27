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
			new ProcessConversationMetadata
			{
				OdataType = "#microsoft.graph.processConversationMetadata",
				Identifier = "f7af180f-dc2e-467c-9719-757e1c61eabf",
				Content = new BinaryContent
				{
					OdataType = "#microsoft.graph.binaryContent",
					Data = Convert.FromBase64String("Base64 encoded content"),
				},
				Name = "Some name",
				CorrelationId = "d63eafd2-e3a9-4c1a-b726-a2e9b9d95822",
			},
		},
		ActivityMetadata = new ActivityMetadata
		{
			Activity = UserActivityType.UploadFile,
		},
		IntegratedAppMetadata = new IntegratedApplicationMetadata
		{
			Name = "Some integrated app name",
			Version = "1.0.0",
		},
		ProtectedAppMetadata = new ProtectedApplicationMetadata
		{
			ApplicationLocation = new PolicyLocationUrl
			{
				OdataType = "#microsoft.graph.policyLocationUrl",
				Value = "https://gemini.google.com",
			},
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"deviceMetadata" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"deviceType", new UntypedString("Unmanaged")
					},
					{
						"ipAddress", new UntypedNull()
					},
					{
						"operatingSystemSpecifications", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"operatingSystemPlatform", new UntypedString("Windows")
							},
							{
								"operatingSystemVersion", new UntypedString("11.1")
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