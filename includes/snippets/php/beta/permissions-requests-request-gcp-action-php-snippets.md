---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ScheduledPermissionsRequest();
$requestedPermissions = new SingleResourceGcpPermissionsDefinition();
$requestedPermissions->setOdataType('microsoft.graph.singleResourceGcpPermissionsDefinition');
$requestedPermissionsAuthorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
$requestedPermissionsAuthorizationSystemInfo->setAuthorizationSystemId('carbide-bonsai-205017');
$requestedPermissionsAuthorizationSystemInfo->setAuthorizationSystemType('GCP');
$requestedPermissions->setAuthorizationSystemInfo($requestedPermissionsAuthorizationSystemInfo);
$requestedPermissionsActionInfo = new GcpActionPermissionsDefinitionAction();
$requestedPermissionsActionInfo->setOdataType('microsoft.graph.gcpActionPermissionsDefinitionAction');
$requestedPermissionsActionInfo->setActions(['aiplatform:dataitems', 	]);
$requestedPermissions->setActionInfo($requestedPermissionsActionInfo);
$requestedPermissionsIdentityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
$requestedPermissionsIdentityInfo->setExternalId('alex@contoso.com');
$requestedPermissionsIdentityInfoSource = new EdIdentitySource();
$requestedPermissionsIdentityInfoSource->setOdataType('microsoft.graph.edIdentitySource');
$requestedPermissionsIdentityInfo->setSource($requestedPermissionsIdentityInfoSource);
$requestedPermissionsIdentityInfo->setIdentityType(new PermissionsDefinitionIdentityType('user'));
$requestedPermissions->setIdentityInfo($requestedPermissionsIdentityInfo);
$requestedPermissions->setResourceId('carbide-bonsai-205017');
$requestBody->setRequestedPermissions($requestedPermissions);
$requestBody->setJustification('I need to do this because I want to code my own chat GPT-3 bot on GCP');
$requestBody->setNotes('Pretty Pleaseeeee');
$scheduleInfo = new RequestSchedule();
$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setDuration(new \DateInterval('PT1H'));
$scheduleInfo->setExpiration($scheduleInfoExpiration);
$requestBody->setScheduleInfo($scheduleInfo);
$ticketInfo = new TicketInfo();
$ticketInfo->setTicketNumber('INC1234567');
$ticketInfo->setTicketSystem('ServiceNow');
$ticketInfo->setTicketSubmitterIdentityId('alex@contoso.com');
$ticketInfo->setTicketApproverIdentityId('alexmanager@contoso.com');
$requestBody->setTicketInfo($ticketInfo);

$result = $graphServiceClient->identityGovernance()->permissionsManagement()->scheduledPermissionsRequests()->post($requestBody)->wait();

```