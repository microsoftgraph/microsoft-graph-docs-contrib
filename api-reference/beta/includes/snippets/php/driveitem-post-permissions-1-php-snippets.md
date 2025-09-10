---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Permission;
use Microsoft\Graph\Beta\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Permission();
$grantedToIdentitiesV2 = new SharePointIdentitySet();
$grantedToIdentitiesV2Application = new Identity();
$grantedToIdentitiesV2Application->setId('89ea5c94-7736-4e25-95ad-3fa95f62b66e');
$grantedToIdentitiesV2Application->setDisplayName('Contoso Time Manager App');
$grantedToIdentitiesV2->setApplication($grantedToIdentitiesV2Application);
$requestBody->setGrantedToIdentitiesV2($grantedToIdentitiesV2);
$requestBody->setRoles(['write', 	]);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->permissions()->post($requestBody)->wait();

```