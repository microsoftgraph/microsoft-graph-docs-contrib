---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/roleManagement/directory/roleAssignmentScheduleRequests/"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUnifiedRoleAssignmentScheduleRequest *unifiedRoleAssignmentScheduleRequest = [[MSGraphUnifiedRoleAssignmentScheduleRequest alloc] init];
[unifiedRoleAssignmentScheduleRequest setAction:@"SelfActivate"];
[unifiedRoleAssignmentScheduleRequest setPrincipalId:@"c6ad1942-4afa-47f8-8d48-afb5d8d69d2f"];
[unifiedRoleAssignmentScheduleRequest setRoleDefinitionId:@"9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"];
[unifiedRoleAssignmentScheduleRequest setDirectoryScopeId:@"/"];
[unifiedRoleAssignmentScheduleRequest setJustification:@"Need to update app roles for selected apps."];
MSGraphRequestSchedule *scheduleInfo = [[MSGraphRequestSchedule alloc] init];
[scheduleInfo setStartDateTime: "2021-08-17T17:40:00Z"];
MSGraphExpirationPattern *expiration = [[MSGraphExpirationPattern alloc] init];
[expiration setType: [MSGraphExpirationPatternType afterDuration]];
[expiration setDuration:@"PT5H"];
[scheduleInfo setExpiration:expiration];
[unifiedRoleAssignmentScheduleRequest setScheduleInfo:scheduleInfo];
MSGraphTicketInfo *ticketInfo = [[MSGraphTicketInfo alloc] init];
[ticketInfo setTicketNumber:@"CONTOSO:Normal-67890"];
[ticketInfo setTicketSystem:@"MS Project"];
[unifiedRoleAssignmentScheduleRequest setTicketInfo:ticketInfo];

NSError *error;
NSData *unifiedRoleAssignmentScheduleRequestData = [unifiedRoleAssignmentScheduleRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedRoleAssignmentScheduleRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```