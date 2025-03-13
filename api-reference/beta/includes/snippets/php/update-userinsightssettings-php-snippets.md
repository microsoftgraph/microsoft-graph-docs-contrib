---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\UserInsightsSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserInsightsSettings();
$requestBody->setIsEnabled(false);

$result = $graphServiceClient->users()->byUserId('user-id')->settings()->itemInsights()->patch($requestBody)->wait();

```