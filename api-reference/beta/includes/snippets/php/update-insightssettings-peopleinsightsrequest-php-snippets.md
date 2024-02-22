---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InsightsSettings();
$requestBody->setIsEnabledInOrganization(true);
$requestBody->setDisabledForGroup('edbfe4fb-ec70-4300-928f-dbb2ae86c981');

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->settings()->peopleInsights()->patch($requestBody)->wait();

```