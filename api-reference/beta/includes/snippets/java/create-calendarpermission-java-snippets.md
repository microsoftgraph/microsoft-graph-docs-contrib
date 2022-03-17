---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CalendarPermission calendarPermission = new CalendarPermission();
EmailAddress emailAddress = new EmailAddress();
emailAddress.name = "Samantha Booth";
emailAddress.address = "samanthab@adatum.onmicrosoft.com";
calendarPermission.emailAddress = emailAddress;
calendarPermission.isInsideOrganization = true;
calendarPermission.isRemovable = true;
calendarPermission.role = CalendarRoleType.READ;

graphClient.users("458d4c95-124e-49da-ba9d-1dd0387e682e").calendar().calendarPermissions()
	.buildRequest()
	.post(calendarPermission);

```