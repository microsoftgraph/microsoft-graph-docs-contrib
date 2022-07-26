---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationContextClassReference();
$additionalData = [
'value' => $value1 = new ();
$		value1->setDisplayName('Contoso trusted locations');

$		value1->setDescription('Access is only allowed from trusted locations');

		$value1->setIsAvailable(true);


$valueArray []= $value1;
$requestBody->setValue($valueArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identity()->conditionalAccess()->authenticationContextClassReferencesById('authenticationContextClassReference-id')->patch($requestBody);


```