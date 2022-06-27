---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/abd306ef-f7b2-4a10-9fd1-493454322489/stages/d4fa4045-4716-436d-aec5-57b0a713f095"]]];
[urlRequest setHTTPMethod:@"PATCH"];

MSGraphApprovalStage *approvalStage = [[MSGraphApprovalStage alloc] init];
[approvalStage setReviewResult:@"Approve"];
[approvalStage setJustification:@"OK"];

NSError *error;
NSData *approvalStageData = [approvalStage getSerializedDataWithError:&error];
[urlRequest setHTTPBody:approvalStageData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```