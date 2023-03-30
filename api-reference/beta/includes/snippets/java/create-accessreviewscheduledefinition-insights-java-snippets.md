---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.displayName = "Test create";
accessReviewScheduleDefinition.descriptionForAdmins = "New scheduled access review";
accessReviewScheduleDefinition.descriptionForReviewers = "If you have any questions, contact jerry@contoso.com";
AccessReviewQueryScope scope = new AccessReviewQueryScope();
scope.query = "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers";
scope.queryType = "MicrosoftGraph";
accessReviewScheduleDefinition.scope = scope;
LinkedList<AccessReviewReviewerScope> reviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope reviewers = new AccessReviewReviewerScope();
reviewers.query = "/users/398164b1-5196-49dd-ada2-364b49f99b27";
reviewers.queryType = "MicrosoftGraph";
reviewersList.add(reviewers);
accessReviewScheduleDefinition.reviewers = reviewersList;
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.instanceDurationInDays = 1;
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
LinkedList<AccessReviewRecommendationInsightSetting> recommendationInsightSettingsList = new LinkedList<AccessReviewRecommendationInsightSetting>();
UserLastSignInRecommendationInsightSetting recommendationInsightSettings = new UserLastSignInRecommendationInsightSetting();
recommendationInsightSettings.recommendationLookBackDuration = DatatypeFactory.newInstance().newDuration("P30D");
recommendationInsightSettings.signInScope = UserSignInRecommendationScope.TENANT;
recommendationInsightSettingsList.add(recommendationInsightSettings);
GroupPeerOutlierRecommendationInsightSettings recommendationInsightSettings1 = new GroupPeerOutlierRecommendationInsightSettings();
recommendationInsightSettingsList.add(recommendationInsightSettings1);
settings.recommendationInsightSettings = recommendationInsightSettingsList;
accessReviewScheduleDefinition.settings = settings;

graphClient.identityGovernance().accessReviews().definitions()
	.buildRequest()
	.post(accessReviewScheduleDefinition);

```