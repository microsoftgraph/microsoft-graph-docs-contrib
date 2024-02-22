---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookTaskFolder();
$requestBody->setName('Volunteer');

$result = $graphServiceClient->me()->outlook()->taskFolders()->post($requestBody)->wait();

```