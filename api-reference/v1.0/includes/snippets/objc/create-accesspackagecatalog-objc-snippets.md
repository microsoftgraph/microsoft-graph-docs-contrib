---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/catalogs"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessPackageCatalog *accessPackageCatalog = [[MSGraphAccessPackageCatalog alloc] init];
[accessPackageCatalog setDisplayName:@"sales"];
[accessPackageCatalog setDescription:@"for employees working with sales and outside sales partners"];
[accessPackageCatalog setState: [MSGraphAccessPackageCatalogState published]];
[accessPackageCatalog setIsExternallyVisible: true];

NSError *error;
NSData *accessPackageCatalogData = [accessPackageCatalog getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessPackageCatalogData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```