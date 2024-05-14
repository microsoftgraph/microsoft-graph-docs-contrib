---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Custodian;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Custodian();
$requestBody->setApplyHoldToSources(false);

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->custodians()->byCustodianId('custodian-id')->patch($requestBody)->wait();

```