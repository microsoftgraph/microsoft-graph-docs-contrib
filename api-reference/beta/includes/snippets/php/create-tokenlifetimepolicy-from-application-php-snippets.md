---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TokenLifetimePoliciesPostRequestBody();
$additionalData = [
'@odata.id' => 'https://graph.microsoft.com/beta/policies/tokenLifetimePolicies/cd3d9b57-0aee-4f25-8ee3-ac74ef5986a9', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->applicationsById('application-id')->tokenLifetimePolicies()->post($requestBody);


```