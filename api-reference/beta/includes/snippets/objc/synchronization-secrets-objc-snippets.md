---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/{id}/synchronization/secrets"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphSynchronizationSecretKeyStringValuePair *secrets = [[MSGraphSynchronizationSecretKeyStringValuePair alloc] init];
NSMutableArray *valueList = [[NSMutableArray alloc] init];
MSGraphString *value = [[MSGraphString alloc] init];
[value setKey:@"BaseAddress"];
[value setValue:@"user@domain.com"];
[valueList addObject: value];
MSGraphString *value = [[MSGraphString alloc] init];
[value setKey:@"SecretToken"];
[value setValue:@"password-value"];
[valueList addObject: value];
MSGraphString *value = [[MSGraphString alloc] init];
[value setKey:@"SyncNotificationSettings"];
[value setValue:@"{\"Enabled\":false,\"DeleteThresholdEnabled\":false}"];
[valueList addObject: value];
MSGraphString *value = [[MSGraphString alloc] init];
[value setKey:@"SyncAll"];
[value setValue:@"false"];
[valueList addObject: value];
[secrets setValue:valueList];

NSError *error;
NSData *secretsData = [secrets getSerializedDataWithError:&error];
[urlRequest setHTTPBody:secretsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```