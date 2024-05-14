---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->agents()->byOnPremisesAgentId('onPremisesAgent-id')->agentGroups()->byOnPremisesAgentGroupId('onPremisesAgentGroup-id')->ref()->delete()->wait();

```