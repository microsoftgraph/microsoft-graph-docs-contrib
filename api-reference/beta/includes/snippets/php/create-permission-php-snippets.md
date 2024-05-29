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
$requestBody->setRoles(['reader', 	]);
$grantedToV2 = new SharePointIdentitySet();
$grantedToV2User = new Identity();
$additionalData = [
	'userPrincipalName' => 'jacob@fabrikam.com',
];
$grantedToV2User->setAdditionalData($additionalData);
$grantedToV2->setUser($grantedToV2User);
$requestBody->setGrantedToV2($grantedToV2);

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->permissions()->post($requestBody)->wait();

```