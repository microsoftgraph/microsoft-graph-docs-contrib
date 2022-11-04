---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.displayName = "Review access of users and groups to privileged roles";
accessReviewScheduleDefinition.descriptionForAdmins = "Review access of users and groups to privileged roles";
PrincipalResourceMembershipsScope scope = new PrincipalResourceMembershipsScope();
LinkedList<AccessReviewScope> principalScopesList = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope principalScopes = new AccessReviewQueryScope();
principalScopes.query = "/users";
principalScopes.queryType = "MicrosoftGraph";
principalScopesList.add(principalScopes);
AccessReviewQueryScope principalScopes1 = new AccessReviewQueryScope();
principalScopes1.query = "/groups";
principalScopes1.queryType = "MicrosoftGraph";
principalScopesList.add(principalScopes1);
scope.principalScopes = principalScopesList;
LinkedList<AccessReviewScope> resourceScopesList = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope resourceScopes = new AccessReviewQueryScope();
resourceScopes.query = "/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1";
resourceScopes.queryType = "MicrosoftGraph";
resourceScopesList.add(resourceScopes);
scope.resourceScopes = resourceScopesList;
accessReviewScheduleDefinition.scope = scope;
LinkedList<AccessReviewReviewerScope> reviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope reviewers = new AccessReviewReviewerScope();
reviewers.query = "/users/f674a1c9-4a40-439c-bfa3-4b61a9f29d85";
reviewers.queryType = "MicrosoftGraph";
reviewersList.add(reviewers);
accessReviewScheduleDefinition.reviewers = reviewersList;
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.mailNotificationsEnabled = true;
settings.reminderNotificationsEnabled = true;
settings.justificationRequiredOnApproval = true;
settings.defaultDecisionEnabled = false;
settings.defaultDecision = "None";
settings.instanceDurationInDays = 3;
settings.recommendationsEnabled = false;
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.type = RecurrencePatternType.ABSOLUTE_MONTHLY;
pattern.interval = 3;
recurrence.pattern = pattern;
RecurrenceRange range = new RecurrenceRange();
range.type = RecurrenceRangeType.NO_END;
range.startDate = new DateOnly(1900,1,1);
recurrence.range = range;
settings.recurrence = recurrence;
accessReviewScheduleDefinition.settings = settings;

graphClient.identityGovernance().accessReviews().definitions()
	.buildRequest()
	.post(accessReviewScheduleDefinition);

```