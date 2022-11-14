---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/roleManagementPolicies/DirectoryRole_84841066-274d-4ec0-a5c1-276be684bdd3_200ec19a-09e7-4e7a-9515-cf1ee64b96f9/rules/Expiration_EndUser_Assignment"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUnifiedRoleManagementPolicyRule *unifiedRoleManagementPolicyRule = [[MSGraphUnifiedRoleManagementPolicyRule alloc] init];
[unifiedRoleManagementPolicyRule setId:@"Expiration_EndUser_Assignment"];
[unifiedRoleManagementPolicyRule setIsExpirationRequired: true];
[unifiedRoleManagementPolicyRule setMaximumDuration:@"PT1H45M"];
MSGraphUnifiedRoleManagementPolicyRuleTarget *target = [[MSGraphUnifiedRoleManagementPolicyRuleTarget alloc] init];
[target setCaller:@"EndUser"];
NSMutableArray *operationsList = [[NSMutableArray alloc] init];
[operationsList addObject: @"All"];
[target setOperations:operationsList];
[target setLevel:@"Assignment"];
NSMutableArray *inheritableSettingsList = [[NSMutableArray alloc] init];
[target setInheritableSettings:inheritableSettingsList];
NSMutableArray *enforcedSettingsList = [[NSMutableArray alloc] init];
[target setEnforcedSettings:enforcedSettingsList];
[unifiedRoleManagementPolicyRule setTarget:target];

NSError *error;
NSData *unifiedRoleManagementPolicyRuleData = [unifiedRoleManagementPolicyRule getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedRoleManagementPolicyRuleData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```