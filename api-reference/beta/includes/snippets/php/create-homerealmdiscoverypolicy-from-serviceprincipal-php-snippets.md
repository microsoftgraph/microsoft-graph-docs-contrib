---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReferenceCreate();
$requestBody->set@odataid('https://graph.microsoft.com/beta/policies/homeRealmDiscoveryPolicies/6c6f154f-cb39-4ff9-bf5b-62d5ad585cde');



$graphServiceClient->servicePrincipalsById('servicePrincipal-id')->homeRealmDiscoveryPolicies()->ref()->post($requestBody);


```