---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GetNotebookFromWebUrlPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetNotebookFromWebUrlPostRequestBody();
$requestBody->setWebUrl('webUrl value');

$result = $graphServiceClient->me()->onenote()->notebooks()->getNotebookFromWebUrl()->post($requestBody)->wait();

```