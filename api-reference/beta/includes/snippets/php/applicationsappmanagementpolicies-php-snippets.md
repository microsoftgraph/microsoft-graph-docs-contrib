---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}');

$graphServiceClient->applications()->byApplicationId('application-id')->appManagementPolicies()->ref()->post($requestBody)->wait();

```