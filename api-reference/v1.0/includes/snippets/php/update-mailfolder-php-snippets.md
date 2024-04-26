---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MailFolder;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MailFolder();
$requestBody->setDisplayName('displayName-value');

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->patch($requestBody)->wait();

```