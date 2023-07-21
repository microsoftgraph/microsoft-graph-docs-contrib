---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AdminDynamics();
$requestBody->set@odatatype('#microsoft.graph.adminDynamics');

$customerVoice = new CustomerVoiceSettings();
$customerVoice->set@odatatype('microsoft.graph.customerVoiceSettings');

$customerVoice->setIsRestrictedSurveyAccessEnabled(false);

$customerVoice->setIsRecordIdentityByDefaultEnabled(false);

$customerVoice->setIsInOrgFormsPhishingScanEnabled(false);


$requestBody->setCustomerVoice($customerVoice);


$result = $graphServiceClient->admin()->dynamics()->patch($requestBody);


```