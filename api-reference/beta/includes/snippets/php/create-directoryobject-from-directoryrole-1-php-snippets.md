---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReferenceCreate();
$requestBody->set@odataid('https://graph.microsoft.com/beta/users/0f933635-5b77-4cf4-a577-f78a5eb090a2');



$graphServiceClient->directoryRolesById('directoryRole-id')->members()->ref()->post($requestBody);


```