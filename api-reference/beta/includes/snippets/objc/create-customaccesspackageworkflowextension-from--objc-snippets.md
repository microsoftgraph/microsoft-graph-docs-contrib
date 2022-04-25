---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customAccessPackageWorkflowExtensions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCustomAccessPackageWorkflowExtension *customAccessPackageWorkflowExtension = [[MSGraphCustomAccessPackageWorkflowExtension alloc] init];
[customAccessPackageWorkflowExtension setDisplayName:@"test_action_0124"];
[customAccessPackageWorkflowExtension setDescription:@"this is for graph testing only"];
MSGraphCustomExtensionEndpointConfiguration *endpointConfiguration = [[MSGraphCustomExtensionEndpointConfiguration alloc] init];
[endpointConfiguration setSubscriptionId:@"38ab2ccc-3747-4567-b36b-9478f5602f0d"];
[endpointConfiguration setResourceGroupName:@"EMLogicApp"];
[endpointConfiguration setLogicAppWorkflowName:@"customextension_test"];
[customAccessPackageWorkflowExtension setEndpointConfiguration:endpointConfiguration];
MSGraphCustomExtensionAuthenticationConfiguration *authenticationConfiguration = [[MSGraphCustomExtensionAuthenticationConfiguration alloc] init];
[authenticationConfiguration setResourceId:@"f604bd15-f785-4309-ad7c-6fad18ddb6cb"];
[customAccessPackageWorkflowExtension setAuthenticationConfiguration:authenticationConfiguration];

NSError *error;
NSData *customAccessPackageWorkflowExtensionData = [customAccessPackageWorkflowExtension getSerializedDataWithError:&error];
[urlRequest setHTTPBody:customAccessPackageWorkflowExtensionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```