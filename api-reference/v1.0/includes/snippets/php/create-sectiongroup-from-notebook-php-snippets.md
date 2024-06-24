---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SectionGroup;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SectionGroup();
$requestBody->setDisplayName('Section group name');

$result = $graphServiceClient->me()->onenote()->notebooks()->byNotebookId('notebook-id')->sectionGroups()->post($requestBody)->wait();

```