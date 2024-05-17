---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnTokenIssuanceStartListener;
use Microsoft\Graph\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Generated\Models\AuthenticationConditionsApplications;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnTokenIssuanceStartListener();
$requestBody->setOdataType('#microsoft.graph.onTokenIssuanceStartListener');
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$conditionsApplications->setIncludeAllApplications(false);
$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$requestBody->setPriority(500);

$result = $graphServiceClient->identity()->authenticationEventListeners()->byAuthenticationEventListenerId('authenticationEventListener-id')->patch($requestBody)->wait();

```