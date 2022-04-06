---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationAssignment *educationAssignment = [[MSGraphEducationAssignment alloc] init];
[educationAssignment setDueDateTime: "2021-09-07T00:00:00Z"];
[educationAssignment setDisplayName:@"Reading test 09.03 #4"];
MSGraphEducationItemBody *instructions = [[MSGraphEducationItemBody alloc] init];
[instructions setContentType: [MSGraphBodyType text]];
[instructions setContent:@"Read chapter 4"];
[educationAssignment setInstructions:instructions];
MSGraphEducationAssignmentGradeType *grading = [[MSGraphEducationAssignmentGradeType alloc] init];
[grading setMaxPoints: 50];
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