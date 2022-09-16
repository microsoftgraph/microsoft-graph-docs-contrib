---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationAssignmentResource *educationAssignmentResource = [[MSGraphEducationAssignmentResource alloc] init];
[educationAssignmentResource setDistributeForStudentWork: false];
MSGraphEducationResource *resource = [[MSGraphEducationResource alloc] init];
[resource setDisplayName:@"Where the Wonders of Learning Never Cease | Wonderopolis"];
[resource setLink:@"https://wonderopolis.org/"];
[resource setThumbnailPreviewUrl: null];
[educationAssignmentResource setResource:resource];

NSError *error;
NSData *educationAssignmentResourceData = [educationAssignmentResource getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationAssignmentResourceData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```