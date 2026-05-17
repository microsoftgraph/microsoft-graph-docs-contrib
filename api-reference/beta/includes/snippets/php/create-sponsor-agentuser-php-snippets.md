---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\DirectoryObject;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DirectoryObject();
$requestBody->setOdataType('#microsoft.graph.directoryObject');

$graphServiceClient->users()->byUserId('user-id')->sponsors()->ref()->post($requestBody)->wait();

```