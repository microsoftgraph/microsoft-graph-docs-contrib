---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RevokeGrantsPostRequestBody;
use Microsoft\Graph\Generated\Models\DriveRecipient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RevokeGrantsPostRequestBody();
$granteesDriveRecipient1 = new DriveRecipient();
$granteesDriveRecipient1->setEmail('ryan@contoso.com');
$granteesArray []= $granteesDriveRecipient1;
$requestBody->setGrantees($granteesArray);


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->permissions()->byPermissionId('permission-id')->revokeGrants()->post($requestBody)->wait();

```