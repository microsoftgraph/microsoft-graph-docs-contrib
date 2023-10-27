---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AttributeSet();
$requestBody->setDescription('Attributes for engineering team');
$requestBody->setMaxAttributesPerSet(20);

$result = $graphServiceClient->directory()->attributeSets()->byAttributeSetId('attributeSet-id')->patch($requestBody)->wait();

```