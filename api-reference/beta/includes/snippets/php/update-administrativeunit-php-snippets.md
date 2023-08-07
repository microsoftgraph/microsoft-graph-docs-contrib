---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdministrativeUnit();
$requestBody->setDisplayName('Executive Division');

$additionalData = [
		'membershipType' => 'Dynamic', 
		'membershipRule' => '(user.country -eq \"United States\")', 
		'membershipRuleProcessingState' => 'On', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->patch($requestBody);


```