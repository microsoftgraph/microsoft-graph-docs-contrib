---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DelegatedPermissionClassification;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DelegatedPermissionClassification();
$requestBody->setPermissionId('e1fe6dd8-ba31-4d61-89e7-88639da4683d');
$requestBody->setPermissionName('User.Read');
$requestBody->setClassification(new PermissionClassificationType('low'));

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->delegatedPermissionClassifications()->post($requestBody)->wait();

```