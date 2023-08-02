---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DelegatedPermissionClassification();
$requestBody->setPermissionId('e1fe6dd8-ba31-4d61-89e7-88639da4683d');

$requestBody->setPermissionName('User.Read');

$requestBody->setClassification(new PermissionClassificationType('low'));



$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->delegatedPermissionClassifications()->post($requestBody);


```