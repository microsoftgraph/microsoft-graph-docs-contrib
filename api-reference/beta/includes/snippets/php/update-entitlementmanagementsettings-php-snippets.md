---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EntitlementManagementSettings();
$requestBody->setExternalUserLifecycleAction('None');

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->settings()->patch($requestBody)->wait();

```