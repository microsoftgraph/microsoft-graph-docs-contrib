---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/privacy/subjectRightsRequests/{subjectRightsRequestId}/notes"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAuthoredNote *authoredNote = [[MSGraphAuthoredNote alloc] init];
MSGraphItemBody *content = [[MSGraphItemBody alloc] init];
[content setContent:@"String"];
[content setContentType: [MSGraphBodyType text]];
[authoredNote setContent:content];

NSError *error;
NSData *authoredNoteData = [authoredNote getSerializedDataWithError:&error];
[urlRequest setHTTPBody:authoredNoteData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```