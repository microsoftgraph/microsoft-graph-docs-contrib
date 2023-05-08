---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlannerBucket();
$requestBody->setName('Advertising');

$requestBody->setPlanId('xqQg5FS2LkCp935s-FIFm2QAFkHM');

$requestBody->setOrderHint(' !');



$result = $graphServiceClient->planner()->buckets()->post($requestBody);


```