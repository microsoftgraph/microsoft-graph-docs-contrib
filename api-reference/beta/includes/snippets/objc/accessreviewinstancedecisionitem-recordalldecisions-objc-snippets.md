---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/accessReviews/decisions/filterByCurrentUser(on='reviewer')/recordAllDecisions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSString *decision = @"Deny";
payloadDictionary[@"decision"] = decision;

NSString *justification = @"Alice switched teams and no longer works with this group";
payloadDictionary[@"justification"] = justification;

NSString *principalId = @"2043848d-e422-473c-8607-88a3319ff491";
payloadDictionary[@"principalId"] = principalId;

NSString *resourceId = @"733ef921-89e1-4d7e-aeff-83612223c37e";
payloadDictionary[@"resourceId"] = resourceId;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```