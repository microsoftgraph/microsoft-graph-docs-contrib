---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ConditionalAccessPolicy();
$conditions = new ConditionalAccessConditionSet();
$conditions->setSignInRiskLevels([$conditions->setRiskLevel(new RiskLevel('high'));
$conditions->setRiskLevel(new RiskLevel('medium'));
$conditions->setRiskLevel(new RiskLevel('low'));
]);


$requestBody->setConditions($conditions);


$result = $graphServiceClient->identity()->conditionalAccess()->policiesById('conditionalAccessPolicy-id')->patch($requestBody);


```