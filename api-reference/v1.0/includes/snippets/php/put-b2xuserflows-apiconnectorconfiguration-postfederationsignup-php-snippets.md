---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceUpdate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/identity/apiConnectors/{id}');

$graphServiceClient->identity()->b2xUserFlows()->byB2xIdentityUserFlowId('b2xIdentityUserFlow-id')->apiConnectorConfiguration()->postFederationSignup()->ref()->put($requestBody)->wait();

```