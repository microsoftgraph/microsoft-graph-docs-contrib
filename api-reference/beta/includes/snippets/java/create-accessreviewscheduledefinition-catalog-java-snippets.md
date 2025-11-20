---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.setDisplayName("Review of catalog");
accessReviewScheduleDefinition.setDescriptionForAdmins("Review of all resources in a catalog");
accessReviewScheduleDefinition.setDescriptionForReviewers("If you have any questions, contact jerry@contoso.com");
AccessReviewScope scope = new AccessReviewScope();
scope.setOdataType("#microsoft.graph.accessReviewResourceScope");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> resourceScopes = new LinkedList<Object>();
 property = new ();
property.setResourceId("a45681aa-35f2-47c6-958b-741d6b09a033");
property.setDisplayName("My Catalog");
property.setScopeType("catalog");
resourceScopes.add(property);
additionalData.put("resourceScopes", resourceScopes);
LinkedList<Object> principalScopes = new LinkedList<Object>();
 property1 = new ();
property1.setOdataType("#microsoft.graph.accessReviewPrincipalScope");
property1.setScopeType("allUsers");
principalScopes.add(property1);
additionalData.put("principalScopes", principalScopes);
scope.setAdditionalData(additionalData);
accessReviewScheduleDefinition.setScope(scope);
LinkedList<AccessReviewReviewerScope> reviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope = new AccessReviewReviewerScope();
accessReviewReviewerScope.setOdataType("#microsoft.graph.accessReviewReviewerScope");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("scopeType", "resourceOwner");
accessReviewReviewerScope.setAdditionalData(additionalData1);
reviewers.add(accessReviewReviewerScope);
accessReviewScheduleDefinition.setReviewers(reviewers);
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.setMailNotificationsEnabled(true);
settings.setReminderNotificationsEnabled(true);
settings.setJustificationRequiredOnApproval(true);
settings.setDefaultDecisionEnabled(false);
settings.setDefaultDecision("None");
settings.setInstanceDurationInDays(1);
settings.setRecommendationsEnabled(true);
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
accessReviewScheduleDefinition.setSettings(settings);
AccessReviewScheduleDefinition result = graphClient.identityGovernance().accessReviews().definitions().post(accessReviewScheduleDefinition);


```