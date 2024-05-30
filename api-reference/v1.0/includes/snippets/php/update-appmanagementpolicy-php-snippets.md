---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AppManagementPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppManagementPolicy();
$requestBody->setIsEnabled(false);

$result = $graphServiceClient->policies()->appManagementPolicies()->byAppManagementPolicyId('appManagementPolicy-id')->patch($requestBody)->wait();

```