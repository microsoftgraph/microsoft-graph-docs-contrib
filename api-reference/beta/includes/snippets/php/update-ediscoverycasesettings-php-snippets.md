---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\EdiscoveryCaseSettings;
use Microsoft\Graph\Beta\Generated\Models\Security\RedundancyDetectionSettings;
use Microsoft\Graph\Beta\Generated\Models\Security\TopicModelingSettings;
use Microsoft\Graph\Beta\Generated\Models\Security\OcrSettings;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseType;
use Microsoft\Graph\Beta\Generated\Models\Security\ReviewSetSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryCaseSettings();
$requestBody->setOdataType('https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases(\'b0073e4e-4184-41c6-9eb7-8c8cc3e2288b\')/settings/$entity');
$redundancyDetection = new RedundancyDetectionSettings();
$redundancyDetection->setIsEnabled(true);
$redundancyDetection->setSimilarityThreshold(65);
$redundancyDetection->setMinWords(10);
$redundancyDetection->setMaxWords(500000);
$requestBody->setRedundancyDetection($redundancyDetection);
$topicModeling = new TopicModelingSettings();
$topicModeling->setIsEnabled(false);
$topicModeling->setIgnoreNumbers(true);
$topicModeling->setTopicCount(100);
$topicModeling->setDynamicallyAdjustTopicCount(true);
$requestBody->setTopicModeling($topicModeling);
$ocr = new OcrSettings();
$ocr->setIsEnabled(false);
$ocr->setMaxImageSize(24576);
$ocr->setTimeout(new \DateInterval('PT1M'));
$requestBody->setOcr($ocr);
$requestBody->setCaseType(new CaseType('standard'));
$requestBody->setReviewSetSettings(new ReviewSetSettings('disableGrouping'));

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->settings()->patch($requestBody)->wait();

```