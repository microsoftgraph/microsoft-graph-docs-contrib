---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AdminDynamics;
use Microsoft\Graph\Generated\Models\CustomerVoiceSettings;


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