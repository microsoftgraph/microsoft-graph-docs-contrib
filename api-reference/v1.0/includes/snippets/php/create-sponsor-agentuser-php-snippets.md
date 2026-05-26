---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DirectoryObject;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DirectoryObject();
$requestBody->setOdataType('#microsoft.graph.directoryObject');

$graphServiceClient->users()->byUserId('user-id')->sponsors()->ref()->post($requestBody)->wait();

```