---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/search/qnas"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphSearchQna *qna = [[MSGraphSearchQna alloc] init];
[qna setDisplayName:@"Global Country Holidays"];
[qna setWebUrl:@"http://www.contoso.com/"];
[qna setDescription:@"The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend.    <table>    <thead>    <tr>    <td><strong>2021 Dates</strong></td>    <td><strong>Holiday</strong></td>    </tr>    </thead>    <tbody>    <tr>        <td>January 1, 2021</td>        <td>New Year's Day</td>    </tr>        <tr>        <td>January 18, 2021</td>        <td>Martin Luther King Day</td>    </tr>        <tr>        <td>February 15, 2021</td>        <td>Presidents Day</td>    </tr>        <tr>        <td>May 31, 2021</td>        <td>Memorial Day</td>    </tr>        <tr>        <td>July 5, 2021</td>        <td>Independence Day</td>    </tr>        <tr>        <td>September 6, 2021</td>        <td>Labor Day</td>    </tr>        <tr>        <td>November 25, 2021 - November 26, 2021</td>        <td>Thanksgiving Day and Day after Thanksgiving</td>    </tr>    <tr>        <td>December 23, 2021 - December 24, 2021</td>        <td>Christmas Eve and Christmas Day</td>    </tr>    </tbody>    </table>"];
MSGraphSearchAnswerKeyword *keywords = [[MSGraphSearchAnswerKeyword alloc] init];
NSMutableArray *keywordsList = [[NSMutableArray alloc] init];
[keywordsList addObject: @"new years day"];
[keywordsList addObject: @"martin luther king day"];
[keywordsList addObject: @"presidents day"];
[keywordsList addObject: @"memorial day"];
[keywordsList addObject: @"independence day"];
[keywordsList addObject: @"labor day"];
[keywordsList addObject: @"thanksgiving"];
[keywordsList addObject: @"christmas"];
[keywords setKeywords:keywordsList];
NSMutableArray *reservedKeywordsList = [[NSMutableArray alloc] init];
[reservedKeywordsList addObject: @"holidays"];
[reservedKeywordsList addObject: @"paid days off"];
[keywords setReservedKeywords:reservedKeywordsList];
[keywords setMatchSimilarKeywords: true];
[qna setKeywords:keywords];
[qna setAvailabilityStartDateTime: "2020-09-21T20:01:37Z"];
[qna setAvailabilityEndDateTime: "2021-12-31T20:01:37Z"];
NSMutableArray *languageTagsList = [[NSMutableArray alloc] init];
[languageTagsList addObject: @"en-US"];
[qna setLanguageTags:languageTagsList];
NSMutableArray *platformsList = [[NSMutableArray alloc] init];
[platformsList addObject: @"ios"];
[qna setPlatforms:platformsList];
NSMutableArray *groupIdsList = [[NSMutableArray alloc] init];
[groupIdsList addObject: @"groupId"];
[qna setGroupIds:groupIdsList];
[qna setState: [MSGraphSearchAnswerState published]];

NSError *error;
NSData *qnaData = [qna getSerializedDataWithError:&error];
[urlRequest setHTTPBody:qnaData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```