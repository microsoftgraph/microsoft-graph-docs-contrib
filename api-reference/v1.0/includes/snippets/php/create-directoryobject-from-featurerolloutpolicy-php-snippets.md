---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReferenceCreate();
$requestBody->set@odataid('https://graph.microsoft.com/v1.0/directoryObjects/2441b489-4f12-4882-b039-8f6006bd66da');



$graphServiceClient->policies()->featureRolloutPoliciesById('featureRolloutPolicy-id')->appliesTo()->ref()->post($requestBody);


```