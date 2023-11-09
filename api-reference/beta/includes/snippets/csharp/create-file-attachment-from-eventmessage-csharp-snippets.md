---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Attachment
{
	OdataType = "#Microsoft.OutlookServices.FileAttachment",
	Name = "name-value",
	ContentType = "contentType-value",
	IsInline = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"contentLocation" , "contentLocation-value"
		},
		{
			"contentBytes" , "contentBytes-value"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Messages["{message-id}"].Attachments.PostAsync(requestBody);


```