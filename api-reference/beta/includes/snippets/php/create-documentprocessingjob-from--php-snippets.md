---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\DocumentProcessingJob;
use Microsoft\Graph\Beta\Generated\Models\DocumentProcessingJobType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DocumentProcessingJob();
$requestBody->setOdataType('#microsoft.graph.documentProcessingJob');
$requestBody->setJobType(new DocumentProcessingJobType('file'));
$requestBody->setListItemUniqueId('5955b119-99c1-4af9-97ed-3449e02de6f1');

$result = $graphServiceClient->sites()->bySiteId('site-id')->documentProcessingJobs()->post($requestBody)->wait();

```