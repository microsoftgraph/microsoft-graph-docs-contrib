---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Permission;
use Microsoft\Graph\Beta\Generated\Models\SharePointIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Permission();
$grantedToIdentitiesV2 = new SharePointIdentitySet();
$grantedToIdentitiesV2SiteGroup = new SharePointIdentity();
$grantedToIdentitiesV2SiteGroup->setId('10');
$grantedToIdentitiesV2SiteGroup->setDisplayName('Internal Collaborators');
$grantedToIdentitiesV2->setSiteGroup($grantedToIdentitiesV2SiteGroup);
$requestBody->setGrantedToIdentitiesV2($grantedToIdentitiesV2);
$requestBody->setRoles(['write', 	]);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->permissions()->post($requestBody)->wait();

```