---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnAttributeCollectionSubmitListener();
$requestBody->setOdataType('#microsoft.graph.onAttributeCollectionSubmitListener');
$requestBody->setPriority(500);
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$conditionsApplications->setIncludeAllApplications(false);
$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('a7eed01f-a333-4983-bc6b-d359ec9e5eef');
$includeApplicationsArray []= $includeApplicationsAuthenticationConditionApplication1;
$conditionsApplications->setIncludeApplications($includeApplicationsArray);

$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$handler = new OnAttributeCollectionSubmitCustomExtensionHandler();
$handler->setOdataType('#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler');
$handlerCustomExtension = new OnAttributeCollectionSubmitCustomExtension();
$handlerCustomExtension->setId('66867d1f-7824-4f38-aad1-75da1ad09ee2');
$handler->setCustomExtension($handlerCustomExtension);
$requestBody->setHandler($handler);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```