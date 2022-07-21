---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directoryObjects/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e/checkMemberGroups"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSMutableArray *groupIdsList = [[NSMutableArray alloc] init];
[groupIdsList addObject: @"f448435d-3ca7-4073-8152-a1fd73c0fd09"];
[groupIdsList addObject: @"bd7c6263-4dd5-4ae8-8c96-556e1c0bece6"];
[groupIdsList addObject: @"93670da6-d731-4366-94b5-abed40b6016b"];
[groupIdsList addObject: @"f5484ab1-4d4d-41ec-a9b8-754b3957bfc7"];
[groupIdsList addObject: @"c9103f26-f3cf-4004-a611-2a14e81b8f79"];
payloadDictionary[@"groupIds"] = groupIdsList;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```