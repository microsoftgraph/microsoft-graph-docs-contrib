---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customAccessPackageWorkflowExtensions/98ffaec5-ae8e-4902-a434-5ffc5d3d3cd0"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCustomAccessPackageWorkflowExtension *customAccessPackageWorkflowExtension = [[MSGraphCustomAccessPackageWorkflowExtension alloc] init];
[customAccessPackageWorkflowExtension setDisplayName:@"test_action_0124_email"];
[customAccessPackageWorkflowExtension setDescription:@"this is for graph testing only"];

NSError *error;
NSData *customAccessPackageWorkflowExtensionData = [customAccessPackageWorkflowExtension getSerializedDataWithError:&error];
[urlRequest setHTTPBody:customAccessPackageWorkflowExtensionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```