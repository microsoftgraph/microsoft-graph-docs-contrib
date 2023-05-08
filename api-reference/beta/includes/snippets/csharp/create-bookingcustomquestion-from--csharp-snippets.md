---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.BookingBusinesses.Item.CustomQuestions.Item.CustomQuestion
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.type" , "#microsoft.graph.bookingCustomQuestion"
		},
		{
			"displayName" , "What is your age?"
		},
		{
			"answerInputType" , "text"
		},
		{
			"answerOptions" , new List<>
			{
			}
		},
	},
};
await graphClient.BookingBusinesses["{bookingBusiness-id}"].CustomQuestions["{bookingCustomQuestion-id}"].PostAsync(requestBody);


```