---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingCustomQuestion bookingCustomQuestion = new BookingCustomQuestion();
bookingCustomQuestion.displayName = "What is your age?";
bookingCustomQuestion.answerInputType = AnswerInputType.TEXT;
LinkedList<String> answerOptionsList = new LinkedList<String>();
bookingCustomQuestion.answerOptions = answerOptionsList;

graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").customQuestions("91f1ef26-ca00-451c-1c64-8f3560c80d3d")
	.buildRequest()
	.patch(bookingCustomQuestion);

```