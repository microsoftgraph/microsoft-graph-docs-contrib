---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\HealthMonitoring\AlertConfiguration;
use Microsoft\Graph\Beta\Generated\Models\HealthMonitoring\EmailNotificationConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AlertConfiguration();
$emailNotificationConfigurationsEmailNotificationConfiguration1 = new EmailNotificationConfiguration();
$emailNotificationConfigurationsEmailNotificationConfiguration1->setGroupId('c5140914-9507-4180-b60c-04d5ec5eddcb');
$emailNotificationConfigurationsEmailNotificationConfiguration1->setIsEnabled(true);
$emailNotificationConfigurationsArray []= $emailNotificationConfigurationsEmailNotificationConfiguration1;
$requestBody->setEmailNotificationConfigurations($emailNotificationConfigurationsArray);


$result = $graphServiceClient->reports()->healthMonitoring()->alertConfigurations()->byAlertConfigurationId('alertConfiguration-id')->patch($requestBody)->wait();

```