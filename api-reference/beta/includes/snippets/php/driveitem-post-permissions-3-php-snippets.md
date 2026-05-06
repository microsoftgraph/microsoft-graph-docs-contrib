---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Permission;
use Microsoft\Graph\Beta\Generated\Models\SharePointIdentitySet;
use Microsoft\Graph\Beta\Generated\Models\SharePointGroupIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Permission();
$grantedToV2 = new SharePointIdentitySet();
$grantedToV2SharePointGroup = new SharePointGroupIdentity();
$grantedToV2SharePointGroup->setId('ZGYwZTEzYTgtOTExOS00MjdmLWEzNjktOTdjOWM3YjNlYjcyXzE0');
$grantedToV2->setSharePointGroup($grantedToV2SharePointGroup);
$requestBody->setGrantedToV2($grantedToV2);
$requestBody->setRoles(['write', 	]);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->permissions()->post($requestBody)->wait();

```