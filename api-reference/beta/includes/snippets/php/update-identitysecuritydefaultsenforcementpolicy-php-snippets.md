---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IdentitySecurityDefaultsEnforcementPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentitySecurityDefaultsEnforcementPolicy();
$requestBody->setIsEnabled(false);

$result = $graphServiceClient->policies()->identitySecurityDefaultsEnforcementPolicy()->patch($requestBody)->wait();

```