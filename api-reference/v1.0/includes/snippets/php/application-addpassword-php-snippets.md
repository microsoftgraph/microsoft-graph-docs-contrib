---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddPasswordPostRequestBody();
$passwordCredential = new PasswordCredential();
$passwordCredential->setDisplayName('Password friendly name');


$requestBody->setPasswordCredential($passwordCredential);


$result = $graphServiceClient->applicationsById('application-id')->addPassword()->post($requestBody);


```