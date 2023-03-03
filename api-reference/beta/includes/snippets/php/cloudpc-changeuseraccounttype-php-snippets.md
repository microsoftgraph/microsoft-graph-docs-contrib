---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChangeUserAccountTypePostRequestBody();
$requestBody->setUserAccountType(new CloudPcUserAccountType('administrator'));



$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCsById('cloudPC-id')->changeUserAccountType()->post($requestBody);


```