---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OnAttributeCollectionStartListener;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionApplication;
use Microsoft\Graph\Beta\Generated\Models\OnAttributeCollectionStartCustomExtensionHandler;
use Microsoft\Graph\Beta\Generated\Models\OnAttributeCollectionStartCustomExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnAttributeCollectionStartListener();
$requestBody->setOdataType('#microsoft.graph.onAttributeCollectionStartListener');
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
$handler = new OnAttributeCollectionStartCustomExtensionHandler();
$handler->setOdataType('#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler');
$handlerCustomExtension = new OnAttributeCollectionStartCustomExtension();
$handlerCustomExtension->setId('2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02');
$handler->setCustomExtension($handlerCustomExtension);
$requestBody->setHandler($handler);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```