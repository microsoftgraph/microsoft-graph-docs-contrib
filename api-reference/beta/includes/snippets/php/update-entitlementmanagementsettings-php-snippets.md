---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EntitlementManagementSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EntitlementManagementSettings();
$requestBody->setExternalUserLifecycleAction('None');

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->settings()->patch($requestBody)->wait();

```