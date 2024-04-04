---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->attackSimulation()->trainingCampaigns()->byTrainingCampaignId('trainingCampaign-id')->delete()->wait();

```