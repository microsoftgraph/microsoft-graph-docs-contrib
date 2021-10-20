---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr-FR"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphOrganizationalBrandingLocalization *organizationalBrandingLocalization = [[MSGraphOrganizationalBrandingLocalization alloc] init];
[organizationalBrandingLocalization setSignInPageText:@"Welcome to Contoso France."];
[organizationalBrandingLocalization setUsernameHintText:@" "];

NSError *error;
NSData *organizationalBrandingLocalizationData = [organizationalBrandingLocalization getSerializedDataWithError:&error];
[urlRequest setHTTPBody:organizationalBrandingLocalizationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```