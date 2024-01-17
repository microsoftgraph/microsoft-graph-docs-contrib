---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyNotebookPostRequestBody();
$requestBody->setGroupId('groupId-value');
$requestBody->setRenameAs('renameAs-value');

$result = $graphServiceClient->me()->onenote()->notebooks()->byNotebookId('notebook-id')->copyNotebook()->post($requestBody)->wait();

```