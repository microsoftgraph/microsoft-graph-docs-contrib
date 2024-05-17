---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WipeManagedAppRegistrationsByDeviceTagPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WipeManagedAppRegistrationsByDeviceTagPostRequestBody();
$requestBody->setDeviceTag('Device Tag value');

$graphServiceClient->users()->byUserId('user-id')->wipeManagedAppRegistrationsByDeviceTag()->post($requestBody)->wait();

```