---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EnhancedPersonalizationSetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EnhancedPersonalizationSetting();
$requestBody->setIsEnabledInOrganization(true);
$requestBody->setDisabledForGroup('edbfe4fb-ec70-4300-928f-dbb2ae86c981');

$result = $graphServiceClient->copilot()->settings()->people()->enhancedPersonalization()->patch($requestBody)->wait();

```