---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingAppointmentCollectionPage appointments = graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").appointments()
	.buildRequest()
	.get();

```