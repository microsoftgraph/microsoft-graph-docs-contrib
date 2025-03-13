---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SocialIdentityProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SocialIdentityProvider();
$requestBody->setOdataType('microsoft.graph.socialIdentityProvider');
$requestBody->setDisplayName('Login with Amazon');
$requestBody->setIdentityProviderType('Amazon');
$requestBody->setClientId('00001111-aaaa-2222-bbbb-3333cccc4444');
$requestBody->setClientSecret('42*****96');

$result = $graphServiceClient->identity()->identityProviders()->post($requestBody)->wait();

```