---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/accessReviews/definitions/5dcfcc88-da88-4252-8629-a0807b4b076d/instances/720b8ee0-cee4-42ac-b164-894c48703acc"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessReviewInstance *accessReviewInstance = [[MSGraphAccessReviewInstance alloc] init];
MSGraphAccessReviewScope *scope = [[MSGraphAccessReviewScope alloc] init];
NSMutableArray *principalScopesList = [[NSMutableArray alloc] init];
MSGraphAccessReviewScope *principalScopes = [[MSGraphAccessReviewScope alloc] init];
[principalScopes setQuery:@"/v1.0/users"];
[principalScopes setQueryType:@"MicrosoftGraph"];
[principalScopesList addObject: principalScopes];
MSGraphAccessReviewScope *principalScopes = [[MSGraphAccessReviewScope alloc] init];
[principalScopes setQuery:@"/v1.0/groups"];
[principalScopes setQueryType:@"MicrosoftGraph"];
[principalScopesList addObject: principalScopes];
[scope setPrincipalScopes:principalScopesList];
NSMutableArray *resourceScopesList = [[NSMutableArray alloc] init];
MSGraphAccessReviewScope *resourceScopes = [[MSGraphAccessReviewScope alloc] init];
[resourceScopes setQuery:@"/beta/roleManagement/directory/roleDefinitions/9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"];
[resourceScopes setQueryType:@"MicrosoftGraph"];
[resourceScopesList addObject: resourceScopes];
[scope setResourceScopes:resourceScopesList];
[accessReviewInstance setScope:scope];
NSMutableArray *reviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *reviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[reviewers setQuery:@"/users/1ed8ac56-4827-4733-8f80-86adc2e67db5"];
[reviewers setQueryType:@"MicrosoftGraph"];
[reviewersList addObject: reviewers];
[accessReviewInstance setReviewers:reviewersList];
NSMutableArray *fallbackReviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *fallbackReviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[fallbackReviewers setQuery:@"/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e"];
[fallbackReviewers setQueryType:@"MicrosoftGraph"];
[fallbackReviewersList addObject: fallbackReviewers];
MSGraphAccessReviewReviewerScope *fallbackReviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[fallbackReviewers setQuery:@"/users/1ed8ac56-4827-4733-8f80-86adc2e67db5"];
[fallbackReviewers setQueryType:@"MicrosoftGraph"];
[fallbackReviewersList addObject: fallbackReviewers];
[accessReviewInstance setFallbackReviewers:fallbackReviewersList];

NSError *error;
NSData *accessReviewInstanceData = [accessReviewInstance getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessReviewInstanceData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```