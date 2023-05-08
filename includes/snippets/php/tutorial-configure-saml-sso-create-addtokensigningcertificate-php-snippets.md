---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddTokenSigningCertificatePostRequestBody();
$requestBody->setDisplayName('CN=AWSContoso');

$requestBody->setEndDateTime(new DateTime('2024-01-25T00:00:00Z'));



$result = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->addTokenSigningCertificate()->post($requestBody);


```