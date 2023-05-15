---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingCustomQuestion
{
	OdataType = "#microsoft.graph.bookingCustomQuestion",
	DisplayName = "What is your age?",
	AnswerInputType = AnswerInputType.Text,
	AnswerOptions = new List<String>
	{
	},
};
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].CustomQuestions.PostAsync(requestBody);


```