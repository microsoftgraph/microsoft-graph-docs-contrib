---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\DistributionList;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DistributionList();
$requestBody->setDisplayName('Updated Project Team');

$result = $graphServiceClient->me()->distributionLists()->byDistributionListId('distributionList-id')->patch($requestBody)->wait();

```