---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingCustomQuestion = new BookingCustomQuestion
{
	DisplayName = "What is your age?",
	AnswerInputType = AnswerInputType.Text,
	AnswerOptions = new List<String>()
	{
	}
};

await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].CustomQuestions
	.Request()
	.AddAsync(bookingCustomQuestion);

```