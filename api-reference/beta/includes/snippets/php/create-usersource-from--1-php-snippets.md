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
$requestBody->setEmail('megan@contoso.com');
$requestBody->setIncludedSources(new SourceType('mailbox, site'));

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->custodians()->byCustodianId('custodian-id')->userSources()->post($requestBody)->wait();

```