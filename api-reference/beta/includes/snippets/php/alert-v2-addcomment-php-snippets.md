---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AlertComment();
$requestBody->setOdataType('microsoft.graph.security.alertComment');
$requestBody->setComment('Demo for docs');

$result = $graphServiceClient->security()->alerts_v2()->byAlertId('alert-id')->comments()->post($requestBody)->wait();

```