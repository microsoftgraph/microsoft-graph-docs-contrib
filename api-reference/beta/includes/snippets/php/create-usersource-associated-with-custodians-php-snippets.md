---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UserSource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserSource();
$requestBody->setEmail('admin@contoso.com');
$requestBody->setIncludedSources(new SourceType('mailbox, site'));

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->custodians()->byEdiscoveryCustodianId('ediscoveryCustodian-id')->userSources()->post($requestBody)->wait();

```