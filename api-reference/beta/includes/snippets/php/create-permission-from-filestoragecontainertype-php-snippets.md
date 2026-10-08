---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Permission;
use Microsoft\Graph\Beta\Generated\Models\SharePointIdentitySet;
use Microsoft\Graph\Beta\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Permission();
$requestBody->setRoles(['owner', 	]);
$grantedToV2 = new SharePointIdentitySet();
$grantedToV2User = new Identity();
$grantedToV2User->setId('11111111-1111-1111-1111-111111111111');
$grantedToV2->setUser($grantedToV2User);
$requestBody->setGrantedToV2($grantedToV2);

$result = $graphServiceClient->storage()->fileStorage()->containerTypes()->byFileStorageContainerTypeId('fileStorageContainerType-id')->permissions()->post($requestBody)->wait();

```