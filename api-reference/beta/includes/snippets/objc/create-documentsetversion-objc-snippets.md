---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/sites/root/lists/Documents/items/2/documentSetVersions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphDocumentSetVersion *documentSetVersion = [[MSGraphDocumentSetVersion alloc] init];
[documentSetVersion setComment:@"v1"];
[documentSetVersion setShouldCaptureMinorVersion: false];

NSError *error;
NSData *documentSetVersionData = [documentSetVersion getSerializedDataWithError:&error];
[urlRequest setHTTPBody:documentSetVersionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```