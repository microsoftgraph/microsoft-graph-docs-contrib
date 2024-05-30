---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingCustomQuestion bookingCustomQuestion = new BookingCustomQuestion();
bookingCustomQuestion.setOdataType("#microsoft.graph.bookingCustomQuestion");
bookingCustomQuestion.setDisplayName("What is your age?");
bookingCustomQuestion.setAnswerInputType(AnswerInputType.Text);
LinkedList<String> answerOptions = new LinkedList<String>();
bookingCustomQuestion.setAnswerOptions(answerOptions);
BookingCustomQuestion result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").customQuestions().post(bookingCustomQuestion);


```