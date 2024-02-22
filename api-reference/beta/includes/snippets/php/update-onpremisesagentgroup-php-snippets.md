---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPremisesAgentGroup();
$requestBody->setDisplayName('Group New Name');

$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->agentGroups()->byOnPremisesAgentGroupId('onPremisesAgentGroup-id')->patch($requestBody)->wait();

```