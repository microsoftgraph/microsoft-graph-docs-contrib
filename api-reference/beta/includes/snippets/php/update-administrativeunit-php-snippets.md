---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AdministrativeUnit();
$additionalData = [
		'membershipType' => 'Dynamic', 
		'membershipRule' => '(user.country -eq \"United States\")', 
		'membershipRuleProcessingState' => 'On', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->administrativeUnitsById('administrativeUnit-id')->patch($requestBody);


```