---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Ediscovery\Custodian;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Custodian();
$requestBody->setEmail('AdeleV@contoso.com');
$requestBody->setApplyHoldToSources(true);

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->custodians()->post($requestBody)->wait();

```