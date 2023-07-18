---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConditionalAccessPolicy();
$conditions = new ConditionalAccessConditionSet();
$conditions->setSignInRiskLevels([new RiskLevel('high'),new RiskLevel('medium'),new RiskLevel('low'),	]);


$requestBody->setConditions($conditions);


$result = $graphServiceClient->identity()->conditionalAccess()->policies()->byConditionalAccessPolicyId('conditionalAccessPolicy-id')->patch($requestBody);


```