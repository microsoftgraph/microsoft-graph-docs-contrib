---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\Environment;
use Microsoft\Graph\Beta\Generated\Models\Security\EnvironmentKind;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Environment();
$requestBody->setKind(new EnvironmentKind('azureSubscription'));
$requestBody->setId('/subscriptions/d34fd44c-ebfa-4a9c-bceb-9eeafe72ac15');

$result = $graphServiceClient->security()->zones()->byZoneId('zone-id')->environments()->post($requestBody)->wait();

```