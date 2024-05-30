---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.setDisplayName("Group Multi-stage Access Review");
accessReviewScheduleDefinition.setDescriptionForAdmins("New scheduled access review");
accessReviewScheduleDefinition.setDescriptionForReviewers("If you have any questions, contact jerry@contoso.com");
AccessReviewQueryScope scope = new AccessReviewQueryScope();
scope.setOdataType("#microsoft.graph.accessReviewQueryScope");
scope.setQuery("/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers");
scope.setQueryType("MicrosoftGraph");
accessReviewScheduleDefinition.setScope(scope);
LinkedList<AccessReviewStageSettings> stageSettings = new LinkedList<AccessReviewStageSettings>();
AccessReviewStageSettings accessReviewStageSettings = new AccessReviewStageSettings();
accessReviewStageSettings.setStageId("1");
accessReviewStageSettings.setDurationInDays(2);
accessReviewStageSettings.setRecommendationsEnabled(false);
LinkedList<String> decisionsThatWillMoveToNextStage = new LinkedList<String>();
decisionsThatWillMoveToNextStage.add("NotReviewed");
decisionsThatWillMoveToNextStage.add("Approve");
accessReviewStageSettings.setDecisionsThatWillMoveToNextStage(decisionsThatWillMoveToNextStage);
LinkedList<AccessReviewReviewerScope> reviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope = new AccessReviewReviewerScope();
accessReviewReviewerScope.setQuery("/users/398164b1-5196-49dd-ada2-364b49f99b27");
accessReviewReviewerScope.setQueryType("MicrosoftGraph");
reviewers.add(accessReviewReviewerScope);
accessReviewStageSettings.setReviewers(reviewers);
stageSettings.add(accessReviewStageSettings);
AccessReviewStageSettings accessReviewStageSettings1 = new AccessReviewStageSettings();
accessReviewStageSettings1.setStageId("2");
LinkedList<String> dependsOn = new LinkedList<String>();
dependsOn.add("1");
accessReviewStageSettings1.setDependsOn(dependsOn);
accessReviewStageSettings1.setDurationInDays(2);
accessReviewStageSettings1.setRecommendationsEnabled(true);
LinkedList<AccessReviewReviewerScope> reviewers1 = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope1 = new AccessReviewReviewerScope();
accessReviewReviewerScope1.setQuery("./manager");
accessReviewReviewerScope1.setQueryType("MicrosoftGraph");
accessReviewReviewerScope1.setQueryRoot("decisions");
reviewers1.add(accessReviewReviewerScope1);
accessReviewStageSettings1.setReviewers(reviewers1);
LinkedList<AccessReviewReviewerScope> fallbackReviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope2 = new AccessReviewReviewerScope();
accessReviewReviewerScope2.setQuery("/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers");
accessReviewReviewerScope2.setQueryType("MicrosoftGraph");
fallbackReviewers.add(accessReviewReviewerScope2);
accessReviewStageSettings1.setFallbackReviewers(fallbackReviewers);
stageSettings.add(accessReviewStageSettings1);
accessReviewScheduleDefinition.setStageSettings(stageSettings);
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.setInstanceDurationInDays(4);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.Weekly);
pattern.setInterval(1);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.NoEnd);
LocalDate startDate = LocalDate.parse("2020-09-08T12:02:30.667Z");
range.setStartDate(startDate);
recurrence.setRange(range);
settings.setRecurrence(recurrence);
settings.setDecisionHistoriesForReviewersEnabled(true);
accessReviewScheduleDefinition.setSettings(settings);
AccessReviewScheduleDefinition result = graphClient.identityGovernance().accessReviews().definitions().post(accessReviewScheduleDefinition);


```