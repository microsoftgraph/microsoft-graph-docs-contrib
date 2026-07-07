---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EndUserSettings;
use Microsoft\Graph\Generated\Models\AccessPackageSuggestionRelatedPeopleInsightLevel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EndUserSettings();
$requestBody->setOdataType('#microsoft.graph.endUserSettings');
$requestBody->setRelatedPeopleInsightLevel(new AccessPackageSuggestionRelatedPeopleInsightLevel('countAndNames'));
$requestBody->setShowApproverDetailsToMembers(true);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->controlConfigurations()->byControlConfigurationId('controlConfiguration-id')->put($requestBody)->wait();

```