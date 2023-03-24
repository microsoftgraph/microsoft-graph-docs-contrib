---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.displayName = "Group Multi-stage Access Review";
accessReviewScheduleDefinition.descriptionForAdmins = "New scheduled access review";
accessReviewScheduleDefinition.descriptionForReviewers = "If you have any questions, contact jerry@contoso.com";
AccessReviewQueryScope scope = new AccessReviewQueryScope();
scope.query = "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers";
scope.queryType = "MicrosoftGraph";
accessReviewScheduleDefinition.scope = scope;
LinkedList<AccessReviewStageSettings> stageSettingsList = new LinkedList<AccessReviewStageSettings>();
AccessReviewStageSettings stageSettings = new AccessReviewStageSettings();
stageSettings.stageId = "1";
stageSettings.durationInDays = 2;
stageSettings.recommendationsEnabled = false;
LinkedList<String> decisionsThatWillMoveToNextStageList = new LinkedList<String>();
decisionsThatWillMoveToNextStageList.add("NotReviewed");
decisionsThatWillMoveToNextStageList.add("Approve");
stageSettings.decisionsThatWillMoveToNextStage = decisionsThatWillMoveToNextStageList;
LinkedList<AccessReviewReviewerScope> reviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope reviewers = new AccessReviewReviewerScope();
reviewers.query = "/users/398164b1-5196-49dd-ada2-364b49f99b27";
reviewers.queryType = "MicrosoftGraph";
reviewersList.add(reviewers);
stageSettings.reviewers = reviewersList;
stageSettingsList.add(stageSettings);
AccessReviewStageSettings stageSettings1 = new AccessReviewStageSettings();
stageSettings1.stageId = "2";
LinkedList<String> dependsOnList = new LinkedList<String>();
dependsOnList.add("1");
stageSettings1.dependsOn = dependsOnList;
stageSettings1.durationInDays = 2;
stageSettings1.recommendationsEnabled = true;
LinkedList<AccessReviewReviewerScope> reviewersList1 = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope reviewers1 = new AccessReviewReviewerScope();
reviewers1.query = "./manager";
reviewers1.queryType = "MicrosoftGraph";
reviewers1.queryRoot = "decisions";
reviewersList1.add(reviewers1);
stageSettings1.reviewers = reviewersList1;
LinkedList<AccessReviewReviewerScope> fallbackReviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope fallbackReviewers = new AccessReviewReviewerScope();
fallbackReviewers.query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers";
fallbackReviewers.queryType = "MicrosoftGraph";
fallbackReviewersList.add(fallbackReviewers);
stageSettings1.fallbackReviewers = fallbackReviewersList;
stageSettingsList.add(stageSettings1);
accessReviewScheduleDefinition.stageSettings = stageSettingsList;
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.instanceDurationInDays = 4;
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.type = RecurrencePatternType.WEEKLY;
pattern.interval = 1;
recurrence.pattern = pattern;
RecurrenceRange range = new RecurrenceRange();
range.type = RecurrenceRangeType.NO_END;
range.startDate = new DateOnly(1900,1,1);
recurrence.range = range;
settings.recurrence = recurrence;
settings.decisionHistoriesForReviewersEnabled = true;
accessReviewScheduleDefinition.settings = settings;

graphClient.identityGovernance().accessReviews().definitions()
	.buildRequest()
	.post(accessReviewScheduleDefinition);

```