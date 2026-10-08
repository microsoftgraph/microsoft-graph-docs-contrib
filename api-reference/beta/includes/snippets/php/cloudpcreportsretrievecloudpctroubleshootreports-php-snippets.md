---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Reports\RetrieveCloudPcTroubleshootReports\RetrieveCloudPcTroubleshootReportsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPCTroubleshootReportType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetrieveCloudPcTroubleshootReportsPostRequestBody();
$requestBody->setReportName(new CloudPCTroubleshootReportType('troubleshootTenantActiveConnectionCountTrendReport'));
$requestBody->setSelect(['EventDateTime', 'TotalActiveConnectionCountAvg', 'GroupColumn', 	]);
$requestBody->setFilter('(TimeRange eq \'Last 7 days\') and (PolicyNameParam eq \'\') and (RegionParam eq \'\') and (UserSettingNameParam eq \'\') and (ServicePlanTypeParam eq \'Enterprise\') and (ServicePlanNameParam eq \'\') and (OSBuildVersionParam eq \'\') and (AADJoinTypeParam eq \'\') and (ImageNameParam eq \'\') and (GatewayRegionParam eq \'\') and (ClientOSParam eq \'\') and (ClientTypeParam eq \'\') and (TransportTypeParam eq \'\') and (CloudPCEndpointCountryRegionParam eq \'\') and (CloudPCEndpointStateParam eq \'\') and (CloudPCEndpointCityParam eq \'\')');
$requestBody->setTop(1000);
$requestBody->setSkip(0);
$requestBody->setGroupBy(['GatewayRegion', 	]);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->retrieveCloudPcTroubleshootReports()->post($requestBody)->wait();

```