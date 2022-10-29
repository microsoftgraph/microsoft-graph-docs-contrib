---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/accessReviews/definitions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessReviewScheduleDefinition *accessReviewScheduleDefinition = [[MSGraphAccessReviewScheduleDefinition alloc] init];
[accessReviewScheduleDefinition setDisplayName:@"Group Multi-stage Access Review"];
[accessReviewScheduleDefinition setDescriptionForAdmins:@"New scheduled access review"];
[accessReviewScheduleDefinition setDescriptionForReviewers:@"If you have any questions, contact jerry@contoso.com"];
MSGraphAccessReviewScope *scope = [[MSGraphAccessReviewScope alloc] init];
[scope setQuery:@"/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers"];
[scope setQueryType:@"MicrosoftGraph"];
[accessReviewScheduleDefinition setScope:scope];
NSMutableArray *stageSettingsList = [[NSMutableArray alloc] init];
MSGraphAccessReviewStageSettings *stageSettings = [[MSGraphAccessReviewStageSettings alloc] init];
[stageSettings setStageId:@"1"];
[stageSettings setDurationInDays: 2];
[stageSettings setRecommendationsEnabled: false];
NSMutableArray *decisionsThatWillMoveToNextStageList = [[NSMutableArray alloc] init];
[decisionsThatWillMoveToNextStageList addObject: @"NotReviewed"];
[decisionsThatWillMoveToNextStageList addObject: @"Approve"];
[stageSettings setDecisionsThatWillMoveToNextStage:decisionsThatWillMoveToNextStageList];
NSMutableArray *reviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *reviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[reviewers setQuery:@"/users/398164b1-5196-49dd-ada2-364b49f99b27"];
[reviewers setQueryType:@"MicrosoftGraph"];
[reviewersList addObject: reviewers];
[stageSettings setReviewers:reviewersList];
[stageSettingsList addObject: stageSettings];
MSGraphAccessReviewStageSettings *stageSettings = [[MSGraphAccessReviewStageSettings alloc] init];
[stageSettings setStageId:@"2"];
NSMutableArray *dependsOnList = [[NSMutableArray alloc] init];
[dependsOnList addObject: @"1"];
[stageSettings setDependsOn:dependsOnList];
[stageSettings setDurationInDays: 2];
[stageSettings setRecommendationsEnabled: true];
NSMutableArray *reviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *reviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[reviewers setQuery:@"./manager"];
[reviewers setQueryType:@"MicrosoftGraph"];
[reviewers setQueryRoot:@"decisions"];
[reviewersList addObject: reviewers];
[stageSettings setReviewers:reviewersList];
NSMutableArray *fallbackReviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *fallbackReviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[fallbackReviewers setQuery:@"/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"];
[fallbackReviewers setQueryType:@"MicrosoftGraph"];
[fallbackReviewersList addObject: fallbackReviewers];
[stageSettings setFallbackReviewers:fallbackReviewersList];
[stageSettingsList addObject: stageSettings];
[accessReviewScheduleDefinition setStageSettings:stageSettingsList];
MSGraphAccessReviewScheduleSettings *settings = [[MSGraphAccessReviewScheduleSettings alloc] init];
[settings setMailNotificationsEnabled: true];
[settings setReminderNotificationsEnabled: true];
[settings setJustificationRequiredOnApproval: true];
[settings setDefaultDecisionEnabled: false];
[settings setDefaultDecision:@"None"];
[settings setInstanceDurationInDays: 4];
MSGraphPatternedRecurrence *recurrence = [[MSGraphPatternedRecurrence alloc] init];
MSGraphRecurrencePattern *pattern = [[MSGraphRecurrencePattern alloc] init];
[pattern setType: [MSGraphRecurrencePatternType weekly]];
[pattern setInterval: 1];
[recurrence setPattern:pattern];
MSGraphRecurrenceRange *range = [[MSGraphRecurrenceRange alloc] init];
[range setType: [MSGraphRecurrenceRangeType noEnd]];
[range setStartDate: "2020-09-08T12:02:30.667Z"];
[recurrence setRange:range];
[settings setRecurrence:recurrence];
[settings setDecisionHistoriesForReviewersEnabled: true];
[accessReviewScheduleDefinition setSettings:settings];

NSError *error;
NSData *accessReviewScheduleDefinitionData = [accessReviewScheduleDefinition getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessReviewScheduleDefinitionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```