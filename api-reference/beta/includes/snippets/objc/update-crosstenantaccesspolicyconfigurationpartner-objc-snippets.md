---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/crossTenantAccessPolicy/partners/90e29127-71ad-49c7-9ce8-db3f41ea06f1"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCrossTenantAccessPolicyConfigurationPartner *crossTenantAccessPolicyConfigurationPartner = [[MSGraphCrossTenantAccessPolicyConfigurationPartner alloc] init];
MSGraphCrossTenantAccessPolicyInboundTrust *inboundTrust = [[MSGraphCrossTenantAccessPolicyInboundTrust alloc] init];
[inboundTrust setIsMfaAccepted: true];
[inboundTrust setIsCompliantDeviceAccepted: true];
[inboundTrust setIsHybridAzureADJoinedDeviceAccepted: true];
[crossTenantAccessPolicyConfigurationPartner setInboundTrust:inboundTrust];

NSError *error;
NSData *crossTenantAccessPolicyConfigurationPartnerData = [crossTenantAccessPolicyConfigurationPartner getSerializedDataWithError:&error];
[urlRequest setHTTPBody:crossTenantAccessPolicyConfigurationPartnerData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```