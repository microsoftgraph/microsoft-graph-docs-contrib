---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LifecycleManagementSettings();
$requestBody->setWorkflowScheduleIntervalInHours(3);

$emailSettings = new EmailSettings();
$emailSettings->setSenderDomain('ContosoIndustries.net');

$emailSettings->setUseCompanyBranding(true);


$requestBody->setEmailSettings($emailSettings);
$additionalData = [
		'@odata.context' => 'https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->settings()->patch($requestBody);


```