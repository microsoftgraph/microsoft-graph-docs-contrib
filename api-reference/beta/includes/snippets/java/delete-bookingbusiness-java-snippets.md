---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.bookingBusinesses("fabrikam@M0000000000.onmicrosoft.com")
	.buildRequest()
	.delete();

```