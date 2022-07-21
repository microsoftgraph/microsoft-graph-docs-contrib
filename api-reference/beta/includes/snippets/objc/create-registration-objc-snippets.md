---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphMeetingRegistration *meetingRegistration = [[MSGraphMeetingRegistration alloc] init];
[meetingRegistration setSubject:@"Microsoft Ignite"];
[meetingRegistration setDescription:@"Join us November 2–4, 2021 to explore the latest tools, training sessions, technical expertise, networking opportunities, and more."];
[meetingRegistration setStartDateTime: "2021-11-02T16:00:00+00:00"];
[meetingRegistration setEndDateTime: "2021-11-04T12:00:00+00:00"];
[meetingRegistration setAllowedRegistrant: [MSGraphMeetingAudience everyone]];
NSMutableArray *speakersList = [[NSMutableArray alloc] init];
MSGraphMeetingSpeaker *speakers = [[MSGraphMeetingSpeaker alloc] init];
[speakers setDisplayName:@"Henry Ross"];
[speakers setBio:@"Chairman and Chief Executive Officer"];
[speakersList addObject: speakers];
MSGraphMeetingSpeaker *speakers = [[MSGraphMeetingSpeaker alloc] init];
[speakers setDisplayName:@"Hailey Clark"];
[speakers setBio:@"EVP"];
[speakersList addObject: speakers];
[meetingRegistration setSpeakers:speakersList];
NSMutableArray *customQuestionsList = [[NSMutableArray alloc] init];
MSGraphMeetingRegistrationQuestion *customQuestions = [[MSGraphMeetingRegistrationQuestion alloc] init];
[customQuestions setDisplayName:@"Are you a developer?"];
[customQuestions setAnswerInputType: [MSGraphAnswerInputType radioButton]];
NSMutableArray *answerOptionsList = [[NSMutableArray alloc] init];
[answerOptionsList addObject: @"Yes"];
[answerOptionsList addObject: @"No"];
[customQuestions setAnswerOptions:answerOptionsList];
[customQuestions setIsRequired: true];
[customQuestionsList addObject: customQuestions];
MSGraphMeetingRegistrationQuestion *customQuestions = [[MSGraphMeetingRegistrationQuestion alloc] init];
[customQuestions setDisplayName:@"Where did you hear about us?"];
[customQuestions setAnswerInputType: [MSGraphAnswerInputType text]];
[customQuestions setIsRequired: false];
[customQuestionsList addObject: customQuestions];
[meetingRegistration setCustomQuestions:customQuestionsList];

NSError *error;
NSData *meetingRegistrationData = [meetingRegistration getSerializedDataWithError:&error];
[urlRequest setHTTPBody:meetingRegistrationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```