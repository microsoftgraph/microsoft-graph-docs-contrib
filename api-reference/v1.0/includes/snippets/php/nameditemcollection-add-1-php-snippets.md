---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPostRequestBody();
$requestBody->setName('test5');
$requestBody->setReference('=Sheet1!$F$15:$N$27');
$requestBody->setComment('Comment for the named item');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->names()->add()->post($requestBody)->wait();

```