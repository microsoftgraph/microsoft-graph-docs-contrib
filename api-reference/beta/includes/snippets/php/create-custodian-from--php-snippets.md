---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Custodian();
$requestBody->setEmail('AdeleV@contoso.com');
$requestBody->setApplyHoldToSources(true);

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->custodians()->post($requestBody)->wait();

```