---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityUserFlowAttribute();
$requestBody->setDescription('Your new hobby');



$result = $graphServiceClient->identity()->userFlowAttributesById('identityUserFlowAttribute-id')->patch($requestBody);


```