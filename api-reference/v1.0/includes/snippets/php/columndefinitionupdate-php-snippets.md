---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ColumnDefinition();
$requestBody->setRequired(true);

$requestBody->setHidden(false);

$requestBody->setPropagateChanges(false);



$result = $graphServiceClient->sites()->bySiteId('site-id')->contentTypes()->byContentTypeId('contentType-id')->columns()->byColumnId('columnDefinition-id')->patch($requestBody);


```