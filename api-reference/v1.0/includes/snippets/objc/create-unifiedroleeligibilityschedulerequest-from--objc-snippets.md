---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/roleManagement/directory/roleEligibilityScheduleRequests"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUnifiedRoleEligibilityScheduleRequest *unifiedRoleEligibilityScheduleRequest = [[MSGraphUnifiedRoleEligibilityScheduleRequest alloc] init];
[unifiedRoleEligibilityScheduleRequest setAction: [MSGraphUnifiedRoleScheduleRequestActions adminAssign]];
[unifiedRoleEligibilityScheduleRequest setJustification:@"Assign Attribute Assignment Admin eligibility to restricted user"];
[unifiedRoleEligibilityScheduleRequest setRoleDefinitionId:@"8424c6f0-a189-499e-bbd0-26c1753c96d4"];
[unifiedRoleEligibilityScheduleRequest setDirectoryScopeId:@"/"];
[unifiedRoleEligibilityScheduleRequest setPrincipalId:@"071cc716-8147-4397-a5ba-b2105951cc0b"];
MSGraphRequestSchedule *scheduleInfo = [[MSGraphRequestSchedule alloc] init];
[scheduleInfo setStartDateTime: "2022-04-10T00:00:00Z"];
MSGraphExpirationPattern *expiration = [[MSGraphExpirationPattern alloc] init];
[expiration setType: [MSGraphExpirationPatternType afterDateTime]];
[expiration setEndDateTime: "2024-04-10T00:00:00Z"];
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