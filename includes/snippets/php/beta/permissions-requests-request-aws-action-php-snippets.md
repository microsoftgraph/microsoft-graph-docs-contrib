---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ScheduledPermissionsRequest;
use Microsoft\Graph\Generated\Models\AwsPermissionsDefinition;
use Microsoft\Graph\Generated\Models\PermissionsDefinitionAuthorizationSystem;
use Microsoft\Graph\Generated\Models\AwsActionsPermissionsDefinitionAction;
use Microsoft\Graph\Generated\Models\AwsStatement;
use Microsoft\Graph\Generated\Models\AwsCondition;
use Microsoft\Graph\Generated\Models\PermissionsDefinitionAuthorizationSystemIdentity;
use Microsoft\Graph\Generated\Models\SamlIdentitySource;
use Microsoft\Graph\Generated\Models\RequestSchedule;
use Microsoft\Graph\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Generated\Models\PatternedRecurrence;
use Microsoft\Graph\Generated\Models\RecurrencePattern;
use Microsoft\Graph\Generated\Models\DayOfWeek;
use Microsoft\Graph\Generated\Models\RecurrenceRange;
use Microsoft\Graph\Generated\Models\TicketInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ScheduledPermissionsRequest();
$requestedPermissions = new AwsPermissionsDefinition();
$requestedPermissions->setOdataType('microsoft.graph.awsPermissionsDefinition');
$requestedPermissionsAuthorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
$requestedPermissionsAuthorizationSystemInfo->setAuthorizationSystemId('956987887735');
$requestedPermissionsAuthorizationSystemInfo->setAuthorizationSystemType('AWS');
$requestedPermissions->setAuthorizationSystemInfo($requestedPermissionsAuthorizationSystemInfo);
$requestedPermissionsActionInfo = new AwsActionsPermissionsDefinitionAction();
$requestedPermissionsActionInfo->setOdataType('microsoft.graph.awsActionsPermissionsDefinitionAction');
$statementsAwsStatement1 = new AwsStatement();
$statementsAwsStatement1->setStatementId('test1');
$statementsAwsStatement1->setActions(['s3:AbortMultipartUpload', 's3:CreateBucket', 	]);
$statementsAwsStatement1->setNotActions([	]);
$statementsAwsStatement1->setResources(['*', 	]);
$statementsAwsStatement1->setNotResources([	]);
$statementsAwsStatement1->setEffect(new AwsStatementEffect('allow'));
$statementsAwsStatement1Condition = new AwsCondition();
$additionalData = [
	'NumericLessThanEquals' => [
		'aws:MultiFactorAuthAge' => '3600',
	],
];
$statementsAwsStatement1Condition->setAdditionalData($additionalData);
$statementsAwsStatement1->setCondition($statementsAwsStatement1Condition);
$statementsArray []= $statementsAwsStatement1;
$statementsAwsStatement2 = new AwsStatement();
$statementsAwsStatement2->setStatementId('test2');
$statementsAwsStatement2->setActions(['s3:Delete:*', 	]);
$statementsAwsStatement2->setNotActions([	]);
$statementsAwsStatement2->setResources(['*', 	]);
$statementsAwsStatement2->setNotResources([	]);
$statementsAwsStatement2->setEffect(new AwsStatementEffect('allow'));
$statementsAwsStatement2Condition = new AwsCondition();
$additionalData = [
	'NumericLessThanEquals' => [
		'aws:MultiFactorAuthAge' => '3600',
	],
];
$statementsAwsStatement2Condition->setAdditionalData($additionalData);
$statementsAwsStatement2->setCondition($statementsAwsStatement2Condition);
$statementsArray []= $statementsAwsStatement2;
$requestedPermissionsActionInfo->setStatements($statementsArray);

$requestedPermissionsActionInfo->setAssignToRoleId('arn:aws:iam::956987887735:role/ck-saml-power-user');
$requestedPermissions->setActionInfo($requestedPermissionsActionInfo);
$requestedPermissionsIdentityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
$requestedPermissionsIdentityInfo->setExternalId('rsn:alex@contoso.com');
$requestedPermissionsIdentityInfoSource = new SamlIdentitySource();
$requestedPermissionsIdentityInfoSource->setOdataType('microsoft.graph.samlIdentitySource');
$requestedPermissionsIdentityInfo->setSource($requestedPermissionsIdentityInfoSource);
$requestedPermissionsIdentityInfo->setIdentityType(new PermissionsDefinitionIdentityType('user'));
$requestedPermissions->setIdentityInfo($requestedPermissionsIdentityInfo);
$requestBody->setRequestedPermissions($requestedPermissions);
$requestBody->setJustification('I need to do this because I want to access S3 resources');
$requestBody->setNotes('Please');
$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(new \DateTime('2023-02-08T12:15:00Z'));
$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setDuration(new \DateInterval('PT1H'));
$scheduleInfo->setExpiration($scheduleInfoExpiration);
$scheduleInfoRecurrence = new PatternedRecurrence();
$scheduleInfoRecurrencePattern = new RecurrencePattern();
$scheduleInfoRecurrencePattern->setDayOfMonth(5);
$scheduleInfoRecurrencePattern->setDaysOfWeek([]);
$scheduleInfoRecurrencePattern->setInterval(1);
$additionalData = [
'reccurencePatternType' => 'absoluteMonthly',
];
$scheduleInfoRecurrencePattern->setAdditionalData($additionalData);
$scheduleInfoRecurrence->setPattern($scheduleInfoRecurrencePattern);
$scheduleInfoRecurrenceRange = new RecurrenceRange();
$scheduleInfoRecurrenceRange->setStartDate(new Date('2023-02-08'));
$additionalData = [
'reccurenceRangeType' => 'noEnd',
];
$scheduleInfoRecurrenceRange->setAdditionalData($additionalData);
$scheduleInfoRecurrence->setRange($scheduleInfoRecurrenceRange);
$scheduleInfo->setRecurrence($scheduleInfoRecurrence);
$requestBody->setScheduleInfo($scheduleInfo);
$ticketInfo = new TicketInfo();
$ticketInfo->setTicketNumber('INC1234567');
$ticketInfo->setTicketSystem('ServiceNow');
$ticketInfo->setTicketSubmitterIdentityId('alex@contoso.com');
$ticketInfo->setTicketApproverIdentityId('alexmanager@contoso.com');
$requestBody->setTicketInfo($ticketInfo);

$result = $graphServiceClient->identityGovernance()->permissionsManagement()->scheduledPermissionsRequests()->post($requestBody)->wait();

```