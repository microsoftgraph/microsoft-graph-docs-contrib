---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OnAttributeCollectionSubmitListener;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionApplication;
use Microsoft\Graph\Beta\Generated\Models\OnAttributeCollectionSubmitCustomExtensionHandler;
use Microsoft\Graph\Beta\Generated\Models\OnAttributeCollectionSubmitCustomExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnAttributeCollectionSubmitListener();
$requestBody->setOdataType('#microsoft.graph.onAttributeCollectionSubmitListener');
$requestBody->setPriority(500);
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$conditionsApplications->setIncludeAllApplications(false);
$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('0001111-aaaa-2222-bbbb-3333cccc4444');
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