---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookTaskFolder();
$requestBody->setName('Charity work');

$result = $graphServiceClient->me()->outlook()->taskFolders()->byOutlookTaskFolderId('outlookTaskFolder-id')->patch($requestBody)->wait();

```