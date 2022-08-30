---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->publishedResources()->byPublishedResourceId('publishedResource-id')->agentGroups()->byOnPremisesAgentGroupId('onPremisesAgentGroup-id')->ref()->delete()->wait();

```