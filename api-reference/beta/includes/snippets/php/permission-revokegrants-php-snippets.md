---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RevokeGrantsPostRequestBody();
$granteesDriveRecipient1 = new DriveRecipient();
$granteesDriveRecipient1->setEmail('ryan@contoso.com');


$granteesArray []= $granteesDriveRecipient1;
$requestBody->setGrantees($granteesArray);




$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->permissions()->byPermissionId('permission-id')->revokeGrants()->post($requestBody);


```