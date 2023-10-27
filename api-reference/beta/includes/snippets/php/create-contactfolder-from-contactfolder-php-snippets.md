---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContactFolder();
$requestBody->setDisplayName('Family');

$result = $graphServiceClient->me()->contactFolders()->byContactFolderId('contactFolder-id')->childFolders()->post($requestBody)->wait();

```