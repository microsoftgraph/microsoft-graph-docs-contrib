---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomAppScope();
$requestBody->setType('RecipientScope');

$requestBody->setDisplayName('Protected Exec Users');

$customAttributes = new CustomAppScopeAttributesDictionary();
$additionalData = [
		'Exclusive' => false,
		'RecipientFilter' => 'Title -like \'VP*\'', 
];
$customAttributes->setAdditionalData($additionalData);



$requestBody->setCustomAttributes($customAttributes);


$result = $graphServiceClient->roleManagement()->exchange()->customAppScopes()->post($requestBody);


```