---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationStrengthPolicy();
$requestBody->setOdataType('#microsoft.graph.authenticationStrengthPolicy');

$requestBody->setDisplayName('FIDO2 only');

$requestBody->setDescription('An auth strength allowing only FIDO2 security keys.');



$result = $graphServiceClient->policies()->authenticationStrengthPolicies()->byAuthenticationStrengthPolicyId('authenticationStrengthPolicy-id')->patch($requestBody);


```