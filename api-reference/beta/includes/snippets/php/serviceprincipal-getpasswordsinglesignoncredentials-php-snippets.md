---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GetPasswordSingleSignOnCredentialsPostRequestBody();
$requestBody->setId('5793aa3b-cca9-4794-679a240f8b58');



$result = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->getPasswordSingleSignOnCredentials()->post($requestBody);


```