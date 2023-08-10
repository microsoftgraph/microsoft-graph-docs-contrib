---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenIdConnectProvider();
$requestBody->setOdataType('microsoft.graph.openIdConnectProvider');

$requestBody->setName('Login with the Contoso identity provider');

$requestBody->setType('OpenIDConnect');

$requestBody->setClientId('56433757-cadd-4135-8431-2c9e3fd68ae8');

$requestBody->setClientSecret('12345');

$claimsMapping = new ClaimsMapping();
$claimsMapping->setUserId('myUserId');

$claimsMapping->setGivenName('myGivenName');

$claimsMapping->setSurname('mySurname');

$claimsMapping->setEmail('myEmail');

$claimsMapping->setDisplayName('myDisplayName');


$requestBody->setClaimsMapping($claimsMapping);
$requestBody->setDomainHint('mycustomoidc');

$requestBody->setMetadataUrl('https://mycustomoidc.com/.well-known/openid-configuration');

$requestBody->setResponseMode(new OpenIdConnectResponseMode('form_post'));

$requestBody->setResponseType(new OpenIdConnectResponseTypes('code'));

$requestBody->setScope('openid');



$result = $graphServiceClient->identityProviders()->post($requestBody);


```