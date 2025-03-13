---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OpenIdConnectIdentityProvider;
use Microsoft\Graph\Beta\Generated\Models\ClaimsMapping;
use Microsoft\Graph\Beta\Generated\Models\OpenIdConnectResponseMode;
use Microsoft\Graph\Beta\Generated\Models\OpenIdConnectResponseTypes;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenIdConnectIdentityProvider();
$requestBody->setOdataType('microsoft.graph.openIdConnectIdentityProvider');
$requestBody->setDisplayName('Contoso');
$requestBody->setClientId('00001111-aaaa-2222-bbbb-3333cccc4444');
$requestBody->setClientSecret('4294967296');
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

$result = $graphServiceClient->identity()->identityProviders()->post($requestBody)->wait();

```