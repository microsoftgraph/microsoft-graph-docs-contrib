---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ContactFolder();
$requestBody->setParentFolderId('parentFolderId-value');

$requestBody->setDisplayName('displayName-value');



$result = $graphServiceClient->me()->contactFoldersById('contactFolder-id')->patch($requestBody);


```