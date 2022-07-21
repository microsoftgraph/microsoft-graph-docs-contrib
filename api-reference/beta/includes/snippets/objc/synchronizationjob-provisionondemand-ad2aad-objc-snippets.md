---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/3e916d82-dd59-4944-824d-93092908fd8d/synchronization/jobs/264ea562-28cd-42b1-93e0-8de1f0560581/provisionOnDemand"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSMutableArray *parametersList = [[NSMutableArray alloc] init];
MSGraphSynchronizationJobApplicationParameters *parameters = [[MSGraphSynchronizationJobApplicationParameters alloc] init];
[parameters setRuleId:@"6c409270-f78a-4bc6-af23-7cf3ab6482fe"];
NSMutableArray *subjectsList = [[NSMutableArray alloc] init];
MSGraphSynchronizationJobSubject *subjects = [[MSGraphSynchronizationJobSubject alloc] init];
[subjects setObjectId:@"CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com"];
[subjects setObjectTypeName:@"user"];
[subjectsList addObject: subjects];
[parameters setSubjects:subjectsList];
[parametersList addObject: parameters];
payloadDictionary[@"parameters"] = parametersList;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```