---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ContactFolder;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContactFolder();
$requestBody->setParentFolderId('parentFolderId-value');
$requestBody->setDisplayName('displayName-value');

$result = $graphServiceClient->me()->contactFolders()->byContactFolderId('contactFolder-id')->patch($requestBody)->wait();

```