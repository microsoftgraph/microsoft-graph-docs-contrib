---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CopilotAdminLimitedMode;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopilotAdminLimitedMode();
$requestBody->setOdataType('#microsoft.graph.copilotAdminLimitedMode');
$requestBody->setIsEnabledForGroup(true);
$requestBody->setGroupId('4c563cdf-0efa-44c5-a384-dbf57db277df');

$result = $graphServiceClient->copilot()->admin()->settings()->limitedMode()->patch($requestBody)->wait();

```