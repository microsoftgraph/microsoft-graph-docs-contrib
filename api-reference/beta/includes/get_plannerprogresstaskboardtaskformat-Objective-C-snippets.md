---
description: "Automatically generated file. DO NOT MODIFY"
---

```objective-c

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/planner/tasks/'id'/progressTaskBoardFormat"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		MSGraphPlannerProgressTaskBoardTaskFormat *plannerProgressTaskBoardTaskFormat = [[MSGraphPlannerProgressTaskBoardTaskFormat alloc] initWithData:data error:&nserror];

}];

[meDataTask execute];

```