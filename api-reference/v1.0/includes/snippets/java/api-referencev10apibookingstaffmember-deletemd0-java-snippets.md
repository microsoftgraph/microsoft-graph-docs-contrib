---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").staffMembers("5fae928f-6d2d-417a-ad96-4b0caeb362d6")
	.buildRequest()
	.delete();

```