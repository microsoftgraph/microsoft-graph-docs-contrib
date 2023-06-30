---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ExternalUsersSelfServiceSignUpEventsFlow();
$requestBody->set@odatatype('#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow');

$requestBody->setDisplayName('New user flow description');

$requestBody->setPriority(200);



$result = $graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->patch($requestBody);


```