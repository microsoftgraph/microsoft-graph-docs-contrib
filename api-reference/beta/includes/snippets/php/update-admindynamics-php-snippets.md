---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdminDynamics();
$requestBody->setOdataType('#microsoft.graph.adminDynamics');

$customerVoice = new CustomerVoiceSettings();
$customerVoice->setOdataType('microsoft.graph.customerVoiceSettings');

$customerVoice->setIsRestrictedSurveyAccessEnabled(false);

$customerVoice->setIsRecordIdentityByDefaultEnabled(false);

$customerVoice->setIsInOrgFormsPhishingScanEnabled(false);


$requestBody->setCustomerVoice($customerVoice);


$result = $graphServiceClient->admin()->dynamics()->patch($requestBody);


```