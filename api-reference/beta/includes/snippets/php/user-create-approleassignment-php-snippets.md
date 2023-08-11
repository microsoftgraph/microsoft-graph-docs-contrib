---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setPrincipalId('cde330e5-2150-4c11-9c5b-14bfdc948c79');

$requestBody->setResourceId('8e881353-1735-45af-af21-ee1344582a4d');

$requestBody->setAppRoleId('00000000-0000-0000-0000-000000000000');



$result = $graphServiceClient->users()->byUserId('user-id')->appRoleAssignments()->post($requestBody);


```