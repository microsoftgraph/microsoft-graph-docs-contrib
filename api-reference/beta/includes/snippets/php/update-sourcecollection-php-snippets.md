---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SourceCollection;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SourceCollection();
$requestBody->setDisplayName('Quarterly Financials search');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->sourceCollections()->bySourceCollectionId('sourceCollection-id')->patch($requestBody)->wait();

```