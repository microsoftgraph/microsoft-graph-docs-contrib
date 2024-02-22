---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MailFolder();
$requestBody->setDisplayName('Clutter');
$requestBody->setIsHidden(true);

$result = $graphServiceClient->me()->mailFolders()->post($requestBody)->wait();

```