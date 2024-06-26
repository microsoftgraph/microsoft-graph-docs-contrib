---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GroupLifecyclePolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GroupLifecyclePolicy();
$requestBody->setGroupLifetimeInDays(180);
$requestBody->setManagedGroupTypes('Selected');
$requestBody->setAlternateNotificationEmails('admin@contoso.com');

$result = $graphServiceClient->groupLifecyclePolicies()->byGroupLifecyclePolicyId('groupLifecyclePolicy-id')->patch($requestBody)->wait();

```