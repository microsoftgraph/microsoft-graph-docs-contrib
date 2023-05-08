---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Teams["{team-id}"].Members.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "(microsoft.graph.aadUserConversationMember/userId eq '73761f06-2ac9-469c-9f10-279a8cc267f9')";
});


```