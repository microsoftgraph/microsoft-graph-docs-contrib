---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ContinuousAccessEvaluationPolicy();
$requestBody->set@odatatype('#microsoft.graph.continuousAccessEvaluationPolicy');

$requestBody->setMigrate(true);



$result = $graphServiceClient->identity()->continuousAccessEvaluationPolicy()->patch($requestBody);


```