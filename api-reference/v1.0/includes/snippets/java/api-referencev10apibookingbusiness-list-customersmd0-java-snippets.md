---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingCustomerBaseCollectionPage customers = graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").customers()
	.buildRequest()
	.get();

```