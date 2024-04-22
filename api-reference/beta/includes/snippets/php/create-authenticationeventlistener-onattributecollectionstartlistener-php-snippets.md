---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnAttributeCollectionStartListener;
use Microsoft\Graph\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Generated\Models\AuthenticationConditionApplication;
use Microsoft\Graph\Generated\Models\OnAttributeCollectionStartCustomExtensionHandler;
use Microsoft\Graph\Generated\Models\OnAttributeCollectionStartCustomExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnAttributeCollectionStartListener();
$requestBody->setOdataType('#microsoft.graph.onAttributeCollectionStartListener');
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
$handler = new OnAttributeCollectionStartCustomExtensionHandler();
$handler->setOdataType('#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler');
$handlerCustomExtension = new OnAttributeCollectionStartCustomExtension();
$handlerCustomExtension->setId('2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02');
$handler->setCustomExtension($handlerCustomExtension);
$requestBody->setHandler($handler);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```