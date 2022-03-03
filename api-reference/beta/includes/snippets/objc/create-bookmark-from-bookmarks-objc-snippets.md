---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/search/bookmarks"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphSearchBookmark *bookmark = [[MSGraphSearchBookmark alloc] init];
[bookmark setDisplayName:@"Contoso Install Site"];
[bookmark setWebUrl:@"http://www.contoso.com/"];
[bookmark setDescription:@"Try or buy Contoso for Home or Business and view product information"];
MSGraphSearchAnswerKeyword *keywords = [[MSGraphSearchAnswerKeyword alloc] init];
NSMutableArray *keywordsList = [[NSMutableArray alloc] init];
[keywordsList addObject: @"Contoso"];
[keywordsList addObject: @"install"];
[keywords setKeywords:keywordsList];
NSMutableArray *reservedKeywordsList = [[NSMutableArray alloc] init];
[reservedKeywordsList addObject: @"Contoso"];
[keywords setReservedKeywords:reservedKeywordsList];
[keywords setMatchSimilarKeywords: true];
[bookmark setKeywords:keywords];
[bookmark setAvailabilityStartDateTime: null];
[bookmark setAvailabilityEndDateTime: null];
NSMutableArray *platformsList = [[NSMutableArray alloc] init];
[platformsList addObject: @"windows"];
[bookmark setPlatforms:platformsList];
NSMutableArray *targetedVariationsList = [[NSMutableArray alloc] init];
MSGraphSearchAnswerVariant *targetedVariations = [[MSGraphSearchAnswerVariant alloc] init];
[targetedVariations setLanguageTag:@"es-ES"];
[targetedVariations setDisplayName:@"Sitio de instalación Contoso"];
[targetedVariations setDescription:@"Pruebe o compre Contoso hogar o negocios y vea la información del producto"];
[targetedVariationsList addObject: targetedVariations];
[bookmark setTargetedVariations:targetedVariationsList];
NSMutableArray *groupIdsList = [[NSMutableArray alloc] init];
[groupIdsList addObject: @"groupId"];
[bookmark setGroupIds:groupIdsList];
NSMutableArray *powerAppIdsList = [[NSMutableArray alloc] init];
[powerAppIdsList addObject: @"powerAppId"];
[bookmark setPowerAppIds:powerAppIdsList];
[bookmark setState: [MSGraphSearchAnswerState published]];

NSError *error;
NSData *bookmarkData = [bookmark getSerializedDataWithError:&error];
[urlRequest setHTTPBody:bookmarkData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```