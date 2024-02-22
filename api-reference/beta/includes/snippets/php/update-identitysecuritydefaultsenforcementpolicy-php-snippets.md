---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentitySecurityDefaultsEnforcementPolicy();
$requestBody->setIsEnabled(false);

$result = $graphServiceClient->policies()->identitySecurityDefaultsEnforcementPolicy()->patch($requestBody)->wait();

```