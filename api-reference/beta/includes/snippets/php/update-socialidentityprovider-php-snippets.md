---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SocialIdentityProvider();
$requestBody->setOdataType('#microsoft.graph.socialIdentityProvider');

$requestBody->setClientSecret('1111111111111');



$result = $graphServiceClient->identity()->identityProviders()->byIdentityProviderBaseId('identityProviderBase-id')->patch($requestBody);


```