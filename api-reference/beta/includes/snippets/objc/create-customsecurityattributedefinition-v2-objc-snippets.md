---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directory/customSecurityAttributeDefinitions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCustomSecurityAttributeDefinition *customSecurityAttributeDefinition = [[MSGraphCustomSecurityAttributeDefinition alloc] init];
[customSecurityAttributeDefinition setAttributeSet:@"Engineering"];
[customSecurityAttributeDefinition setDescription:@"Active projects for user"];
[customSecurityAttributeDefinition setIsCollection: true];
[customSecurityAttributeDefinition setIsSearchable: true];
[customSecurityAttributeDefinition setName:@"Project"];
[customSecurityAttributeDefinition setStatus:@"Available"];
[customSecurityAttributeDefinition setType:@"String"];
[customSecurityAttributeDefinition setUsePreDefinedValuesOnly: true];

NSError *error;
NSData *customSecurityAttributeDefinitionData = [customSecurityAttributeDefinition getSerializedDataWithError:&error];
[urlRequest setHTTPBody:customSecurityAttributeDefinitionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```