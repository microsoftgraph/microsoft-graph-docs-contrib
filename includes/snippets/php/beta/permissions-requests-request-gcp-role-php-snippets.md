---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ScheduledPermissionsRequest;
use Microsoft\Graph\Generated\Models\SingleResourceGcpPermissionsDefinition;
use Microsoft\Graph\Generated\Models\PermissionsDefinitionAuthorizationSystem;
use Microsoft\Graph\Generated\Models\GcpRolePermissionsDefinitionAction;
use Microsoft\Graph\Generated\Models\PermissionsDefinitionGcpRole;
use Microsoft\Graph\Generated\Models\PermissionsDefinitionAuthorizationSystemIdentity;
use Microsoft\Graph\Generated\Models\EdIdentitySource;
use Microsoft\Graph\Generated\Models\RequestSchedule;
use Microsoft\Graph\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Generated\Models\TicketInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ScheduledPermissionsRequest();
$requestedPermissions = new SingleResourceGcpPermissionsDefinition();
$requestedPermissions->setOdataType('microsoft.graph.singleResourceGcpPermissionsDefinition');
$requestedPermissionsAuthorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
$requestedPermissionsAuthorizationSystemInfo->setAuthorizationSystemId('carbide-bonsai-205017');
$requestedPermissionsAuthorizationSystemInfo->setAuthorizationSystemType('GCP');
$requestedPermissions->setAuthorizationSystemInfo($requestedPermissionsAuthorizationSystemInfo);
$requestedPermissionsActionInfo = new GcpRolePermissionsDefinitionAction();
$requestedPermissionsActionInfo->setOdataType('microsoft.graph.gcpRolePermissionsDefinitionAction');
$rolesPermissionsDefinitionGcpRole1 = new PermissionsDefinitionGcpRole();
$rolesPermissionsDefinitionGcpRole1->setId('roles/dialogflow.aamAdmin');
$rolesArray []= $rolesPermissionsDefinitionGcpRole1;
$requestedPermissionsActionInfo->setRoles($rolesArray);

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
$requestBody->setJustification('I need to do this because I want to be an administrator');
$requestBody->setNotes('Pretty Pleaseeeee');
$scheduleInfo = new RequestSchedule();
$scheduleInfo->setStartDateTime(null);
$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setDuration(new \DateInterval('PT1H'));
$scheduleInfo->setExpiration($scheduleInfoExpiration);
$scheduleInfo->setRecurrence(null);
$requestBody->setScheduleInfo($scheduleInfo);
$ticketInfo = new TicketInfo();
$ticketInfo->setTicketNumber('123456');
$ticketInfo->setTicketSystem('ServiceNow');
$ticketInfo->setTicketSubmitterIdentityId('alex@contoso.com');
$ticketInfo->setTicketApproverIdentityId('alexmanager@contoso.com');
$requestBody->setTicketInfo($ticketInfo);

$result = $graphServiceClient->identityGovernance()->permissionsManagement()->scheduledPermissionsRequests()->post($requestBody)->wait();

```