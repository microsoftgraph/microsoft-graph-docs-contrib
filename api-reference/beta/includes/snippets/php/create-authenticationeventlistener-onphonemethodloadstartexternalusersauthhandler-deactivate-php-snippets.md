---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OnPhoneMethodLoadStartListener;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionApplication;
use Microsoft\Graph\Beta\Generated\Models\OnPhoneMethodLoadStartExternalUsersAuthHandler;
use Microsoft\Graph\Beta\Generated\Models\PhoneOptions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPhoneMethodLoadStartListener();
$requestBody->setOdataType('#microsoft.graph.onPhoneMethodLoadStartListener');
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$conditionsApplications->setIncludeApplications(['3dfff01b-0afb-4a07-967f-d1ccbd81102a', 	]);
$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$requestBody->setPriority(500);
$handler = new OnPhoneMethodLoadStartExternalUsersAuthHandler();
$handler->setOdataType('#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler');
$handlerSmsOptions = new PhoneOptions();
$handlerSmsOptions->setIncludeAdditionalRegions([	]);
$handlerSmsOptions->setExcludeRegions([1001,99,777,	]);
$handler->setSmsOptions($handlerSmsOptions);
$requestBody->setHandler($handler);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```