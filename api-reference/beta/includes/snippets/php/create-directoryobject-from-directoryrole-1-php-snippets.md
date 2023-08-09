---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/beta/users/0f933635-5b77-4cf4-a577-f78a5eb090a2');



$graphServiceClient->directoryRoles()->byDirectoryRoleId('directoryRole-id')->members()->ref()->post($requestBody);


```