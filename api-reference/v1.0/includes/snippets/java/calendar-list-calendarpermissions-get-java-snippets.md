---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CalendarPermissionCollectionPage calendarPermissions = graphClient.users("{id}").calendar().calendarPermissions()
	.buildRequest()
	.get();

```