---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyToSectionGroupPostRequestBody();
$requestBody->setId('id-value');
$requestBody->setGroupId('groupId-value');
$requestBody->setRenameAs('renameAs-value');

$result = $graphServiceClient->me()->onenote()->sections()->byOnenoteSectionId('onenoteSection-id')->copyToSectionGroup()->post($requestBody)->wait();

```