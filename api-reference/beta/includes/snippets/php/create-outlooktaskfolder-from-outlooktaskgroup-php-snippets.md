---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OutlookTaskFolder;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookTaskFolder();
$requestBody->setName('Cooking');

$result = $graphServiceClient->me()->outlook()->taskGroups()->byOutlookTaskGroupId('outlookTaskGroup-id')->taskFolders()->post($requestBody)->wait();

```