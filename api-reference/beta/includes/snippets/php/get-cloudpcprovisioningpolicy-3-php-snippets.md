---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPcProvisioningPolicyRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPcProvisioningPolicyRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","description","displayName","displayName","domainJoinConfiguration","imageDisplayName","imageId","imageType","onPremisesConnectionId","windowsSettings","managedBy","cloudPcGroupDisplayName","gracePeriodInHours","localAdminEnabled","alternateResourceUrl"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->get($requestConfiguration);


```