---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Permissions\Item\RevokeGrants\RevokeGrantsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\DriveRecipient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RevokeGrantsPostRequestBody();
$granteesDriveRecipient1 = new DriveRecipient();
$granteesDriveRecipient1->setEmail('ryan@contoso.com');
$granteesArray []= $granteesDriveRecipient1;
$requestBody->setGrantees($granteesArray);


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->permissions()->byPermissionId('permission-id')->revokeGrants()->post($requestBody)->wait();

```