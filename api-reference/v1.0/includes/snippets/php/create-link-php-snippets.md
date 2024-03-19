---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateLinkPostRequestBody();
$requestBody->setType('view');
$requestBody->setPassword('ThisIsMyPrivatePassword');
$requestBody->setScope('anonymous');
$requestBody->setRetainInheritedPermissions(false);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->createLink()->post($requestBody)->wait();

```