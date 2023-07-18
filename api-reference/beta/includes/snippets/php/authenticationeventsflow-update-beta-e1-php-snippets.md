---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalUsersSelfServiceSignUpEventsFlow();
$requestBody->setOdataType('#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow');

$requestBody->setDisplayName('New user flow description');

$requestBody->setPriority(200);



$result = $graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->patch($requestBody);


```