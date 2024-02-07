---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MailSearchFolder();
$requestBody->setOdataType('microsoft.graph.mailSearchFolder');
$requestBody->setFilterQuery('contains(subject, \'Analytics\')');

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->patch($requestBody)->wait();

```