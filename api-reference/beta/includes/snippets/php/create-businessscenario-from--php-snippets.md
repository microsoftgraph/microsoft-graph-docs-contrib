---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BusinessScenario();
$requestBody->set@odatatype('#microsoft.graph.businessScenario');

$requestBody->setDisplayName('Contoso Order Tracking');

$requestBody->setUniqueName('com.contoso.apps.ordertracking');



$result = $graphServiceClient->solutions()->businessScenarios()->post($requestBody);


```