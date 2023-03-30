---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrintTaskTrigger
{
	Event = PrintEvent.JobStarted,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"definition@odata.bind" , "https://graph.microsoft.com/beta/print/taskDefinitions/3203656e-6069-4e10-8147-d25290b00a3c"
		},
	},
};
var result = await graphClient.Print.Printers["{printer-id}"].TaskTriggers.PostAsync(requestBody);


```