---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrintTask
{
	Status = new PrintTaskStatus
	{
		State = PrintTaskProcessingState.Completed,
		Description = "completed",
	},
};
var result = await graphClient.Print.TaskDefinitions["{printTaskDefinition-id}"].Tasks["{printTask-id}"].PatchAsync(requestBody);


```