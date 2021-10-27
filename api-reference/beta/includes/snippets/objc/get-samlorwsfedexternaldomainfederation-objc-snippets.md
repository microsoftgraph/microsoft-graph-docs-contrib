---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directory/federationConfigurations/graph.samlOrWsFedExternalDomainFederation?$filter=domains/any(x:%20x/id%20eq%20'contoso.com')"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		MSCollection *collection = [[MSCollection alloc] initWithData:data error:&jsonError];
		MSGraphSamlOrWsFedExternalDomainFederation *samlOrWsFedExternalDomainFederation = [[MSGraphSamlOrWsFedExternalDomainFederation alloc] initWithDictionary:[[collection value] objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```