---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\GovernancePolicyTemplate;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\MultiTenantApplicationsToProvision;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\RequiredResourceAccess;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\ResourcePermission;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\PermissionType;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\DelegatedAdministrationRoleAssignment;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\RoleTemplate;
use Microsoft\Graph\Beta\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GovernancePolicyTemplate();
$multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1 = new MultiTenantApplicationsToProvision();
$multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1->setAppId('66667777-aaaa-8888-bbbb-9999cccc0000');
$multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1->setObjectId('cccccccc-2222-3333-4444-dddddddddddd');
$multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1->setDisplayName('Mega Monitor');
$requiredResourceAccessesRequiredResourceAccess1 = new RequiredResourceAccess();
$requiredResourceAccessesRequiredResourceAccess1->setResourceAppId('00000003-0000-0000-c000-000000000000');
$permissionsResourcePermission1 = new ResourcePermission();
$permissionsResourcePermission1->setId('633e0fce-8c58-4cfb-9495-12bbd5a24f7c');
$permissionsResourcePermission1->setName('Policy.Read.ConditionalAccess');
$permissionsResourcePermission1->setType(new PermissionType('scope'));
$permissionsArray []= $permissionsResourcePermission1;
$permissionsResourcePermission2 = new ResourcePermission();
$permissionsResourcePermission2->setId('e1fe6dd8-ba31-4d61-89e7-88639da4683d');
$permissionsResourcePermission2->setName('User.Read');
$permissionsResourcePermission2->setType(new PermissionType('scope'));
$permissionsArray []= $permissionsResourcePermission2;
$requiredResourceAccessesRequiredResourceAccess1->setPermissions($permissionsArray);

$requiredResourceAccessesArray []= $requiredResourceAccessesRequiredResourceAccess1;
$multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1->setRequiredResourceAccesses($requiredResourceAccessesArray);

$multiTenantApplicationsToProvisionArray []= $multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1;
$requestBody->setMultiTenantApplicationsToProvision($multiTenantApplicationsToProvisionArray);

$delegatedAdministrationRoleAssignmentsDelegatedAdministrationRoleAssignment1 = new DelegatedAdministrationRoleAssignment();
$roleTemplatesRoleTemplate1 = new RoleTemplate();
$roleTemplatesRoleTemplate1->setId('f2ef992c-3afb-46b9-b7cf-a126ee74c451');
$roleTemplatesRoleTemplate1->setName('Global Reader');
$roleTemplatesArray []= $roleTemplatesRoleTemplate1;
$delegatedAdministrationRoleAssignmentsDelegatedAdministrationRoleAssignment1->setRoleTemplates($roleTemplatesArray);

$delegatedAdministrationRoleAssignmentsDelegatedAdministrationRoleAssignment1Group = new Group();
$delegatedAdministrationRoleAssignmentsDelegatedAdministrationRoleAssignment1Group->setId('ffffffff-5555-6666-7777-aaaaaaaaaaaa');
$delegatedAdministrationRoleAssignmentsDelegatedAdministrationRoleAssignment1->setGroup($delegatedAdministrationRoleAssignmentsDelegatedAdministrationRoleAssignment1Group);
$delegatedAdministrationRoleAssignmentsArray []= $delegatedAdministrationRoleAssignmentsDelegatedAdministrationRoleAssignment1;
$requestBody->setDelegatedAdministrationRoleAssignments($delegatedAdministrationRoleAssignmentsArray);


$result = $graphServiceClient->directory()->tenantGovernance()->governancePolicyTemplates()->byGovernancePolicyTemplateId('governancePolicyTemplate-id')->patch($requestBody)->wait();

```