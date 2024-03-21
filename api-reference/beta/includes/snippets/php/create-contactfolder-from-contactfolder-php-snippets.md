---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContactFolder();
$requestBody->setDisplayName('Family');

$result = $graphServiceClient->me()->contactFolders()->byContactFolderId('contactFolder-id')->childFolders()->post($requestBody)->wait();

```