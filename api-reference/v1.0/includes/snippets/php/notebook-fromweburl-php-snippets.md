---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Onenote\Notebooks\GetNotebookFromWebUrl\GetNotebookFromWebUrlPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetNotebookFromWebUrlPostRequestBody();
$requestBody->setWebUrl('webUrl value');

$result = $graphServiceClient->me()->onenote()->notebooks()->getNotebookFromWebUrl()->post($requestBody)->wait();

```