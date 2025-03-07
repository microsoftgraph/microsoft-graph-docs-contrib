---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ScopedRoleMembership;
use Microsoft\Graph\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ScopedRoleMembership();
$requestBody->setRoleId('roleId-value');
$roleMemberInfo = new Identity();
$roleMemberInfo->setId('id-value');
$requestBody->setRoleMemberInfo($roleMemberInfo);

$result = $graphServiceClient->directory()->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->scopedRoleMembers()->post($requestBody)->wait();

```