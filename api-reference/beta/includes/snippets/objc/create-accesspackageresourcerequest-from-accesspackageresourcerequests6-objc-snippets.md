---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/accessPackageResourceRequests"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessPackageResourceRequest *accessPackageResourceRequest = [[MSGraphAccessPackageResourceRequest alloc] init];
[accessPackageResourceRequest setCatalogId:@"26ac0c0a-08bc-4a7b-a313-839f58044ba5"];
[accessPackageResourceRequest setRequestType:@"AdminAdd"];
[accessPackageResourceRequest setJustification:@""];
MSGraphAccessPackageResource *accessPackageResource = [[MSGraphAccessPackageResource alloc] init];
[accessPackageResource setDisplayName:@"Faculty cafeteria ordering"];
[accessPackageResource setDescription:@"Example application"];
[accessPackageResource setUrl:@"https://myapps.microsoft.com/example.com/signin/Faculty%20cafeteria%20ordering/f1e3b407-942d-4934-9a3f-cef1975cb988/"];
[accessPackageResource setResourceType:@"Application"];
[accessPackageResource setOriginId:@"2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e"];
[accessPackageResource setOriginSystem:@"AadApplication"];
NSMutableArray *attributesList = [[NSMutableArray alloc] init];
MSGraphAccessPackageResourceAttribute *attributes = [[MSGraphAccessPackageResourceAttribute alloc] init];
[attributes setAttributeName:@"extension_2b676109c7c74ae2b41549205f1947ed_personalTitle"];
[attributes setIsEditable: true];
[attributes setIsPersistedOnAssignmentRemoval: true];
MSGraphAccessPackageResourceAttributeSource *attributeSource = [[MSGraphAccessPackageResourceAttributeSource alloc] init];
MSGraphAccessPackageQuestion *question = [[MSGraphAccessPackageQuestion alloc] init];
[question setIsRequired: false];
[question setSequence: 0];
[question setIsSingleLineQuestion: true];
MSGraphAccessPackageLocalizedContent *text = [[MSGraphAccessPackageLocalizedContent alloc] init];
[text setDefaultText:@"Title"];
NSMutableArray *localizedTextsList = [[NSMutableArray alloc] init];
[text setLocalizedTexts:localizedTextsList];
[question setText:text];
[attributeSource setQuestion:question];
[attributes setAttributeSource:attributeSource];
MSGraphAccessPackageResourceAttributeDestination *attributeDestination = [[MSGraphAccessPackageResourceAttributeDestination alloc] init];
[attributes setAttributeDestination:attributeDestination];
[attributesList addObject: attributes];
[accessPackageResource setAttributes:attributesList];
[accessPackageResourceRequest setAccessPackageResource:accessPackageResource];

NSError *error;
NSData *accessPackageResourceRequestData = [accessPackageResourceRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessPackageResourceRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```