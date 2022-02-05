---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/tasks/lists/AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQpLAt/tasks/AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AkOO4xOT"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphBaseTask *baseTask = [[MSGraphBaseTask alloc] init];
MSGraphItemBody *body = [[MSGraphItemBody alloc] init];
[baseTask setBody:body];
[baseTask setBodyLastModifiedDateTime:@"String (timestamp)"];
[baseTask setCompletedDateTime:@"String (timestamp)"];
MSGraphDateTimeTimeZone *dueDateTime = [[MSGraphDateTimeTimeZone alloc] init];
[baseTask setDueDateTime:dueDateTime];
MSGraphDateTimeTimeZone *startDateTime = [[MSGraphDateTimeTimeZone alloc] init];
[baseTask setStartDateTime:startDateTime];
[baseTask setImportance: [MSGraphImportance low]];
MSGraphPatternedRecurrence *recurrence = [[MSGraphPatternedRecurrence alloc] init];
[baseTask setRecurrence:recurrence];
[baseTask setDisplayName:@"String"];
[baseTask setStatus: [MSGraphTaskStatus_v2 notStarted]];
MSGraphPersonalTaskProperties *personalProperties = [[MSGraphPersonalTaskProperties alloc] init];
[baseTask setPersonalProperties:personalProperties];

NSError *error;
NSData *baseTaskData = [baseTask getSerializedDataWithError:&error];
[urlRequest setHTTPBody:baseTaskData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```