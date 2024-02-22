---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConfirmCompromisedPostRequestBody();
$requestBody->setServicePrincipalIds(['9089a539-a539-9089-39a5-899039a58990', 	]);

$graphServiceClient->identityProtection()->riskyServicePrincipals()->confirmCompromised()->post($requestBody)->wait();

```