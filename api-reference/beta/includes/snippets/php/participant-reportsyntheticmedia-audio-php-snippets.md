---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\Participants\Item\ReportSyntheticMedia\ReportSyntheticMediaPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\DetectionSeverity;
use Microsoft\Graph\Beta\Generated\Models\MediaMetadata;
use Microsoft\Graph\Beta\Generated\Models\ContentModality;
use Microsoft\Graph\Beta\Generated\Models\AudioMetadata;
use Microsoft\Graph\Beta\Generated\Models\StreamingMetadata;
use Microsoft\Graph\Beta\Generated\Models\SyntheticMediaDetectionDetail;
use Microsoft\Graph\Beta\Generated\Models\MediaSegment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReportSyntheticMediaPostRequestBody();
$requestBody->setId('a1b2c3d4-e5f6-7890-abcd-ef1234567890');
$requestBody->setDetectionDateTime(new \DateTime('2026-03-13T21:00:00Z'));
$requestBody->setSeverity(new DetectionSeverity('high'));
$requestBody->setOverallConfidence(0.92);
$requestBody->setIsMalicious(true);
$contentMetadata = new MediaMetadata();
$contentMetadata->setModality(new ContentModality('audio'));
$contentMetadata->setIsRealTime(true);
$contentMetadata->setMimeType('audio/pcm');
$contentMetadata->setByteSize(0);
$contentMetadata->setDuration(15);
$contentMetadataAudioMetadata = new AudioMetadata();
$contentMetadataAudioMetadata->setSampleRateHz(16000);
$contentMetadataAudioMetadata->setBitDepth(16);
$contentMetadataAudioMetadata->setChannels(1);
$contentMetadata->setAudioMetadata($contentMetadataAudioMetadata);
$contentMetadataStreamingMetadata = new StreamingMetadata();
$contentMetadataStreamingMetadata->setLatencyMs(50);
$contentMetadataStreamingMetadata->setFrameDropRate(0);
$contentMetadataStreamingMetadata->setNetworkJitterMs(10);
$contentMetadata->setStreamingMetadata($contentMetadataStreamingMetadata);
$requestBody->setContentMetadata($contentMetadata);
$detectionsSyntheticMediaDetectionDetail1 = new SyntheticMediaDetectionDetail();
$detectionsSyntheticMediaDetectionDetail1->setModelName('DeepfakeDetector-v2');
$detectionsSyntheticMediaDetectionDetail1->setModality(new ContentModality('audio'));
$detectionsSyntheticMediaDetectionDetail1->setModelTasks(['voiceClone', 	]);
$detectionsSyntheticMediaDetectionDetail1Segment = new MediaSegment();
$detectionsSyntheticMediaDetectionDetail1Segment->setStartTimeSec(0);
$detectionsSyntheticMediaDetectionDetail1Segment->setEndTimeSec(15);
$detectionsSyntheticMediaDetectionDetail1Segment->setFrameIndices([	]);
$detectionsSyntheticMediaDetectionDetail1->setSegment($detectionsSyntheticMediaDetectionDetail1Segment);
$detectionsSyntheticMediaDetectionDetail1->setConfidence(0.95);
$detectionsArray []= $detectionsSyntheticMediaDetectionDetail1;
$requestBody->setDetections($detectionsArray);


$graphServiceClient->communications()->calls()->byCallId('call-id')->participants()->byParticipantId('participant-id')->reportSyntheticMedia()->post($requestBody)->wait();

```