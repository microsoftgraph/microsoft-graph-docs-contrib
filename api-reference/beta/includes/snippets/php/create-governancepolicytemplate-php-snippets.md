---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernancePolicyTemplate;
use Microsoft\Graph\Beta\Generated\Models\MultiTenantApplicationsToProvision;
use Microsoft\Graph\Beta\Generated\Models\ApplicationsRequiredResourceAccess;
use Microsoft\Graph\Beta\Generated\Models\ApplicationResourcePermission;
use Microsoft\Graph\Beta\Generated\Models\ApplicationPermissionType;
use Microsoft\Graph\Beta\Generated\Models\DelegatedAdministrationRoleAssignment;
use Microsoft\Graph\Beta\Generated\Models\RoleTemplate;
use Microsoft\Graph\Beta\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantGovernancePolicyTemplate();
$requestBody->setDisplayName('Monitor Entra resource configurations');
$requestBody->setDescription('Grants Global reader and provisions a custom multi-tenant application to monitor conditional access policies');
$multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1 = new MultiTenantApplicationsToProvision();
$multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1->setAppId('66667777-aaaa-8888-bbbb-9999cccc0000');
$multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1->setObjectId('cccccccc-2222-3333-4444-dddddddddddd');
$multiTenantApplicationsToProvisionMultiTenantApplicationsToProvision1->setDisplayName('Mega Monitor');
$requiredResourceAccessesApplicationsRequiredResourceAccess1 = new ApplicationsRequiredResourceAccess();
$requiredResourceAccessesApplicationsRequiredResourceAccess1->setResourceAppId('00000003-0000-0000-c000-000000000000');
$permissionsApplicationResourcePermission1 = new ApplicationResourcePermission();
$permissionsApplicationResourcePermission1->setId('633e0fce-8c58-4cfb-9495-12bbd5a24f7c');
$permissionsApplicationResourcePermission1->setName('Policy.Read.ConditionalAccess');
$permissionsApplicationResourcePermission1->setType(new ApplicationPermissionType('scope'));
$permissionsArray []= $permissionsApplicationResourcePermission1;
$permissionsApplicationResourcePermission2 = new ApplicationResourcePermission();
$permissionsApplicationResourcePermission2->setId('e1fe6dd8-ba31-4d61-89e7-88639da4683d');
$permissionsApplicationResourcePermission2->setName('User.Read');
$permissionsApplicationResourcePermission2->setType(new ApplicationPermissionType('scope'));
$permissionsArray []= $permissionsApplicationResourcePermission2;
$requiredResourceAccessesApplicationsRequiredResourceAccess1->setPermissions($permissionsArray);

$requiredResourceAccessesArray []= $requiredResourceAccessesApplicationsRequiredResourceAccess1;
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


$result = $graphServiceClient->directory()->tenantGovernance()->governancePolicyTemplates()->post($requestBody)->wait();

```