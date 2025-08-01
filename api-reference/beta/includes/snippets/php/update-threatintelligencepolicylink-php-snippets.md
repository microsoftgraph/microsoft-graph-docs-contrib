---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\ThreatIntelligencePolicyLink;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Status;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ThreatIntelligencePolicyLink();
$requestBody->setOdataType('#microsoft.graph.networkaccess.threatIntelligencePolicyLink');
$requestBody->setState(new Status('string'));
$requestBody->setVersion('String');

$result = $graphServiceClient->networkAccess()->filteringProfiles()->byFilteringProfileId('filteringProfile-id')->policies()->byPolicyLinkId('policyLink-id')->patch($requestBody)->wait();

```