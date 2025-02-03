---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\AlertRule;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\RuleSeverityType;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\RuleThreshold;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\AggregationType;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\OperatorType;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\RuleCondition;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\RelationshipType;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\ConditionCategory;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\NotificationChannel;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\NotificationChannelType;
use Microsoft\Graph\Beta\Generated\Models\DeviceManagement\NotificationReceiver;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AlertRule();
$requestBody->setSeverity(new RuleSeverityType('informational'));
$requestBody->setEnabled(true);
$threshold = new RuleThreshold();
$threshold->setAggregation(new AggregationType('count'));
$threshold->setOperator(new OperatorType('greaterOrEqual'));
$threshold->setTarget(90);
$requestBody->setThreshold($threshold);
$conditionsRuleCondition1 = new RuleCondition();
$conditionsRuleCondition1->setRelationshipType(new RelationshipType('or'));
$conditionsRuleCondition1->setConditionCategory(new ConditionCategory('azureNetworkConnectionCheckFailures'));
$conditionsRuleCondition1->setAggregation(new AggregationType('count'));
$conditionsRuleCondition1->setOperator(new OperatorType('greaterOrEqual'));
$conditionsRuleCondition1->setThresholdValue('90');
$conditionsArray []= $conditionsRuleCondition1;
$requestBody->setConditions($conditionsArray);

$notificationChannelsNotificationChannel1 = new NotificationChannel();
$notificationChannelsNotificationChannel1->setNotificationChannelType(new NotificationChannelType('portal'));
$notificationChannelsNotificationChannel1->setNotificationReceivers([]);
$notificationChannelsArray []= $notificationChannelsNotificationChannel1;
$notificationChannelsNotificationChannel2 = new NotificationChannel();
$notificationChannelsNotificationChannel2->setNotificationChannelType(new NotificationChannelType('email'));
$notificationReceiversNotificationReceiver1 = new NotificationReceiver();
$notificationReceiversNotificationReceiver1->setLocale('en-us');
$notificationReceiversNotificationReceiver1->setContactInformation('serena.davis@contoso.com');
$notificationReceiversArray []= $notificationReceiversNotificationReceiver1;
$notificationChannelsNotificationChannel2->setNotificationReceivers($notificationReceiversArray);

$notificationChannelsArray []= $notificationChannelsNotificationChannel2;
$requestBody->setNotificationChannels($notificationChannelsArray);


$result = $graphServiceClient->deviceManagement()->monitoring()->alertRules()->byAlertRuleId('alertRule-id')->patch($requestBody)->wait();

```