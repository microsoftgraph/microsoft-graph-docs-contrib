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



$result = $graphServiceClient->sitesById('site-id')->contentTypesById('contentType-id')->columnsById('columnDefinition-id')->patch($requestBody);


```