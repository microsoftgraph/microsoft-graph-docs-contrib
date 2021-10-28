---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/privacy/subjectRightsRequests/{subjectRightsRequestId}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphSubjectRightsRequest *subjectRightsRequest = [[MSGraphSubjectRightsRequest alloc] init];
[subjectRightsRequest setInternalDueDateTime: "2021-08-30T00:00:00Z"];

NSError *error;
NSData *subjectRightsRequestData = [subjectRightsRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:subjectRightsRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```