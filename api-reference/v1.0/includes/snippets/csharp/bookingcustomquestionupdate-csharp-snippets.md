---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingCustomQuestion
{
	OdataType = "#microsoft.graph.bookingCustomQuestion",
	DisplayName = "What is your age?",
	AnswerInputType = AnswerInputType.Text,
	AnswerOptions = new List<string>
	{
	},
};
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].CustomQuestions["{bookingCustomQuestion-id}"].PatchAsync(requestBody);


```