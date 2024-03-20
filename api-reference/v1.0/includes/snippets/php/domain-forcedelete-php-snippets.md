---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForceDeletePostRequestBody();
$requestBody->setDisableUserAccounts(true);

$graphServiceClient->domains()->byDomainId('domain-id')->forceDelete()->post($requestBody)->wait();

```