---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GetUserOwnedObjectsPostRequestBody();
$requestBody->setUserId('55ac777c-109e-4022-b58c-470c8fcb6892');

$requestBody->setType('Group');



$result = $graphServiceClient->directory()->deletedItems()->getUserOwnedObjects()->post($requestBody);


```