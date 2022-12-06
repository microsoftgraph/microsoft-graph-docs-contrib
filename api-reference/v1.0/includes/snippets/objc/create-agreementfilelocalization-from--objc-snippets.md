---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/termsOfUse/agreements/94410bbf-3d3e-4683-8149-f034e55c39dd/files"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAgreementFileLocalization *agreementFileLocalization = [[MSGraphAgreementFileLocalization alloc] init];
[agreementFileLocalization setFileName:@"Contoso ToU for guest users (French)"];
[agreementFileLocalization setLanguage:@"fr-FR"];
[agreementFileLocalization setIsDefault: false];
[agreementFileLocalization setIsMajorVersion: false];
[agreementFileLocalization setDisplayName:@"Contoso ToU for guest users (French)"];
MSGraphAgreementFileData *fileData = [[MSGraphAgreementFileData alloc] init];
[fileData setData:@"base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data"];
[agreementFileLocalization setFileData:fileData];

NSError *error;
NSData *agreementFileLocalizationData = [agreementFileLocalization getSerializedDataWithError:&error];
[urlRequest setHTTPBody:agreementFileLocalizationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```