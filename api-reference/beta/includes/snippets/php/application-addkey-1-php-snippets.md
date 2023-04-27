---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddKeyPostRequestBody();
$keyCredential = new KeyCredential();
$keyCredential->setType('AsymmetricX509Cert');

$keyCredential->setUsage('Verify');

$KeyCredential->setKey(base64_decode('MIIDYDCCAki...'));


$requestBody->setKeyCredential($keyCredential);
$requestBody->setPasswordCredential(null);

$requestBody->setProof('eyJ0eXAiOiJ...');



$result = $graphServiceClient->applicationsById('application-id')->addKey()->post($requestBody);


```