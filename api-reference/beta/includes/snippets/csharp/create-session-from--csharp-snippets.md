---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security.SecurityCopilot;

var requestBody = new Session
{
	OdataType = "#microsoft.graph.security.securityCopilot.session",
	DisplayName = "Who am I",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.SecurityCopilot.Workspaces["{workspace-id}"].Sessions.PostAsync(requestBody);


```