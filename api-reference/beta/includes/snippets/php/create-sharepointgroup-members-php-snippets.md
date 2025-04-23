---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SharePointGroupMember;
use Microsoft\Graph\Beta\Generated\Models\SharePointIdentitySet;
use Microsoft\Graph\Beta\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointGroupMember();
$requestBody->setOdataType('#microsoft.graph.sharePointGroupMember');
$identity = new SharePointIdentitySet();
$identityUser = new Identity();
$additionalData = [
	'userPrincipalName' => 'john.smith@contoso.com',
];
$identityUser->setAdditionalData($additionalData);
$identity->setUser($identityUser);
$requestBody->setIdentity($identity);

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->sharePointGroups()->bySharePointGroupId('sharePointGroup-id')->members()->post($requestBody)->wait();

```