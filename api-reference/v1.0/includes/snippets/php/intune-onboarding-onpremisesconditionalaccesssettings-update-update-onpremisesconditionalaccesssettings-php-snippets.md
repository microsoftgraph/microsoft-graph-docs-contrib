---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnPremisesConditionalAccessSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPremisesConditionalAccessSettings();
$requestBody->setOdataType('#microsoft.graph.onPremisesConditionalAccessSettings');
$requestBody->setEnabled(true);
$requestBody->setIncludedGroups(['77c9d466-d466-77c9-66d4-c97766d4c977', 	]);
$requestBody->setExcludedGroups(['2a0afae4-fae4-2a0a-e4fa-0a2ae4fa0a2a', 	]);
$requestBody->setOverrideDefaultRule(true);

$result = $graphServiceClient->deviceManagement()->conditionalAccessSettings()->patch($requestBody)->wait();

```