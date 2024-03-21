---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPasswordPostRequestBody();
$passwordCredential = new PasswordCredential();
$passwordCredential->setDisplayName('Password friendly name');
$requestBody->setPasswordCredential($passwordCredential);

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->addPassword()->post($requestBody)->wait();

```