---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\BusinessScenario;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BusinessScenario();
$requestBody->setOdataType('#microsoft.graph.businessScenario');
$requestBody->setDisplayName('Contoso Order Tracking');
$requestBody->setUniqueName('com.contoso.apps.ordertracking');

$result = $graphServiceClient->solutions()->businessScenarios()->post($requestBody)->wait();

```