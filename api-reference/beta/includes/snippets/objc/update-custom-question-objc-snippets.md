---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/customQuestions/MSNhYjc5NWI4MC119zX3gwMDIwX3lvdXJfeDAwMjBfam8="]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphMeetingRegistrationQuestion *meetingRegistrationQuestion = [[MSGraphMeetingRegistrationQuestion alloc] init];
[meetingRegistrationQuestion setAnswerInputType: [MSGraphAnswerInputType radioButton]];
NSMutableArray *answerOptionsList = [[NSMutableArray alloc] init];
[answerOptionsList addObject: @"Software Engineer"];
[answerOptionsList addObject: @"Software Development Manager"];
[answerOptionsList addObject: @"Product Manager"];
[answerOptionsList addObject: @"Data scientist"];
[answerOptionsList addObject: @"Other"];
[meetingRegistrationQuestion setAnswerOptions:answerOptionsList];

NSError *error;
NSData *meetingRegistrationQuestionData = [meetingRegistrationQuestion getSerializedDataWithError:&error];
[urlRequest setHTTPBody:meetingRegistrationQuestionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```