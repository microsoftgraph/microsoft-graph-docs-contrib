---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ReferenceCreate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/odata/groups(\'dc3d2ce5-7c5e-4dca-a0ef-2145bf6e53ef\')');

$graphServiceClient->policies()->mobileDeviceManagementPolicies()->byMobileDeviceManagementPolicyId('mobileDeviceManagementPolicy-id')->includedGroups()->ref()->post($requestBody)->wait();

```