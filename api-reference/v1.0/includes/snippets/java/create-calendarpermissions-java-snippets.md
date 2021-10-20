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

graphClient.me().calendar().calendarPermissions()
	.buildRequest()
	.post(calendarPermission);

```