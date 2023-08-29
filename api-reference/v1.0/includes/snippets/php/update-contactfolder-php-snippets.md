---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContactFolder();
$requestBody->setParentFolderId('parentFolderId-value');
$requestBody->setDisplayName('displayName-value');

$result = $graphServiceClient->me()->contactFolders()->byContactFolderId('contactFolder-id')->patch($requestBody)->wait();

```