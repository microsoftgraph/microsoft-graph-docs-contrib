---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UserSource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserSource();
$requestBody->setEmail('adelev@contoso.com');
$requestBody->setIncludedSources(new SourceType('mailbox'));

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->legalHolds()->byLegalHoldId('legalHold-id')->userSources()->post($requestBody)->wait();

```