---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ContinuousAccessEvaluationPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContinuousAccessEvaluationPolicy();
$requestBody->setOdataType('#microsoft.graph.continuousAccessEvaluationPolicy');
$requestBody->setMigrate(true);

$result = $graphServiceClient->identity()->continuousAccessEvaluationPolicy()->patch($requestBody)->wait();

```