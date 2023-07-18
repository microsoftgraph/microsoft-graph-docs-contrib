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

$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('a13d0fc1-04ab-4ede-b215-63de0174cbb4');


$includeApplicationsArray []= $includeApplicationsAuthenticationConditionApplication1;
$conditionsApplications->setIncludeApplications($includeApplicationsArray);



$conditions->setApplications($conditionsApplications);

$requestBody->setConditions($conditions);
$requestBody->setPriority(500);

$handler = new OnTokenIssuanceStartCustomExtensionHandler();
$handler->setOdataType('#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler');

$handlerCustomExtension = new OnTokenIssuanceStartCustomExtension();
$handlerCustomExtension->setId('6fc5012e-7665-43d6-9708-4370863f4e6e');


$handler->setCustomExtension($handlerCustomExtension);

$requestBody->setHandler($handler);


$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody);


```