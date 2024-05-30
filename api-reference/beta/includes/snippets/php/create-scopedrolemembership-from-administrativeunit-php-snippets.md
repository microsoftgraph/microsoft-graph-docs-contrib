---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ScopedRoleMembership;
use Microsoft\Graph\Beta\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ScopedRoleMembership();
$requestBody->setRoleId('roleId-value');
$roleMemberInfo = new Identity();
$roleMemberInfo->setId('id-value');
$requestBody->setRoleMemberInfo($roleMemberInfo);

$result = $graphServiceClient->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->scopedRoleMembers()->post($requestBody)->wait();

```