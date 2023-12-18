---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->planConfiguration()->localizations()->byPlannerPlanConfigurationLocalizationId('plannerPlanConfigurationLocalization-id')->delete()->wait();

```