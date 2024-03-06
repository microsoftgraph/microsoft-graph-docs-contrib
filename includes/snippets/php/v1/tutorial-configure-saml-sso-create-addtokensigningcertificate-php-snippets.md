---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddTokenSigningCertificatePostRequestBody();
$requestBody->setDisplayName('CN=AWSContoso');
$requestBody->setEndDateTime(new \DateTime('2027-01-22T00:00:00Z'));

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->addTokenSigningCertificate()->post($requestBody)->wait();

```