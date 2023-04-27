---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AttributeSet();
$requestBody->setDescription('Attributes for engineering team');

$requestBody->setMaxAttributesPerSet(20);



$result = $graphServiceClient->directory()->attributeSetsById('attributeSet-id')->patch($requestBody);


```