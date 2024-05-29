---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\UserSource;
use Microsoft\Graph\Beta\Generated\Models\Security\SourceType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserSource();
$requestBody->setEmail('admin@contoso.com');
$requestBody->setIncludedSources(new SourceType('mailbox, site'));

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->legalHolds()->byEdiscoveryHoldPolicyId('ediscoveryHoldPolicy-id')->userSources()->post($requestBody)->wait();

```