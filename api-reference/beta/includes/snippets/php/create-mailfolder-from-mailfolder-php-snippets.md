---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MailFolder();
$requestBody->setDisplayName('displayName-value');
$requestBody->setIsHidden(true);

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->childFolders()->post($requestBody)->wait();

```