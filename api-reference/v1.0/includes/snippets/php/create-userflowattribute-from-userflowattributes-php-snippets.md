---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityUserFlowAttribute();
$requestBody->setDisplayName('Hobby');

$requestBody->setDescription('Your hobby');

$requestBody->setDataType(new IdentityUserFlowAttributeDataType('string'));



$result = $graphServiceClient->identity()->userFlowAttributes()->post($requestBody);


```