---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BusinessScenario;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BusinessScenario();
$requestBody->setOdataType('#microsoft.graph.businessScenario');
$requestBody->setDisplayName('Contoso Order Tracking');
$requestBody->setUniqueName('com.contoso.apps.ordertracking');

$result = $graphServiceClient->solutions()->businessScenarios()->post($requestBody)->wait();

```