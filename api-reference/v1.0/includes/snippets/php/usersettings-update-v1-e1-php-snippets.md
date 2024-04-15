---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UserSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserSettings();
$requestBody->setContributionToContentDiscoveryDisabled(true);

$result = $graphServiceClient->me()->settings()->patch($requestBody)->wait();

```