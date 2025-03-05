---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Reports\RetrieveCloudPcTenantMetricsReport\RetrieveCloudPcTenantMetricsReportPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPCPerformanceReportName;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetrieveCloudPcTenantMetricsReportPostRequestBody();
$requestBody->setReportName(new CloudPCPerformanceReportName('cloudPcInsightReport'));
$requestBody->setFilter('');
$requestBody->setSelect(['ManagedDeviceName', 'DeviceId', 'ClientOS', 'ClientVersion', 'MultimediaRedirectVersion', 'TeamsClientVersion', 'HostOSVersion', 'HostSxSStackVersion', 'HostAgentVersion', 'PolicyName', 'UserSettingName', 'HostRegion', 'AzureNetworkConnectName', 	]);
$requestBody->setSearch('');
$requestBody->setSkip(0);
$requestBody->setTop(50);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->retrieveCloudPcTenantMetricsReport()->post($requestBody)->wait();

```