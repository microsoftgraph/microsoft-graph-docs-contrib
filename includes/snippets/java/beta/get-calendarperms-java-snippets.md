---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CalendarPermissionCollectionPage calendarPermissions = graphClient.users("AlexW@contoso.OnMicrosoft.com").calendar().calendarPermissions()
	.buildRequest()
	.get();

```