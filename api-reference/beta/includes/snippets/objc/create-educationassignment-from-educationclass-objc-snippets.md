---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/classes/8b8cec7f-d0d8-4974-982a-e29396ddbe7f/assignments"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationAssignment *educationAssignment = [[MSGraphEducationAssignment alloc] init];
[educationAssignment setDueDateTime: "2014-02-01T00:00:00Z"];
[educationAssignment setDisplayName:@"Midterm 1"];
MSGraphEducationItemBody *instructions = [[MSGraphEducationItemBody alloc] init];
[instructions setContentType: [MSGraphBodyType text]];
[instructions setContent:@"Read chapters 1 through 3"];
[educationAssignment setInstructions:instructions];
MSGraphEducationAssignmentGradeType *grading = [[MSGraphEducationAssignmentGradeType alloc] init];
[grading setMaxPoints: 100];
[educationAssignment setGrading:grading];
MSGraphEducationAssignmentRecipient *assignTo = [[MSGraphEducationAssignmentRecipient alloc] init];
[educationAssignment setAssignTo:assignTo];
[educationAssignment setStatus: [MSGraphEducationAssignmentStatus draft]];
[educationAssignment setAllowStudentsToAddResourcesToSubmission: true];

NSError *error;
NSData *educationAssignmentData = [educationAssignment getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationAssignmentData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```