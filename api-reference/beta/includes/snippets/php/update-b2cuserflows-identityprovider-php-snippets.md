---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/beta/identityProviders/{id}');



$graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->identityProviders()->ref()->post($requestBody);


```