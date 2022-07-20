---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AttributeSet();
$requestBody->setId('Engineering');

$requestBody->setDescription('Attributes for engineering team');

$requestBody->setMaxAttributesPerSet(maxAttributesPerSet);



$requestResult = $graphServiceClient->directory()->attributeSets()->post($requestBody);


```