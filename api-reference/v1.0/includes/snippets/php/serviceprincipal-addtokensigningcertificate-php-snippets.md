---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddTokenSigningCertificatePostRequestBody();
$requestBody->setDisplayName('CN=customDisplayName');
$requestBody->setEndDateTime(new \DateTime('2024-01-25T00:00:00Z'));

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->addTokenSigningCertificate()->post($requestBody)->wait();

```