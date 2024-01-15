---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$requestBody->setAppId('fc876dd1-6bcb-4304-b9b6-18ddf1526b62');

$result = $graphServiceClient->servicePrincipals()->post($requestBody)->wait();

```