---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MailFolder();
$requestBody->setDisplayName('displayName-value');

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->patch($requestBody)->wait();

```