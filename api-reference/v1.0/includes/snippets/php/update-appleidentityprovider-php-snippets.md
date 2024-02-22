---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SocialIdentityProvider();
$requestBody->setOdataType('#microsoft.graph.socialIdentityProvider');
$requestBody->setDisplayName('Apple');

$result = $graphServiceClient->identity()->identityProviders()->byIdentityProviderBaseId('identityProviderBase-id')->patch($requestBody)->wait();

```