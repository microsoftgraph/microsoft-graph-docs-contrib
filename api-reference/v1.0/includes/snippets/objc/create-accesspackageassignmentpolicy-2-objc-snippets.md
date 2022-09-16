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
[accessPackageAssignmentPolicy setDisplayName:@"policy for external access requests"];
[accessPackageAssignmentPolicy setDescription:@"policy for users from connected organizations to request access, with two stages of approval."];
[accessPackageAssignmentPolicy setAllowedTargetScope: [MSGraphAllowedTargetScope allConfiguredConnectedOrganizationUsers]];
NSMutableArray *specificAllowedTargetsList = [[NSMutableArray alloc] init];
[accessPackageAssignmentPolicy setSpecificAllowedTargets:specificAllowedTargetsList];
MSGraphExpirationPattern *expiration = [[MSGraphExpirationPattern alloc] init];
[expiration setType: [MSGraphExpirationPatternType noExpiration]];
[accessPackageAssignmentPolicy setExpiration:expiration];
MSGraphAccessPackageAssignmentRequestorSettings *requestorSettings = [[MSGraphAccessPackageAssignmentRequestorSettings alloc] init];
[requestorSettings setEnableTargetsToSelfAddAccess: true];
[requestorSettings setEnableTargetsToSelfUpdateAccess: true];
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
[stages setDurationBeforeAutomaticDenial:@"P14D"];
[stages setIsApproverJustificationRequired: false];
[stages setIsEscalationEnabled: false];
[stages setDurationBeforeEscalation:@"PT0S"];
NSMutableArray *primaryApproversList = [[NSMutableArray alloc] init];
MSGraphSubjectSet *primaryApprovers = [[MSGraphSubjectSet alloc] init];
[primaryApproversList addObject: primaryApprovers];
[stages setPrimaryApprovers:primaryApproversList];
NSMutableArray *fallbackPrimaryApproversList = [[NSMutableArray alloc] init];
MSGraphSubjectSet *fallbackPrimaryApprovers = [[MSGraphSubjectSet alloc] init];
[fallbackPrimaryApprovers setUserId:@"7deff43e-1f17-44ef-9e5f-d516b0ba11d4"];
[fallbackPrimaryApproversList addObject: fallbackPrimaryApprovers];
MSGraphSubjectSet *fallbackPrimaryApprovers = [[MSGraphSubjectSet alloc] init];
[fallbackPrimaryApprovers setGroupId:@"1623f912-5e86-41c2-af47-39dd67582b66"];
[fallbackPrimaryApproversList addObject: fallbackPrimaryApprovers];
[stages setFallbackPrimaryApprovers:fallbackPrimaryApproversList];
NSMutableArray *escalationApproversList = [[NSMutableArray alloc] init];
[stages setEscalationApprovers:escalationApproversList];
NSMutableArray *fallbackEscalationApproversList = [[NSMutableArray alloc] init];
[stages setFallbackEscalationApprovers:fallbackEscalationApproversList];
[stagesList addObject: stages];
MSGraphAccessPackageApprovalStage *stages = [[MSGraphAccessPackageApprovalStage alloc] init];
[stages setDurationBeforeAutomaticDenial:@"P14D"];
[stages setIsApproverJustificationRequired: false];
[stages setIsEscalationEnabled: false];
[stages setDurationBeforeEscalation:@"PT0S"];
NSMutableArray *primaryApproversList = [[NSMutableArray alloc] init];
[stages setPrimaryApprovers:primaryApproversList];
NSMutableArray *fallbackPrimaryApproversList = [[NSMutableArray alloc] init];
MSGraphSubjectSet *fallbackPrimaryApprovers = [[MSGraphSubjectSet alloc] init];
[fallbackPrimaryApprovers setUserId:@"46184453-e63b-4f20-86c2-c557ed5d5df9"];
[fallbackPrimaryApproversList addObject: fallbackPrimaryApprovers];
MSGraphSubjectSet *fallbackPrimaryApprovers = [[MSGraphSubjectSet alloc] init];
[fallbackPrimaryApprovers setGroupId:@"1623f912-5e86-41c2-af47-39dd67582b66"];
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