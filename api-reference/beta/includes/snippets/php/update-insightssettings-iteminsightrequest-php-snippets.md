---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\InsightsSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InsightsSettings();
$requestBody->setDisabledForGroup('edbfe4fb-ec70-4300-928f-dbb2ae86c981');

$result = $graphServiceClient->admin()->people()->itemInsights()->patch($requestBody)->wait();

```