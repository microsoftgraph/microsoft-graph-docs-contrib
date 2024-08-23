---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.setDisplayName("Test create");
accessReviewScheduleDefinition.setDescriptionForAdmins("New scheduled access review");
accessReviewScheduleDefinition.setDescriptionForReviewers("If you have any questions, contact jerry@contoso.com");
AccessReviewQueryScope scope = new AccessReviewQueryScope();
scope.setOdataType("#microsoft.graph.accessReviewQueryScope");
scope.setQuery("/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers");
scope.setQueryType("MicrosoftGraph");
accessReviewScheduleDefinition.setScope(scope);
LinkedList<AccessReviewReviewerScope> reviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope = new AccessReviewReviewerScope();
accessReviewReviewerScope.setQuery("/users/398164b1-5196-49dd-ada2-364b49f99b27");
accessReviewReviewerScope.setQueryType("MicrosoftGraph");
reviewers.add(accessReviewReviewerScope);
accessReviewScheduleDefinition.setReviewers(reviewers);
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.setInstanceDurationInDays(1);
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
LinkedList<AccessReviewRecommendationInsightSetting> recommendationInsightSettings = new LinkedList<AccessReviewRecommendationInsightSetting>();
UserLastSignInRecommendationInsightSetting accessReviewRecommendationInsightSetting = new UserLastSignInRecommendationInsightSetting();
accessReviewRecommendationInsightSetting.setOdataType("#microsoft.graph.userLastSignInRecommendationInsightSetting");
PeriodAndDuration recommendationLookBackDuration = PeriodAndDuration.ofDuration(Duration.parse("P30D"));
accessReviewRecommendationInsightSetting.setRecommendationLookBackDuration(recommendationLookBackDuration);
accessReviewRecommendationInsightSetting.setSignInScope(UserSignInRecommendationScope.Tenant);
recommendationInsightSettings.add(accessReviewRecommendationInsightSetting);
GroupPeerOutlierRecommendationInsightSettings accessReviewRecommendationInsightSetting1 = new GroupPeerOutlierRecommendationInsightSettings();
accessReviewRecommendationInsightSetting1.setOdataType("#microsoft.graph.groupPeerOutlierRecommendationInsightSettings");
recommendationInsightSettings.add(accessReviewRecommendationInsightSetting1);
settings.setRecommendationInsightSettings(recommendationInsightSettings);
accessReviewScheduleDefinition.setSettings(settings);
AccessReviewScheduleDefinition result = graphClient.identityGovernance().accessReviews().definitions().post(accessReviewScheduleDefinition);


```