---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EntitlementManagementSettings;
use Microsoft\Graph\Generated\Models\AccessPackageExternalUserLifecycleAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EntitlementManagementSettings();
$requestBody->setExternalUserLifecycleAction(new AccessPackageExternalUserLifecycleAction('none'));

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->settings()->patch($requestBody)->wait();

```