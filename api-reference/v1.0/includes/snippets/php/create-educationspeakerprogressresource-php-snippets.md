---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationAssignmentResource;
use Microsoft\Graph\Generated\Models\EducationSpeakerProgressResource;
use Microsoft\Graph\Generated\Models\EducationSpeakerCoachSettings;
use Microsoft\Graph\Generated\Models\EducationSpeakerCoachDeliverySettings;
use Microsoft\Graph\Generated\Models\EducationAiFeedbackCriteria;
use Microsoft\Graph\Generated\Models\EducationSpeechType;
use Microsoft\Graph\Generated\Models\EducationAiFeedbackSettings;
use Microsoft\Graph\Generated\Models\EducationAiFeedbackDeliverySettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentResource();
$requestBody->setDistributeForStudentWork(true);
$resource = new EducationSpeakerProgressResource();
$resource->setOdataType('microsoft.graph.educationSpeakerProgressResource');
$resource->setDisplayName('speakerProgressTestResource');
$resource->setRecordingTimeLimitInMinutes(5);
$resource->setShowRehearsalReportToStudentBeforeMediaUpload(true);
$resource->setMaxRecordingAttempts(1);
$resource->setIsVideoRequired(true);
$resource->setIsAiFeedbackEnabled(true);
$resource->setPresentationTitle('speakerProgressTestResource');
$resource->setSpokenLanguageLocale('en-US');
$resourceSpeakerCoachSettings = new EducationSpeakerCoachSettings();
$resourceSpeakerCoachSettingsDeliverySettings = new EducationSpeakerCoachDeliverySettings();
$resourceSpeakerCoachSettingsDeliverySettings->setIsPronunciationEnabled(true);
$resourceSpeakerCoachSettings->setDeliverySettings($resourceSpeakerCoachSettingsDeliverySettings);
$resource->setSpeakerCoachSettings($resourceSpeakerCoachSettings);
$resourceAiFeedbackCriteria = new EducationAiFeedbackCriteria();
$resourceAiFeedbackCriteria->setSpeechType(new EducationSpeechType('informative'));
$resourceAiFeedbackCriteriaAiFeedbackSettings = new EducationAiFeedbackSettings();
$resourceAiFeedbackCriteriaAiFeedbackSettingsDeliverySettings = new EducationAiFeedbackDeliverySettings();
$resourceAiFeedbackCriteriaAiFeedbackSettingsDeliverySettings->setIsStyleEnabled(true);
$resourceAiFeedbackCriteriaAiFeedbackSettings->setDeliverySettings($resourceAiFeedbackCriteriaAiFeedbackSettingsDeliverySettings);
$resourceAiFeedbackCriteria->setAiFeedbackSettings($resourceAiFeedbackCriteriaAiFeedbackSettings);
$resource->setAiFeedbackCriteria($resourceAiFeedbackCriteria);
$requestBody->setResource($resource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->resources()->post($requestBody)->wait();

```