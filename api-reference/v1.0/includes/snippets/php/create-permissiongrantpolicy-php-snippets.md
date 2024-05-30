---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PermissionGrantPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PermissionGrantPolicy();
$requestBody->setId('my-custom-consent-policy');
$requestBody->setDisplayName('Custom application consent policy');
$requestBody->setDescription('A custom permission grant policy to customize conditions for granting consent.');

$result = $graphServiceClient->policies()->permissionGrantPolicies()->post($requestBody)->wait();

```