---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identity/continuousAccessEvaluationPolicy"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphContinuousAccessEvaluationPolicy *continuousAccessEvaluationPolicy = [[MSGraphContinuousAccessEvaluationPolicy alloc] init];
[continuousAccessEvaluationPolicy setMigrate: true];

NSError *error;
NSData *continuousAccessEvaluationPolicyData = [continuousAccessEvaluationPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:continuousAccessEvaluationPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```