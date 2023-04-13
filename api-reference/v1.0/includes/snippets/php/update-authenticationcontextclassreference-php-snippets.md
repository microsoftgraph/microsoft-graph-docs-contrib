---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationContextClassReference();
$requestBody->setDisplayName('Contoso medium');

$requestBody->setDescription('Medium protection level defined for Contoso policy');

$requestBody->setIsAvailable(true);



$result = $graphServiceClient->identity()->conditionalAccess()->authenticationContextClassReferencesById('authenticationContextClassReference-id')->patch($requestBody);


```