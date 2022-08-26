---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingCustomQuestion bookingCustomQuestion = graphClient.bookingBusinesses("contosolunchdelivery@contoso.onmicrosoft.com").customQuestions("3bc6fde0-4ad3-445d-ab17-0fc15dba0774")
	.buildRequest()
	.get();

```