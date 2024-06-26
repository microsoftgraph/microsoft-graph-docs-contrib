---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Ediscovery\UserSource;
use Microsoft\Graph\Beta\Generated\Models\Ediscovery\SourceType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserSource();
$requestBody->setEmail('adelev@contoso.com');
$requestBody->setIncludedSources(new SourceType('mailbox'));

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->legalHolds()->byLegalHoldId('legalHold-id')->userSources()->post($requestBody)->wait();

```