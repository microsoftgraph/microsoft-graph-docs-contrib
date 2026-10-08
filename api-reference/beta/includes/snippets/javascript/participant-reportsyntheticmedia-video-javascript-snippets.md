---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reportSyntheticMedia = {
  id: 'c3d4e5f6-a7b8-9012-cdef-345678901234',
  detectionDateTime: '2026-03-13T21:05:00Z',
  severity: 'high',
  overallConfidence: 0.91,
  isMalicious: true,
  contentMetadata: {
    modality: 'video',
    isRealTime: false,
    mimeType: 'video/mp4',
    byteSize: 2048000,
    duration: 30,
    videoMetadata: {
      codec: 'H.264',
      frameRate: 30.0,
      bitrateKbps: 512
    }
  },
  detections: [
    {
      modelName: 'FaceSwapDetector-v3',
      modality: 'video',
      modelTasks: ['faceSwap', 'lipSync'],
      segment: {
        startTimeSec: 0,
        endTimeSec: 0,
        frameIndices: [150, 180, 210, 240]
      },
      confidence: 0.91
    }
  ]
};

await client.api('/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/participants/550fae72-d251-43ec-868c-373732c2704f/reportSyntheticMedia')
	.version('beta')
	.post(reportSyntheticMedia);

```