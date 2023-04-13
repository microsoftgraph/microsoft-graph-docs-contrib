---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CopyToNotebookPostRequestBody();
$requestBody->setId('id-value');

$requestBody->setGroupId('groupId-value');

$requestBody->setRenameAs('renameAs-value');



$result = $graphServiceClient->me()->onenote()->sectionsById('onenoteSection-id')->copyToNotebook()->post($requestBody);


```