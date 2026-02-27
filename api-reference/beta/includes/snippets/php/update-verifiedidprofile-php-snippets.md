---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdProfile;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdUsageConfiguration;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdUsageConfigurationPurpose;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VerifiedIdProfile();
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1 = new VerifiedIdUsageConfiguration();
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setIsEnabledForTestOnly(false);
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setPurpose(new VerifiedIdUsageConfigurationPurpose('recovery'));
$verifiedIdUsageConfigurationsArray []= $verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1;
$requestBody->setVerifiedIdUsageConfigurations($verifiedIdUsageConfigurationsArray);


$result = $graphServiceClient->identity()->verifiedId()->profiles()->byVerifiedIdProfileId('verifiedIdProfile-id')->patch($requestBody)->wait();

```