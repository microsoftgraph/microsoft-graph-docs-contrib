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
use Microsoft\Graph\Beta\Generated\Models\VideoMetadata;
use Microsoft\Graph\Beta\Generated\Models\StreamingMetadata;
use Microsoft\Graph\Beta\Generated\Models\SyntheticMediaDetectionDetail;
use Microsoft\Graph\Beta\Generated\Models\MediaSegment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReportSyntheticMediaPostRequestBody();
$requestBody->setId('b2c3d4e5-f6a7-8901-bcde-f23456789012');
$requestBody->setDetectionDateTime(new \DateTime('2026-03-13T21:10:00Z'));
$requestBody->setSeverity(new DetectionSeverity('high'));
$requestBody->setOverallConfidence(0.94);
$requestBody->setIsMalicious(true);
$contentMetadata = new MediaMetadata();
$contentMetadata->setModality(new ContentModality('multimodal'));
$contentMetadata->setIsRealTime(true);
$contentMetadata->setMimeType('video/mp4');
$contentMetadata->setByteSize(0);
$contentMetadata->setDuration(20);
$contentMetadataAudioMetadata = new AudioMetadata();
$contentMetadataAudioMetadata->setSampleRateHz(16000);
$contentMetadataAudioMetadata->setBitDepth(16);
$contentMetadataAudioMetadata->setChannels(1);
$contentMetadata->setAudioMetadata($contentMetadataAudioMetadata);
$contentMetadataVideoMetadata = new VideoMetadata();
$contentMetadataVideoMetadata->setCodec('H.264');
$contentMetadataVideoMetadata->setFrameRate(30);
$contentMetadataVideoMetadata->setBitrateKbps(512);
$contentMetadata->setVideoMetadata($contentMetadataVideoMetadata);
$contentMetadataStreamingMetadata = new StreamingMetadata();
$contentMetadataStreamingMetadata->setLatencyMs(50);
$contentMetadataStreamingMetadata->setFrameDropRate(0);
$contentMetadataStreamingMetadata->setNetworkJitterMs(10);
$contentMetadata->setStreamingMetadata($contentMetadataStreamingMetadata);
$requestBody->setContentMetadata($contentMetadata);
$detectionsSyntheticMediaDetectionDetail1 = new SyntheticMediaDetectionDetail();
$detectionsSyntheticMediaDetectionDetail1->setModelName('VoiceCloneDetector-v1');
$detectionsSyntheticMediaDetectionDetail1->setModality(new ContentModality('audio'));
$detectionsSyntheticMediaDetectionDetail1->setModelTasks(['voiceClone', 	]);
$detectionsSyntheticMediaDetectionDetail1Segment = new MediaSegment();
$detectionsSyntheticMediaDetectionDetail1Segment->setStartTimeSec(0);
$detectionsSyntheticMediaDetectionDetail1Segment->setEndTimeSec(20);
$detectionsSyntheticMediaDetectionDetail1Segment->setFrameIndices([	]);
$detectionsSyntheticMediaDetectionDetail1->setSegment($detectionsSyntheticMediaDetectionDetail1Segment);
$detectionsSyntheticMediaDetectionDetail1->setConfidence(0.93);
$detectionsArray []= $detectionsSyntheticMediaDetectionDetail1;
$detectionsSyntheticMediaDetectionDetail2 = new SyntheticMediaDetectionDetail();
$detectionsSyntheticMediaDetectionDetail2->setModelName('FaceSwapDetector-v3');
$detectionsSyntheticMediaDetectionDetail2->setModality(new ContentModality('video'));
$detectionsSyntheticMediaDetectionDetail2->setModelTasks(['faceSwap', 'lipSync', 	]);
$detectionsSyntheticMediaDetectionDetail2Segment = new MediaSegment();
$detectionsSyntheticMediaDetectionDetail2Segment->setStartTimeSec(5);
$detectionsSyntheticMediaDetectionDetail2Segment->setEndTimeSec(18);
$detectionsSyntheticMediaDetectionDetail2Segment->setFrameIndices([150,180,210,240,	]);
$detectionsSyntheticMediaDetectionDetail2->setSegment($detectionsSyntheticMediaDetectionDetail2Segment);
$detectionsSyntheticMediaDetectionDetail2->setConfidence(0.95);
$detectionsArray []= $detectionsSyntheticMediaDetectionDetail2;
$requestBody->setDetections($detectionsArray);


$graphServiceClient->communications()->calls()->byCallId('call-id')->participants()->byParticipantId('participant-id')->reportSyntheticMedia()->post($requestBody)->wait();

```