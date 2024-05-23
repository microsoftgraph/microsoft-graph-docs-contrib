---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OutlookTaskGroup;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookTaskGroup();
$requestBody->setName('Personal Tasks');

$result = $graphServiceClient->me()->outlook()->taskGroups()->byOutlookTaskGroupId('outlookTaskGroup-id')->patch($requestBody)->wait();

```