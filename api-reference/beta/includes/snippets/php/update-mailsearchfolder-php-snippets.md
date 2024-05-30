---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MailSearchFolder;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MailSearchFolder();
$requestBody->setOdataType('microsoft.graph.mailSearchFolder');
$requestBody->setFilterQuery('contains(subject, \'Analytics\')');

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->patch($requestBody)->wait();

```