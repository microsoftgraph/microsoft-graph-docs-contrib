---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.solutions().bookingBusinesses("fabrikam@contoso.onmicrosoft.com")
	.buildRequest()
	.delete();

```