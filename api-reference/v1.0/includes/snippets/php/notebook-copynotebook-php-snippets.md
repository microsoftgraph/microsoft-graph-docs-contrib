---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Onenote\Notebooks\Item\CopyNotebook\CopyNotebookPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyNotebookPostRequestBody();
$requestBody->setGroupId('groupId-value');
$requestBody->setRenameAs('renameAs-value');

$result = $graphServiceClient->me()->onenote()->notebooks()->byNotebookId('notebook-id')->copyNotebook()->post($requestBody)->wait();

```