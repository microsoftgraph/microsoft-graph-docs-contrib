---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RevokeGrantsPostRequestBody();
$granteesDriveRecipient1 = new DriveRecipient();
$granteesDriveRecipient1->setEmail('ryan@contoso.com');


$granteesArray []= $granteesDriveRecipient1;
$requestBody->setGrantees($granteesArray);




$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->permissionsById('permission-id')->revokeGrants()->post($requestBody);


```