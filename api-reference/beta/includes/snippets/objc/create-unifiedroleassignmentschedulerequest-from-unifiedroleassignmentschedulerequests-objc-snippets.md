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
[unifiedRoleAssignmentScheduleRequest setAction:@"AdminAssign"];
[unifiedRoleAssignmentScheduleRequest setJustification:@"Assign User Admin to IT Helpdesk (User) group"];
[unifiedRoleAssignmentScheduleRequest setRoleDefinitionId:@"fdd7a751-b60b-444a-984c-02652fe8fa1c"];
[unifiedRoleAssignmentScheduleRequest setDirectoryScopeId:@"/"];
[unifiedRoleAssignmentScheduleRequest setPrincipalId:@"07706ff1-46c7-4847-ae33-3003830675a1"];
MSGraphRequestSchedule *scheduleInfo = [[MSGraphRequestSchedule alloc] init];
[scheduleInfo setStartDateTime: "2021-07-01T00:00:00Z"];
MSGraphExpirationPattern *expiration = [[MSGraphExpirationPattern alloc] init];
[expiration setType: [MSGraphExpirationPatternType noExpiration]];
[scheduleInfo setExpiration:expiration];
[unifiedRoleAssignmentScheduleRequest setScheduleInfo:scheduleInfo];

NSError *error;
NSData *unifiedRoleAssignmentScheduleRequestData = [unifiedRoleAssignmentScheduleRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedRoleAssignmentScheduleRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```