---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AuthorizationPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthorizationPolicy();
$requestBody->setEnabledPreviewFeatures(['assignGroupsToRoles', 	]);

$result = $graphServiceClient->policies()->authorizationPolicy()->byAuthorizationPolicyId('authorizationPolicy-id')->patch($requestBody)->wait();

```