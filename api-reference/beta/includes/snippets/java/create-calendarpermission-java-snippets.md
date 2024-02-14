---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CalendarPermission calendarPermission = new CalendarPermission();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setName("Samantha Booth");
emailAddress.setAddress("samanthab@contoso.com");
calendarPermission.setEmailAddress(emailAddress);
calendarPermission.setIsInsideOrganization(true);
calendarPermission.setIsRemovable(true);
calendarPermission.setRole(CalendarRoleType.Read);
CalendarPermission result = graphClient.users().byUserId("{user-id}").calendar().calendarPermissions().post(calendarPermission);


```