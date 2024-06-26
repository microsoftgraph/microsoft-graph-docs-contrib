---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\DriveItem;
use Microsoft\Graph\Beta\Generated\Models\Bundle;
use Microsoft\Graph\Beta\Generated\Models\Album;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DriveItem();
$requestBody->setName('My Day at the Beach');
$bundle = new Bundle();
$bundleAlbum = new Album();
$bundle->setAlbum($bundleAlbum);
$requestBody->setBundle($bundle);
$childrenDriveItem1 = new DriveItem();
$childrenDriveItem1->setId('1234asdf');
$childrenArray []= $childrenDriveItem1;
$requestBody->setChildren($childrenArray);

$additionalData = [
'@microsoft.graph.conflictBehavior' => 'rename',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->bundles()->post($requestBody)->wait();

```