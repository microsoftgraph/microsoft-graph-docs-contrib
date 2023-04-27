---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityProvider();
$requestBody->setClientSecret('1111111111111');



$result = $graphServiceClient->identityProvidersById('identityProvider-id')->patch($requestBody);


```