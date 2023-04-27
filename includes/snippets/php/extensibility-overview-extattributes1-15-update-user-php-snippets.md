---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new User();
$onPremisesExtensionAttributes = new OnPremisesExtensionAttributes();
$onPremisesExtensionAttributes->setExtensionAttribute1('skypeId.adeleVance');

$OnPremisesExtensionAttributes->setExtensionAttribute13(null);


$requestBody->setOnPremisesExtensionAttributes($onPremisesExtensionAttributes);


$result = $graphServiceClient->usersById('user-id')->patch($requestBody);


```