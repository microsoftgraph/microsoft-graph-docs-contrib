---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/groupSettings"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphGroupSetting *groupSetting = [[MSGraphGroupSetting alloc] init];
[groupSetting setDisplayName:@"Group.Unified"];
[groupSetting setTemplateId:@"62375ab9-6b52-47ed-826b-58e47e0e304b"];
NSMutableArray *valuesList = [[NSMutableArray alloc] init];
MSGraphSettingValue *values = [[MSGraphSettingValue alloc] init];
[values setName:@"GuestUsageGuidelinesUrl"];
[values setValue:@"https://privacy.contoso.com/privacystatement"];
[valuesList addObject: values];
MSGraphSettingValue *values = [[MSGraphSettingValue alloc] init];
[values setName:@"EnableMSStandardBlockedWords"];
[values setValue:@"true"];
[valuesList addObject: values];
MSGraphSettingValue *values = [[MSGraphSettingValue alloc] init];
[values setName:@"EnableMIPLabels"];
[values setValue:@"true"];
[valuesList addObject: values];
MSGraphSettingValue *values = [[MSGraphSettingValue alloc] init];
[values setName:@"PrefixSuffixNamingRequirement"];
[values setValue:@"[Contoso-][GroupName]"];
[valuesList addObject: values];
[groupSetting setValues:valuesList];

NSError *error;
NSData *groupSettingData = [groupSetting getSerializedDataWithError:&error];
[urlRequest setHTTPBody:groupSettingData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```