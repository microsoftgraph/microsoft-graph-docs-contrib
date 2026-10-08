---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\ExternalPartners\Item\ConfigureAgent\ConfigureAgentPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPcExternalPartnerAgentSetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConfigureAgentPostRequestBody();
$agentSetting = new CloudPcExternalPartnerAgentSetting();
$agentSetting->setAgentUrl('https://rmmExample.microsoft.com/agent/rmmExampleAgent.msi');
$agentSetting->setAgentSha256('EC6AF1EA0367D16DDE6639A89A080A524CEBC4D4BEDFE00ED0CAC4B865A918D8');
$agentSetting->setInstallParameters(['/quiet', '/norestart', 'TOKENID=e69c1577-d465-4e57-af33-0ddea43feeb1', 	]);
$agentSetting->setAutoDeploymentEnabled(true);
$requestBody->setAgentSetting($agentSetting);

$graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartners()->byCloudPcExternalPartnerId('cloudPcExternalPartner-id')->configureAgent()->post($requestBody)->wait();

```