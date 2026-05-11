---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Permission;
use Microsoft\Graph\Generated\Models\SharePointIdentitySet;
use Microsoft\Graph\Generated\Models\SharePointIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Permission();
$grantedToV2 = new SharePointIdentitySet();
$grantedToV2SiteGroup = new SharePointIdentity();
$grantedToV2SiteGroup->setId('10');
$grantedToV2SiteGroup->setDisplayName('Internal Collaborators');
$grantedToV2->setSiteGroup($grantedToV2SiteGroup);
$requestBody->setGrantedToV2($grantedToV2);
$requestBody->setRoles(['write', 	]);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->permissions()->post($requestBody)->wait();

```