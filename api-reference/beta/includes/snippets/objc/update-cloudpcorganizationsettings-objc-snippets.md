---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/deviceManagement/virtualEndpoint/organizationSettings"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCloudPcOrganizationSettings *cloudPcOrganizationSettings = [[MSGraphCloudPcOrganizationSettings alloc] init];
[cloudPcOrganizationSettings setUserAccountType: [MSGraphCloudPcUserAccountType standardUser]];
[cloudPcOrganizationSettings setOsVersion: [MSGraphCloudPcOperatingSystem windows11]];

NSError *error;
NSData *cloudPcOrganizationSettingsData = [cloudPcOrganizationSettings getSerializedDataWithError:&error];
[urlRequest setHTTPBody:cloudPcOrganizationSettingsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```