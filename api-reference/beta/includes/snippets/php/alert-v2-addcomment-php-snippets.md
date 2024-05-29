---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertComment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AlertComment();
$requestBody->setOdataType('microsoft.graph.security.alertComment');
$requestBody->setComment('Demo for docs');

$result = $graphServiceClient->security()->alerts_v2()->byAlertId('alert-id')->comments()->post($requestBody)->wait();

```