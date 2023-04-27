---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$requestBody->setDescription('Contoso Life v2.0');

$requestBody->setDisplayName('Contoso Life Renewed');



$result = $graphServiceClient->groupsById('group-id')->patch($requestBody);


```