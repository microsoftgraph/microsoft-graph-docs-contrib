---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddTokenSigningCertificatePostRequestBody();
$requestBody->setDisplayName('CN=AWSContoso');
$requestBody->setEndDateTime(new \DateTime('2024-01-25T00:00:00Z'));

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->addTokenSigningCertificate()->post($requestBody)->wait();

```