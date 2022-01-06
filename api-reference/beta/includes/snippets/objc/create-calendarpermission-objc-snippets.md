---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/users/458d4c95-124e-49da-ba9d-1dd0387e682e/calendar/calendarPermissions"]]];
[urlRequest setHTTPMethod:@"POST"];

MSGraphCalendarPermission *calendarPermission = [[MSGraphCalendarPermission alloc] init];
MSGraphEmailAddress *emailAddress = [[MSGraphEmailAddress alloc] init];
[emailAddress setName:@"Samantha Booth"];
[emailAddress setAddress:@"samanthab@adatum.onmicrosoft.com"];
[calendarPermission setEmailAddress:emailAddress];
[calendarPermission setIsInsideOrganization: true];
[calendarPermission setIsRemovable: true];
[calendarPermission setRole: [MSGraphCalendarRoleType read]];

NSError *error;
NSData *calendarPermissionData = [calendarPermission getSerializedDataWithError:&error];
[urlRequest setHTTPBody:calendarPermissionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```