---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingCurrency bookingCurrency = graphClient.solutions().bookingCurrencies("USD")
	.buildRequest()
	.get();

```