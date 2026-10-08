---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Permission;
use Microsoft\Graph\Generated\Models\SharePointIdentitySet;
use Microsoft\Graph\Generated\Models\SharePointGroupIdentity;


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