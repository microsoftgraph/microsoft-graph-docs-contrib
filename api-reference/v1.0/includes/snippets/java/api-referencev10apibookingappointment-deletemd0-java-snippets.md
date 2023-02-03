---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").appointments("AAMkADKqAAA=")
	.buildRequest()
	.delete();

```