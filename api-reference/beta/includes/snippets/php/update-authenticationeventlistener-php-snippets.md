---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnTokenIssuanceStartListener();
$requestBody->setOdataType('#microsoft.graph.onTokenIssuanceStartListener');

$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$conditionsApplications->setIncludeAllApplications(false);


$conditions->setApplications($conditionsApplications);

$requestBody->setConditions($conditions);
$requestBody->setPriority(500);



$result = $graphServiceClient->identity()->authenticationEventListeners()->byAuthenticationEventListenerId('authenticationEventListener-id')->patch($requestBody);


```