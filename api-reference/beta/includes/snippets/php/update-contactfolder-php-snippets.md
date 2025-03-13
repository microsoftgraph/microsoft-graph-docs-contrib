---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ContactFolder;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContactFolder();
$requestBody->setParentFolderId('parentFolderId-value');
$requestBody->setDisplayName('displayName-value');

$result = $graphServiceClient->me()->contactFolders()->byContactFolderId('contactFolder-id')->patch($requestBody)->wait();

```