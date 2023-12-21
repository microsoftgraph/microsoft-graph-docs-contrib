---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContinuousAccessEvaluationPolicy();
$requestBody->setOdataType('#microsoft.graph.continuousAccessEvaluationPolicy');
$requestBody->setMigrate(true);

$result = $graphServiceClient->identity()->continuousAccessEvaluationPolicy()->patch($requestBody)->wait();

```