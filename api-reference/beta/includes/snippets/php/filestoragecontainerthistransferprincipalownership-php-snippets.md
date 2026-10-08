---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Storage\FileStorage\Containers\Item\TransferPrincipalOwnership\TransferPrincipalOwnershipPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\IdentitySet;
use Microsoft\Graph\Beta\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TransferPrincipalOwnershipPostRequestBody();
$transferTo = new IdentitySet();
$transferToUser = new Identity();
$additionalData = [
	'userPrincipalName' => 'newowner@contoso.com',
];
$transferToUser->setAdditionalData($additionalData);
$transferTo->setUser($transferToUser);
$requestBody->setTransferTo($transferTo);

$graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->transferPrincipalOwnership()->post($requestBody)->wait();

```