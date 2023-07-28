---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityProvider();
$requestBody->setClientSecret('1111111111111');



$result = $graphServiceClient->identityProviders()->byIdentityProviderId('identityProvider-id')->patch($requestBody);


```