---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OnenoteSection;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnenoteSection();
$requestBody->setDisplayName('Section name');

$result = $graphServiceClient->me()->onenote()->notebooks()->byNotebookId('notebook-id')->sections()->post($requestBody)->wait();

```