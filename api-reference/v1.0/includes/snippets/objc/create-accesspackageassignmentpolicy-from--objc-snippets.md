---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/assignmentPolicies"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessPackageAssignmentPolicy *accessPackageAssignmentPolicy = [[MSGraphAccessPackageAssignmentPolicy alloc] init];
[accessPackageAssignmentPolicy setDisplayName:@"New Policy"];
[accessPackageAssignmentPolicy setDescription:@"policy for assignment"];
[accessPackageAssignmentPolicy setAllowedTargetScope: [MSGraphAllowedTargetScope notSpecified]];
NSMutableArray *specificAllowedTargetsList = [[NSMutableArray alloc] init];
[accessPackageAssignmentPolicy setSpecificAllowedTargets:specificAllowedTargetsList];
MSGraphExpirationPattern *expiration = [[MSGraphExpirationPattern alloc] init];
[expiration setEndDateTime: null];
[expiration setDuration: null];
[expiration setType: [MSGraphExpirationPatternType noExpiration]];
[accessPackageAssignmentPolicy setExpiration:expiration];
MSGraphAccessPackageAssignmentRequestorSettings *requestorSettings = [[MSGraphAccessPackageAssignmentRequestorSettings alloc] init];
[requestorSettings setEnableTargetsToSelfAddAccess: false];
[requestorSettings setEnableTargetsToSelfUpdateAccess: false];
[requestorSettings setEnableTargetsToSelfRemoveAccess: false];
[requestorSettings setAllowCustomAssignmentSchedule: true];
[requestorSettings setEnableOnBehalfRequestorsToAddAccess: false];
[requestorSettings setEnableOnBehalfRequestorsToUpdateAccess: false];
[requestorSettings setEnableOnBehalfRequestorsToRemoveAccess: false];
NSMutableArray *onBehalfRequestorsList = [[NSMutableArray alloc] init];
[requestorSettings setOnBehalfRequestors:onBehalfRequestorsList];
[accessPackageAssignmentPolicy setRequestorSettings:requestorSettings];
MSGraphAccessPackageAssignmentApprovalSettings *requestApprovalSettings = [[MSGraphAccessPackageAssignmentApprovalSettings alloc] init];
[requestApprovalSettings setIsApprovalRequiredForAdd: false];
[requestApprovalSettings setIsApprovalRequiredForUpdate: false];
NSMutableArray *stagesList = [[NSMutableArray alloc] init];
[requestApprovalSettings setStages:stagesList];
[accessPackageAssignmentPolicy setRequestApprovalSettings:requestApprovalSettings];
MSGraphAccessPackage *accessPackage = [[MSGraphAccessPackage alloc] init];
[accessPackage setId:@"a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b"];
[accessPackageAssignmentPolicy setAccessPackage:accessPackage];

NSError *error;
NSData *accessPackageAssignmentPolicyData = [accessPackageAssignmentPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessPackageAssignmentPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```