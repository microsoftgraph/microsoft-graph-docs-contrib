---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\LifecycleManagementSettings;
use Microsoft\Graph\Beta\Generated\Models\EmailSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

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

$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->settings()->patch($requestBody)->wait();

```