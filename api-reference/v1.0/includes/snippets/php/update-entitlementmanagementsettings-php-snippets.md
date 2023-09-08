---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EntitlementManagementSettings();
$requestBody->setExternalUserLifecycleAction(new AccessPackageExternalUserLifecycleAction('none'));

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->settings()->patch($requestBody)->wait();

```