---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Communications.Calls.Item.Participants.Item.StopHoldMusic;

var requestBody = new StopHoldMusicPostRequestBody
{
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"].StopHoldMusic.PostAsync(requestBody);


```