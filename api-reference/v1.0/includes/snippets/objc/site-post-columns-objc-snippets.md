---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/sites/{site-id}/columns"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphColumnDefinition *columnDefinition = [[MSGraphColumnDefinition alloc] init];
[columnDefinition setDescription:@"test"];
[columnDefinition setEnforceUniqueValues: false];
[columnDefinition setHidden: false];
[columnDefinition setIndexed: false];
[columnDefinition setName:@"Title"];
MSGraphTextColumn *text = [[MSGraphTextColumn alloc] init];
[text setAllowMultipleLines: false];
[text setAppendChangesToExistingText: false];
[text setLinesForEditing: 0];
[text setMaxLength: 255];
[columnDefinition setText:text];

NSError *error;
NSData *columnDefinitionData = [columnDefinition getSerializedDataWithError:&error];
[urlRequest setHTTPBody:columnDefinitionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```