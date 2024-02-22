---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->scopedRoleMembers()->get()->wait();

```