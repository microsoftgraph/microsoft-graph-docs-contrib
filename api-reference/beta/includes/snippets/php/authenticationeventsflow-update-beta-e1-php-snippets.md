---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExternalUsersSelfServiceSignUpEventsFlow;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalUsersSelfServiceSignUpEventsFlow();
$requestBody->setOdataType('#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow');
$requestBody->setDisplayName('New user flow description');
$requestBody->setPriority(200);

$result = $graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->patch($requestBody)->wait();

```