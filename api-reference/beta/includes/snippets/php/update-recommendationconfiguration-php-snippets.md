---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\RecommendationConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RecommendationConfiguration();
$requestBody->setIsNotificationEnabled(true);

$result = $graphServiceClient->directory()->recommendationConfiguration()->patch($requestBody)->wait();

```