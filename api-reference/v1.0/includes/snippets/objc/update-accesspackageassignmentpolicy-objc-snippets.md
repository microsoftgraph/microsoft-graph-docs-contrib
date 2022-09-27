---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/assignmentPolicies/87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessPackageAssignmentPolicy *accessPackageAssignmentPolicy = [[MSGraphAccessPackageAssignmentPolicy alloc] init];
[accessPackageAssignmentPolicy setId:@"87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187"];
[accessPackageAssignmentPolicy setDisplayName:@"All Users"];
[accessPackageAssignmentPolicy setDescription:@"All users can request for access to the directory."];
[accessPackageAssignmentPolicy setAllowedTargetScope: [MSGraphAllowedTargetScope allDirectoryUsers]];
NSMutableArray *specificAllowedTargetsList = [[NSMutableArray alloc] init];
[accessPackageAssignmentPolicy setSpecificAllowedTargets:specificAllowedTargetsList];
MSGraphExpirationPattern *expiration = [[MSGraphExpirationPattern alloc] init];
[expiration setType: [MSGraphExpirationPatternType noExpiration]];
[accessPackageAssignmentPolicy setExpiration:expiration];
MSGraphAccessPackageAssignmentRequestorSettings *requestorSettings = [[MSGraphAccessPackageAssignmentRequestorSettings alloc] init];
[requestorSettings setEnableTargetsToSelfAddAccess: true];
[requestorSettings setEnableTargetsToSelfUpdateAccess: false];
[requestorSettings setEnableTargetsToSelfRemoveAccess: true];
[requestorSettings setAllowCustomAssignmentSchedule: false];
[requestorSettings setEnableOnBehalfRequestorsToAddAccess: false];
[requestorSettings setEnableOnBehalfRequestorsToUpdateAccess: false];
[requestorSettings setEnableOnBehalfRequestorsToRemoveAccess: false];
NSMutableArray *onBehalfRequestorsList = [[NSMutableArray alloc] init];
[requestorSettings setOnBehalfRequestors:onBehalfRequestorsList];
[accessPackageAssignmentPolicy setRequestorSettings:requestorSettings];
MSGraphAccessPackageAssignmentApprovalSettings *requestApprovalSettings = [[MSGraphAccessPackageAssignmentApprovalSettings alloc] init];
[requestApprovalSettings setIsApprovalRequiredForAdd: true];
[requestApprovalSettings setIsApprovalRequiredForUpdate: false];
NSMutableArray *stagesList = [[NSMutableArray alloc] init];
MSGraphAccessPackageApprovalStage *stages = [[MSGraphAccessPackageApprovalStage alloc] init];
[stages setDurationBeforeAutomaticDenial:@"P2D"];
[stages setIsApproverJustificationRequired: false];
[stages setIsEscalationEnabled: false];
[stages setDurationBeforeEscalation:@"PT0S"];
NSMutableArray *primaryApproversList = [[NSMutableArray alloc] init];
MSGraphSubjectSet *primaryApprovers = [[MSGraphSubjectSet alloc] init];
[primaryApprovers setManagerLevel: 1];
[primaryApproversList addObject: primaryApprovers];
[stages setPrimaryApprovers:primaryApproversList];
NSMutableArray *fallbackPrimaryApproversList = [[NSMutableArray alloc] init];
MSGraphSubjectSet *fallbackPrimaryApprovers = [[MSGraphSubjectSet alloc] init];
[fallbackPrimaryApprovers setUserId:@"e6bf4d7d-6824-4dd0-809d-5bf42d4817c2"];
[fallbackPrimaryApprovers setDescription:@"user"];
[fallbackPrimaryApproversList addObject: fallbackPrimaryApprovers];
[stages setFallbackPrimaryApprovers:fallbackPrimaryApproversList];
NSMutableArray *escalationApproversList = [[NSMutableArray alloc] init];
[stages setEscalationApprovers:escalationApproversList];
NSMutableArray *fallbackEscalationApproversList = [[NSMutableArray alloc] init];
[stages setFallbackEscalationApprovers:fallbackEscalationApproversList];
[stagesList addObject: stages];
[requestApprovalSettings setStages:stagesList];
[accessPackageAssignmentPolicy setRequestApprovalSettings:requestApprovalSettings];
MSGraphAccessPackage *accessPackage = [[MSGraphAccessPackage alloc] init];
[accessPackage setId:@"49d2c59b-0a81-463d-a8ec-ddad3935d8a0"];
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