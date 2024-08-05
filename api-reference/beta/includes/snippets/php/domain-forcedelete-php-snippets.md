---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Domains\Item\ForceDelete\ForceDeletePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForceDeletePostRequestBody();
$requestBody->setDisableUserAccounts(true);

$graphServiceClient->domains()->byDomainId('domain-id')->forceDelete()->post($requestBody)->wait();

```