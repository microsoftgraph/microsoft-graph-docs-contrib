---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingCustomQuestionCollectionPage customQuestions = graphClient.bookingBusinesses("contosolunchdelivery@contoso.onmicrosoft.com").customQuestions()
	.buildRequest()
	.get();

```