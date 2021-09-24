---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/roleManagement/directory/roleEligibilityScheduleRequests"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUnifiedRoleEligibilityScheduleRequest *unifiedRoleEligibilityScheduleRequest = [[MSGraphUnifiedRoleEligibilityScheduleRequest alloc] init];
[unifiedRoleEligibilityScheduleRequest setAction:@"AdminAssign"];
[unifiedRoleEligibilityScheduleRequest setJustification:@"Assign User Admin eligibility to IT Helpdesk (User) group"];
[unifiedRoleEligibilityScheduleRequest setRoleDefinitionId:@"fdd7a751-b60b-444a-984c-02652fe8fa1c"];
[unifiedRoleEligibilityScheduleRequest setDirectoryScopeId:@"/"];
[unifiedRoleEligibilityScheduleRequest setPrincipalId:@"07706ff1-46c7-4847-ae33-3003830675a1"];
MSGraphRequestSchedule *scheduleInfo = [[MSGraphRequestSchedule alloc] init];
[scheduleInfo setStartDateTime: "2021-07-01T00:00:00Z"];
MSGraphExpirationPattern *expiration = [[MSGraphExpirationPattern alloc] init];
[expiration setEndDateTime: "2022-06-30T00:00:00Z"];
[expiration setType: [MSGraphExpirationPatternType afterDateTime]];
[scheduleInfo setExpiration:expiration];
[unifiedRoleEligibilityScheduleRequest setScheduleInfo:scheduleInfo];

NSError *error;
NSData *unifiedRoleEligibilityScheduleRequestData = [unifiedRoleEligibilityScheduleRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedRoleEligibilityScheduleRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```