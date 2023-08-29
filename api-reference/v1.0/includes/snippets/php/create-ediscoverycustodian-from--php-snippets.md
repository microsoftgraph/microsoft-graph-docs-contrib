---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryCustodian();
$requestBody->setEmail('AdeleV@contoso.com');

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->custodians()->post($requestBody)->wait();

```