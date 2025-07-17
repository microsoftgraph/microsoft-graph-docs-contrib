---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ApprovalItemResponse
{
	Response = "Approve",
	Comments = "Approve this request",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.Approval.ApprovalItems["{approvalItem-id}"].Responses.PostAsync(requestBody);


```