---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewHistoryDefinition accessReviewHistoryDefinition = new AccessReviewHistoryDefinition();
accessReviewHistoryDefinition.displayName = "Last quarter's group reviews April 2021";
LinkedList<AccessReviewHistoryDecisionFilter> decisionsList = new LinkedList<AccessReviewHistoryDecisionFilter>();
decisionsList.add(AccessReviewHistoryDecisionFilter.APPROVE);
decisionsList.add(AccessReviewHistoryDecisionFilter.DENY);
decisionsList.add(AccessReviewHistoryDecisionFilter.DONT_KNOW);
decisionsList.add(AccessReviewHistoryDecisionFilter.NOT_REVIEWED);
decisionsList.add(AccessReviewHistoryDecisionFilter.NOT_NOTIFIED);
accessReviewHistoryDefinition.decisions = decisionsList;
AccessReviewHistoryScheduleSettings scheduleSettings = new AccessReviewHistoryScheduleSettings();
scheduleSettings.reportRange = "P1M";
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.type = RecurrencePatternType.DAILY;
pattern.interval = 1;
recurrence.pattern = pattern;
RecurrenceRange range = new RecurrenceRange();
range.type = RecurrenceRangeType.NO_END;
range.startDate = new DateOnly(1900,1,1);
range.count = 0;
recurrence.range = range;
scheduleSettings.recurrence = recurrence;
accessReviewHistoryDefinition.scheduleSettings = scheduleSettings;
LinkedList<AccessReviewScope> scopesList = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope scopes = new AccessReviewQueryScope();
scopes.queryType = "MicrosoftGraph";
scopes.query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')";
scopes.queryRoot = null;
scopesList.add(scopes);
AccessReviewQueryScope scopes1 = new AccessReviewQueryScope();
scopes1.queryType = "MicrosoftGraph";
scopes1.query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')";
scopes1.queryRoot = null;
scopesList.add(scopes1);
accessReviewHistoryDefinition.scopes = scopesList;

graphClient.identityGovernance().accessReviews().historyDefinitions()
	.buildRequest()
	.post(accessReviewHistoryDefinition);

```