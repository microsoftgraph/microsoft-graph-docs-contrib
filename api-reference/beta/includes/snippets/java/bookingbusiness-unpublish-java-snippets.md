---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.bookingBusinesses("contosolunchdelivery@contoso.onmicrosoft.com")
	.unpublish()
	.buildRequest()
	.post();

```