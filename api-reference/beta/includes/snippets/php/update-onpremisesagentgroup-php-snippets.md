---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnPremisesAgentGroup;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPremisesAgentGroup();
$requestBody->setDisplayName('Group New Name');

$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->agentGroups()->byOnPremisesAgentGroupId('onPremisesAgentGroup-id')->patch($requestBody)->wait();

```