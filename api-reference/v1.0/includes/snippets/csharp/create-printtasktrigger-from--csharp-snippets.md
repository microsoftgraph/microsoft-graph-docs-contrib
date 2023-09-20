---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrintTaskTrigger
{
	Event = PrintEvent.JobStarted,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"definition@odata.bind" , "https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}"
		},
	},
};
var result = await graphClient.Print.Printers["{printer-id}"].TaskTriggers.PostAsync(requestBody);


```