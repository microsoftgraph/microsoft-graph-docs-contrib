---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directory/customSecurityAttributeDefinitions?$filter=attributeSet%20eq%20'Engineering'%20and%20status%20eq%20'Available'%20and%20type%20eq%20'String'"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		MSCollection *collection = [[MSCollection alloc] initWithData:data error:&jsonError];
		MSGraphCustomSecurityAttributeDefinition *customSecurityAttributeDefinition = [[MSGraphCustomSecurityAttributeDefinition alloc] initWithDictionary:[[collection value] objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```