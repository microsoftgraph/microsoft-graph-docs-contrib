---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("AlexW@contoso.OnMicrosoft.com").calendars("AAMkADAwAABf02bAAAA=").calendarPermissions("L289RXhjaGFuZ2VMYWJTWVnYW5C")
	.buildRequest()
	.delete();

```