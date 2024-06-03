---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Permission;
use Microsoft\Graph\Generated\Models\SharePointIdentitySet;
use Microsoft\Graph\Generated\Models\Identity;


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