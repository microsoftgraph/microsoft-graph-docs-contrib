---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security.SecurityCopilot;

var requestBody = new Evaluation
{
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.SecurityCopilot.Workspaces["{workspace-id}"].Sessions["{session-id}"].Prompts["{prompt-id}"].Evaluations.PostAsync(requestBody);


```