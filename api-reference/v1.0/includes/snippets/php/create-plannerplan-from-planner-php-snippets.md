---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlannerPlan();
$requestBody->setOwner('ebf3b108-5234-4e22-b93d-656d7dae5874');

$requestBody->setTitle('title-value');



$requestResult = $graphServiceClient->planner()->plans()->post($requestBody);


```