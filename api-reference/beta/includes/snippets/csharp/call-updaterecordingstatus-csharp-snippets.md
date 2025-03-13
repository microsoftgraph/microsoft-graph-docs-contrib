---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Communications.Calls.Item.UpdateRecordingStatus;
using Microsoft.Graph.Beta.Models;

var requestBody = new UpdateRecordingStatusPostRequestBody
{
	ClientContext = "clientContext-value",
	Status = RecordingStatus.NotRecording | RecordingStatus.Recording | RecordingStatus.Failed,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.Calls["{call-id}"].UpdateRecordingStatus.PostAsync(requestBody);


```