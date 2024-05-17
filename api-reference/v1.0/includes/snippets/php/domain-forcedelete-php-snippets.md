---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ForceDeletePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForceDeletePostRequestBody();
$requestBody->setDisableUserAccounts(true);

$graphServiceClient->domains()->byDomainId('domain-id')->forceDelete()->post($requestBody)->wait();

```