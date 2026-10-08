---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EndUserSettings;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageSuggestionRelatedPeopleInsightLevel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EndUserSettings();
$requestBody->setOdataType('#microsoft.graph.endUserSettings');
$requestBody->setRelatedPeopleInsightLevel(new AccessPackageSuggestionRelatedPeopleInsightLevel('countAndNames'));
$requestBody->setShowApproverDetailsToMembers(true);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->controlConfigurations()->byControlConfigurationId('controlConfiguration-id')->put($requestBody)->wait();

```