---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GroupLifecyclePolicy();
$requestBody->setGroupLifetimeInDays(100);
$requestBody->setManagedGroupTypes('Selected');
$requestBody->setAlternateNotificationEmails('admin@contoso.com');

$result = $graphServiceClient->groupLifecyclePolicies()->post($requestBody)->wait();

```