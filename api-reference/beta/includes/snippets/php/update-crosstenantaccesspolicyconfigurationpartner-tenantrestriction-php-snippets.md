---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationPartner();
$tenantRestrictions = new CrossTenantAccessPolicyTenantRestrictions();
$tenantRestrictionsUsersAndGroups = new CrossTenantAccessPolicyTargetConfiguration();
$tenantRestrictionsUsersAndGroups->setAccessType(new CrossTenantAccessPolicyTargetConfigurationAccessType('allowed'));
$targetsCrossTenantAccessPolicyTarget1 = new CrossTenantAccessPolicyTarget();
$targetsCrossTenantAccessPolicyTarget1->setTarget('AllUsers');
$targetsCrossTenantAccessPolicyTarget1->setTargetType(new CrossTenantAccessPolicyTargetType('user'));
$targetsArray []= $targetsCrossTenantAccessPolicyTarget1;
$tenantRestrictionsUsersAndGroups->setTargets($targetsArray);

$tenantRestrictions->setUsersAndGroups($tenantRestrictionsUsersAndGroups);
$tenantRestrictionsApplications = new CrossTenantAccessPolicyTargetConfiguration();
$tenantRestrictionsApplications->setAccessType(new CrossTenantAccessPolicyTargetConfigurationAccessType('allowed'));
$targetsCrossTenantAccessPolicyTarget1 = new CrossTenantAccessPolicyTarget();
$targetsCrossTenantAccessPolicyTarget1->setTarget('Office365');
$targetsCrossTenantAccessPolicyTarget1->setTargetType(new CrossTenantAccessPolicyTargetType('application'));
$targetsArray []= $targetsCrossTenantAccessPolicyTarget1;
$tenantRestrictionsApplications->setTargets($targetsArray);

$tenantRestrictions->setApplications($tenantRestrictionsApplications);
$requestBody->setTenantRestrictions($tenantRestrictions);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->byCrossTenantAccessPolicyConfigurationPartnerTenantId('crossTenantAccessPolicyConfigurationPartner-tenantId')->patch($requestBody)->wait();

```