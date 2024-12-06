---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CopilotAdminLimitedMode;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopilotAdminLimitedMode();
$requestBody->setOdataType('#microsoft.graph.copilotAdminLimitedMode');
$requestBody->setIsEnabledForGroup(boolean);
$requestBody->setGroupId('String');

$result = $graphServiceClient->copilot()->admin()->settings()->limitedMode()->patch($requestBody)->wait();

```