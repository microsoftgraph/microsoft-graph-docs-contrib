---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AdminDynamics;
use Microsoft\Graph\Beta\Generated\Models\CustomerVoiceSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdminDynamics();
$requestBody->setOdataType('#microsoft.graph.adminDynamics');
$customerVoice = new CustomerVoiceSettings();
$customerVoice->setOdataType('microsoft.graph.customerVoiceSettings');
$customerVoice->setIsRestrictedSurveyAccessEnabled(false);
$customerVoice->setIsRecordIdentityByDefaultEnabled(false);
$customerVoice->setIsInOrgFormsPhishingScanEnabled(false);
$requestBody->setCustomerVoice($customerVoice);

$result = $graphServiceClient->admin()->dynamics()->patch($requestBody)->wait();

```