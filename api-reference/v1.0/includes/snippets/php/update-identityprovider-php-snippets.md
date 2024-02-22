---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityProvider();
$requestBody->setClientSecret('1111111111111');

$result = $graphServiceClient->identityProviders()->byIdentityProviderId('identityProvider-id')->patch($requestBody)->wait();

```