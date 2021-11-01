---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/users/16664f75-11dc-4870-bec6-38c1aaa81431/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphMeetingRegistrant *meetingRegistrant = [[MSGraphMeetingRegistrant alloc] init];
[meetingRegistrant setFirstName:@"Frederick"];
[meetingRegistrant setLastName:@"Cormier"];
[meetingRegistrant setEmail:@"frederick.cormier@contoso.com"];
NSMutableArray *customQuestionAnswersList = [[NSMutableArray alloc] init];
MSGraphCustomQuestionAnswer *customQuestionAnswers = [[MSGraphCustomQuestionAnswer alloc] init];
[customQuestionAnswers setQuestionId:@"MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU="];
[customQuestionAnswers setValue:@"No"];
[customQuestionAnswersList addObject: customQuestionAnswers];
MSGraphCustomQuestionAnswer *customQuestionAnswers = [[MSGraphCustomQuestionAnswer alloc] init];
[customQuestionAnswers setQuestionId:@"MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8="];
[customQuestionAnswers setValue:@"Internet"];
[customQuestionAnswersList addObject: customQuestionAnswers];
[meetingRegistrant setCustomQuestionAnswers:customQuestionAnswersList];

NSError *error;
NSData *meetingRegistrantData = [meetingRegistrant getSerializedDataWithError:&error];
[urlRequest setHTTPBody:meetingRegistrantData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```