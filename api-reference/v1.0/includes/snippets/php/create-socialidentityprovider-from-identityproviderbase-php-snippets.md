---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SocialIdentityProvider();
$requestBody->setOdataType('microsoft.graph.socialIdentityProvider');

$requestBody->setDisplayName('Login with Amazon');

$requestBody->setIdentityProviderType('Amazon');

$requestBody->setClientId('56433757-cadd-4135-8431-2c9e3fd68ae8');

$requestBody->setClientSecret('000000000000');



$result = $graphServiceClient->identity()->identityProviders()->post($requestBody);


```