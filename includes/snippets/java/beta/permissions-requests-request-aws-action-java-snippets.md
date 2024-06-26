---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ScheduledPermissionsRequest scheduledPermissionsRequest = new ScheduledPermissionsRequest();
AwsPermissionsDefinition requestedPermissions = new AwsPermissionsDefinition();
requestedPermissions.setOdataType("microsoft.graph.awsPermissionsDefinition");
PermissionsDefinitionAuthorizationSystem authorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
authorizationSystemInfo.setAuthorizationSystemId("956987887735");
authorizationSystemInfo.setAuthorizationSystemType("AWS");
requestedPermissions.setAuthorizationSystemInfo(authorizationSystemInfo);
AwsActionsPermissionsDefinitionAction actionInfo = new AwsActionsPermissionsDefinitionAction();
actionInfo.setOdataType("microsoft.graph.awsActionsPermissionsDefinitionAction");
LinkedList<AwsStatement> statements = new LinkedList<AwsStatement>();
AwsStatement awsStatement = new AwsStatement();
awsStatement.setStatementId("test1");
LinkedList<String> actions = new LinkedList<String>();
actions.add("s3:AbortMultipartUpload");
actions.add("s3:CreateBucket");
awsStatement.setActions(actions);
LinkedList<String> notActions = new LinkedList<String>();
awsStatement.setNotActions(notActions);
LinkedList<String> resources = new LinkedList<String>();
resources.add("*");
awsStatement.setResources(resources);
LinkedList<String> notResources = new LinkedList<String>();
awsStatement.setNotResources(notResources);
awsStatement.setEffect(AwsStatementEffect.Allow);
AwsCondition condition = new AwsCondition();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 numericLessThanEquals = new ();
numericLessThanEquals.setAwsMultiFactorAuthAge("3600");
additionalData.put("NumericLessThanEquals", numericLessThanEquals);
condition.setAdditionalData(additionalData);
awsStatement.setCondition(condition);
statements.add(awsStatement);
AwsStatement awsStatement1 = new AwsStatement();
awsStatement1.setStatementId("test2");
LinkedList<String> actions1 = new LinkedList<String>();
actions1.add("s3:Delete:*");
awsStatement1.setActions(actions1);
LinkedList<String> notActions1 = new LinkedList<String>();
awsStatement1.setNotActions(notActions1);
LinkedList<String> resources1 = new LinkedList<String>();
resources1.add("*");
awsStatement1.setResources(resources1);
LinkedList<String> notResources1 = new LinkedList<String>();
awsStatement1.setNotResources(notResources1);
awsStatement1.setEffect(AwsStatementEffect.Allow);
AwsCondition condition1 = new AwsCondition();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
 numericLessThanEquals1 = new ();
numericLessThanEquals1.setAwsMultiFactorAuthAge("3600");
additionalData1.put("NumericLessThanEquals", numericLessThanEquals1);
condition1.setAdditionalData(additionalData1);
awsStatement1.setCondition(condition1);
statements.add(awsStatement1);
actionInfo.setStatements(statements);
actionInfo.setAssignToRoleId("arn:aws:iam::956987887735:role/ck-saml-power-user");
requestedPermissions.setActionInfo(actionInfo);
PermissionsDefinitionAuthorizationSystemIdentity identityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
identityInfo.setExternalId("rsn:alex@contoso.com");
SamlIdentitySource source = new SamlIdentitySource();
source.setOdataType("microsoft.graph.samlIdentitySource");
identityInfo.setSource(source);
identityInfo.setIdentityType(PermissionsDefinitionIdentityType.User);
requestedPermissions.setIdentityInfo(identityInfo);
scheduledPermissionsRequest.setRequestedPermissions(requestedPermissions);
scheduledPermissionsRequest.setJustification("I need to do this because I want to access S3 resources");
scheduledPermissionsRequest.setNotes("Please");
RequestSchedule scheduleInfo = new RequestSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2023-02-08T12:15:00Z");
scheduleInfo.setStartDateTime(startDateTime);
ExpirationPattern expiration = new ExpirationPattern();
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT1H"));
expiration.setDuration(duration);
scheduleInfo.setExpiration(expiration);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setDayOfMonth(5);
LinkedList<DayOfWeek> daysOfWeek = new LinkedList<DayOfWeek>();
pattern.setDaysOfWeek(daysOfWeek);
pattern.setInterval(1);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("reccurencePatternType", "absoluteMonthly");
pattern.setAdditionalData(additionalData2);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
LocalDate startDate = LocalDate.parse("2023-02-08");
range.setStartDate(startDate);
HashMap<String, Object> additionalData3 = new HashMap<String, Object>();
additionalData3.put("reccurenceRangeType", "noEnd");
range.setAdditionalData(additionalData3);
recurrence.setRange(range);
scheduleInfo.setRecurrence(recurrence);
scheduledPermissionsRequest.setScheduleInfo(scheduleInfo);
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.setTicketNumber("INC1234567");
ticketInfo.setTicketSystem("ServiceNow");
ticketInfo.setTicketSubmitterIdentityId("alex@contoso.com");
ticketInfo.setTicketApproverIdentityId("alexmanager@contoso.com");
scheduledPermissionsRequest.setTicketInfo(ticketInfo);
ScheduledPermissionsRequest result = graphClient.identityGovernance().permissionsManagement().scheduledPermissionsRequests().post(scheduledPermissionsRequest);


```