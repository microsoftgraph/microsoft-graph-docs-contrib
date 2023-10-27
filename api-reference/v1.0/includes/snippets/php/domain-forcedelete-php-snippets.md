---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForceDeletePostRequestBody();
$requestBody->setDisableUserAccounts(true);

$graphServiceClient->domains()->byDomainId('domain-id')->forceDelete()->post($requestBody)->wait();

```