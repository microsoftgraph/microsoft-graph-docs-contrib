---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Agreement();
$requestBody->setDisplayName('All Contoso volunteers - Terms of use');

$requestBody->setIsViewingBeforeAcceptanceRequired(true);



$result = $graphServiceClient->identityGovernance()->termsOfUse()->agreementsById('agreement-id')->patch($requestBody);


```