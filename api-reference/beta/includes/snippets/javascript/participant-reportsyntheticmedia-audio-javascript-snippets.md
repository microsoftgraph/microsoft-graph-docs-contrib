---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reportSyntheticMedia = {
  id: 'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
  detectionDateTime: '2026-03-13T21:00:00Z',
  severity: 'high',
  overallConfidence: 0.92,
  isMalicious: true,
  contentMetadata: {
    modality: 'audio',
    isRealTime: true,
    mimeType: 'audio/pcm',
    byteSize: 0,
    duration: 15,
    audioMetadata: {
      sampleRateHz: 16000,
      bitDepth: 16,
      channels: 1
    },
    streamingMetadata: {
      latencyMs: 50,
      frameDropRate: 0.0,
      networkJitterMs: 10
    }
  },
  detections: [
    {
      modelName: 'DeepfakeDetector-v2',
      modality: 'audio',
      modelTasks: ['voiceClone'],
      segment: {
        startTimeSec: 0,
        endTimeSec: 15,
        frameIndices: []
      },
      confidence: 0.95
    }
  ]
};

await client.api('/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/participants/550fae72-d251-43ec-868c-373732c2704f/reportSyntheticMedia')
	.version('beta')
	.post(reportSyntheticMedia);

```