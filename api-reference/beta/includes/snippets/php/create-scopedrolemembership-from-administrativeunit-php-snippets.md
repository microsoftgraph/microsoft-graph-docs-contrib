---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ScopedRoleMembership();
$requestBody->setRoleId('roleId-value');

$roleMemberInfo = new Identity();
$roleMemberInfo->setId('id-value');


$requestBody->setRoleMemberInfo($roleMemberInfo);


$result = $graphServiceClient->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->scopedRoleMembers()->post($requestBody);


```