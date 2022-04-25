---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphMeetingRegistration *meetingRegistration = [[MSGraphMeetingRegistration alloc] init];
[meetingRegistration setSubject:@"Microsoft Ignite: Day 1"];
[meetingRegistration setStartDateTime: "2021-11-02T16:00:00+00:00"];
[meetingRegistration setEndDateTime: "2021-11-02T23:45:00+00:00"];
NSMutableArray *speakersList = [[NSMutableArray alloc] init];
MSGraphMeetingSpeaker *speakers = [[MSGraphMeetingSpeaker alloc] init];
[speakers setDisplayName:@"Henry Ross"];
[speakers setBio:@"Chairman and Chief Executive Officer"];
[speakersList addObject: speakers];
MSGraphMeetingSpeaker *speakers = [[MSGraphMeetingSpeaker alloc] init];
[speakers setDisplayName:@"Fred Ryan"];
[speakers setBio:@"CVP"];
[speakersList addObject: speakers];
[meetingRegistration setSpeakers:speakersList];

NSError *error;
NSData *meetingRegistrationData = [meetingRegistration getSerializedDataWithError:&error];
[urlRequest setHTTPBody:meetingRegistrationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```