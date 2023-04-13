---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ColumnDefinition();
$additionalData = [
		'sourceColumn@odata.bind' => 'https://graph.microsoft.com/v1.0/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->sitesById('site-id')->contentTypesById('contentType-id')->columns()->post($requestBody);


```