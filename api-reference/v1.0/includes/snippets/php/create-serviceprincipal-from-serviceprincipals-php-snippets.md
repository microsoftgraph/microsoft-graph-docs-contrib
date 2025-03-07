---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ServicePrincipal;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$requestBody->setAppId('65415bb1-9267-4313-bbf5-ae259732ee12');

$result = $graphServiceClient->servicePrincipals()->post($requestBody)->wait();

```