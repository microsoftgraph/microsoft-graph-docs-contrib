---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicy();
$requestBody->setAllowedCloudEndpoints(['microsoftonline.us', 'partner.microsoftonline.cn', 	]);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->patch($requestBody)->wait();

```