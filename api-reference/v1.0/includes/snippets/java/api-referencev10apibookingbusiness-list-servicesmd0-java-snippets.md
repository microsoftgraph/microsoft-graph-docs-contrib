---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingServiceCollectionPage services = graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").services()
	.buildRequest()
	.get();

```