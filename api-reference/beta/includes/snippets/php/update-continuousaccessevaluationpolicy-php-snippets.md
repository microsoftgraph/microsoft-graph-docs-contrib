---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContinuousAccessEvaluationPolicy();
$requestBody->setOdataType('#microsoft.graph.continuousAccessEvaluationPolicy');
$requestBody->setMigrate(true);

$result = $graphServiceClient->identity()->continuousAccessEvaluationPolicy()->patch($requestBody)->wait();

```