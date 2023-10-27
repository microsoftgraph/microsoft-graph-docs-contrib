---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SectionGroup();
$requestBody->setDisplayName('Section group name');

$result = $graphServiceClient->me()->onenote()->notebooks()->byNotebookId('notebook-id')->sectionGroups()->post($requestBody)->wait();

```