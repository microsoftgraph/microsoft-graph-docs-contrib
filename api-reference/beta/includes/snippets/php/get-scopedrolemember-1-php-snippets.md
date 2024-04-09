---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->scopedRoleMembers()->byScopedRoleMembershipId('scopedRoleMembership-id')->get()->wait();

```