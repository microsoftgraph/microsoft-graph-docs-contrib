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
use Microsoft\Graph\Beta\Generated\Models\VideoMetadata;
use Microsoft\Graph\Beta\Generated\Models\SyntheticMediaDetectionDetail;
use Microsoft\Graph\Beta\Generated\Models\MediaSegment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReportSyntheticMediaPostRequestBody();
$requestBody->setId('c3d4e5f6-a7b8-9012-cdef-345678901234');
$requestBody->setDetectionDateTime(new \DateTime('2026-03-13T21:05:00Z'));
$requestBody->setSeverity(new DetectionSeverity('high'));
$requestBody->setOverallConfidence(0.91);
$requestBody->setIsMalicious(true);
$contentMetadata = new MediaMetadata();
$contentMetadata->setModality(new ContentModality('video'));
$contentMetadata->setIsRealTime(false);
$contentMetadata->setMimeType('video/mp4');
$contentMetadata->setByteSize(2048000);
$contentMetadata->setDuration(30);
$contentMetadataVideoMetadata = new VideoMetadata();
$contentMetadataVideoMetadata->setCodec('H.264');
$contentMetadataVideoMetadata->setFrameRate(30);
$contentMetadataVideoMetadata->setBitrateKbps(512);
$contentMetadata->setVideoMetadata($contentMetadataVideoMetadata);
$requestBody->setContentMetadata($contentMetadata);
$detectionsSyntheticMediaDetectionDetail1 = new SyntheticMediaDetectionDetail();
$detectionsSyntheticMediaDetectionDetail1->setModelName('FaceSwapDetector-v3');
$detectionsSyntheticMediaDetectionDetail1->setModality(new ContentModality('video'));
$detectionsSyntheticMediaDetectionDetail1->setModelTasks(['faceSwap', 'lipSync', 	]);
$detectionsSyntheticMediaDetectionDetail1Segment = new MediaSegment();
$detectionsSyntheticMediaDetectionDetail1Segment->setStartTimeSec(0);
$detectionsSyntheticMediaDetectionDetail1Segment->setEndTimeSec(0);
$detectionsSyntheticMediaDetectionDetail1Segment->setFrameIndices([150,180,210,240,	]);
$detectionsSyntheticMediaDetectionDetail1->setSegment($detectionsSyntheticMediaDetectionDetail1Segment);
$detectionsSyntheticMediaDetectionDetail1->setConfidence(0.91);
$detectionsArray []= $detectionsSyntheticMediaDetectionDetail1;
$requestBody->setDetections($detectionsArray);


$graphServiceClient->communications()->calls()->byCallId('call-id')->participants()->byParticipantId('participant-id')->reportSyntheticMedia()->post($requestBody)->wait();

```