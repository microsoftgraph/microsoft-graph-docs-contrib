---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ProgramControl
{
	ControlId = "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
	ControlTypeId = "6e4f3d20-c5c3-407f-9695-8460952bcc68",
	ProgramId = "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ProgramControls.PostAsync(requestBody);


```