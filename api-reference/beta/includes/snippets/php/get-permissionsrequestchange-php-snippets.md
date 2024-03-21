---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->permissionsManagement()->permissionsRequestChanges()->byPermissionsRequestChangeId('permissionsRequestChange-id')->get()->wait();

```