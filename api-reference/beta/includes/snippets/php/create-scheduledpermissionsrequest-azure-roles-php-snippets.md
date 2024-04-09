---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ScheduledPermissionsRequest;
use Microsoft\Graph\Generated\Models\SingleResourceAzurePermissionsDefinition;
use Microsoft\Graph\Generated\Models\PermissionsDefinitionAuthorizationSystem;
use Microsoft\Graph\Generated\Models\AzureRolePermissionsDefinitionAction;
use Microsoft\Graph\Generated\Models\PermissionsDefinitionAzureRole;
use Microsoft\Graph\Generated\Models\PermissionsDefinitionAuthorizationSystemIdentity;
use Microsoft\Graph\Generated\Models\EdIdentitySource;
use Microsoft\Graph\Generated\Models\RequestSchedule;
use Microsoft\Graph\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Generated\Models\TicketInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ScheduledPermissionsRequest();
$requestedPermissions = new SingleResourceAzurePermissionsDefinition();
$requestedPermissions->setOdataType('microsoft.graph.singleResourceAzurePermissionsDefinition');
$requestedPermissionsAuthorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
$requestedPermissionsAuthorizationSystemInfo->setAuthorizationSystemId('87eefd90-95a3-480a-ba42-56ff299a05ee');
$requestedPermissionsAuthorizationSystemInfo->setAuthorizationSystemType('AZURE');
$requestedPermissions->setAuthorizationSystemInfo($requestedPermissionsAuthorizationSystemInfo);
$requestedPermissionsActionInfo = new AzureRolePermissionsDefinitionAction();
$requestedPermissionsActionInfo->setOdataType('microsoft.graph.azureRolePermissionsDefinitionAction');
$rolesPermissionsDefinitionAzureRole1 = new PermissionsDefinitionAzureRole();
$rolesPermissionsDefinitionAzureRole1->setId('cdda3590-29a3-44f6-95f2-9f980659eb04');
$rolesArray []= $rolesPermissionsDefinitionAzureRole1;
$rolesPermissionsDefinitionAzureRole2 = new PermissionsDefinitionAzureRole();
$rolesPermissionsDefinitionAzureRole2->setId('312a565d-c81f-4fd8-895a-4e21e48d571c');
$rolesArray []= $rolesPermissionsDefinitionAzureRole2;
$requestedPermissionsActionInfo->setRoles($rolesArray);

$requestedPermissions->setActionInfo($requestedPermissionsActionInfo);
$requestedPermissionsIdentityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
$requestedPermissionsIdentityInfo->setExternalId('alex@contoso.com');
$requestedPermissionsIdentityInfoSource = new EdIdentitySource();
$requestedPermissionsIdentityInfoSource->setOdataType('microsoft.graph.edIdentitySource');
$requestedPermissionsIdentityInfo->setSource($requestedPermissionsIdentityInfoSource);
$requestedPermissionsIdentityInfo->setIdentityType(new PermissionsDefinitionIdentityType('user'));
$requestedPermissions->setIdentityInfo($requestedPermissionsIdentityInfo);
$requestedPermissions->setResourceId('/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee');
$requestBody->setRequestedPermissions($requestedPermissions);
$requestBody->setJustification('I need to do this because I want to some new azure roles');
$requestBody->setNotes('Pretty Pleaseeeee');
$scheduleInfo = new RequestSchedule();
$scheduleInfoExpiration = new ExpirationPattern();
$scheduleInfoExpiration->setDuration(new \DateInterval('PT1H'));
$scheduleInfo->setExpiration($scheduleInfoExpiration);
$scheduleInfo->setRecurrence(null);
$requestBody->setScheduleInfo($scheduleInfo);
$ticketInfo = new TicketInfo();
$ticketInfo->setTicketNumber('INC1234567');
$ticketInfo->setTicketSystem('ServiceNow');
$ticketInfo->setTicketSubmitterIdentityId('alex@contoso.com');
$ticketInfo->setTicketApproverIdentityId('alexmanager@contoso.com');
$requestBody->setTicketInfo($ticketInfo);

$result = $graphServiceClient->identityGovernance()->permissionsManagement()->scheduledPermissionsRequests()->post($requestBody)->wait();

```