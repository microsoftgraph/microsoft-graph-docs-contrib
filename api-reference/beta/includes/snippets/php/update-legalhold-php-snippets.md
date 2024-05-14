---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\LegalHold;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LegalHold();
$requestBody->setDescription('This is a description for a legalHold');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->legalHolds()->byLegalHoldId('legalHold-id')->patch($requestBody)->wait();

```