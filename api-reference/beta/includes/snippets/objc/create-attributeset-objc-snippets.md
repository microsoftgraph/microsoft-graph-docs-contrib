---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directory/attributeSets"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAttributeSet *attributeSet = [[MSGraphAttributeSet alloc] init];
[attributeSet setId:@"Engineering"];
[attributeSet setDescription:@"Attributes for engineering team"];
[attributeSet setMaxAttributesPerSet: 25];

NSError *error;
NSData *attributeSetData = [attributeSet getSerializedDataWithError:&error];
[urlRequest setHTTPBody:attributeSetData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```