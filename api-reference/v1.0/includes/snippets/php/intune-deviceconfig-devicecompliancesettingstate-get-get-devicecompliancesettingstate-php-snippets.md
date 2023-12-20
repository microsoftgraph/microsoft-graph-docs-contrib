---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicySettingStateSummaries()->byDeviceCompliancePolicySettingStateSummaryId('deviceCompliancePolicySettingStateSummary-id')->deviceComplianceSettingStates()->byDeviceComplianceSettingStateId('deviceComplianceSettingState-id')->get()->wait();

```