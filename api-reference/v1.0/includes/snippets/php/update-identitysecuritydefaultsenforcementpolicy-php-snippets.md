---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentitySecurityDefaultsEnforcementPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentitySecurityDefaultsEnforcementPolicy();
$requestBody->setIsEnabled(false);

$result = $graphServiceClient->policies()->identitySecurityDefaultsEnforcementPolicy()->patch($requestBody)->wait();

```