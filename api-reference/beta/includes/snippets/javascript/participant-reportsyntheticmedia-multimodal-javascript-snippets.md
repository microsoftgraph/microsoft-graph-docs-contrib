---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reportSyntheticMedia = {
  id: 'b2c3d4e5-f6a7-8901-bcde-f23456789012',
  detectionDateTime: '2026-03-13T21:10:00Z',
  severity: 'high',
  overallConfidence: 0.94,
  isMalicious: true,
  contentMetadata: {
    modality: 'multimodal',
    isRealTime: true,
    mimeType: 'video/mp4',
    byteSize: 0,
    duration: 20,
    audioMetadata: {
      sampleRateHz: 16000,
      bitDepth: 16,
      channels: 1
    },
    videoMetadata: {
      codec: 'H.264',
      frameRate: 30.0,
      bitrateKbps: 512
    },
    streamingMetadata: {
      latencyMs: 50,
      frameDropRate: 0.0,
      networkJitterMs: 10
    }
  },
  detections: [
    {
      modelName: 'VoiceCloneDetector-v1',
      modality: 'audio',
      modelTasks: ['voiceClone'],
      segment: {
        startTimeSec: 0,
        endTimeSec: 20,
        frameIndices: []
      },
      confidence: 0.93
    },
    {
      modelName: 'FaceSwapDetector-v3',
      modality: 'video',
      modelTasks: ['faceSwap', 'lipSync'],
      segment: {
        startTimeSec: 5,
        endTimeSec: 18,
        frameIndices: [150, 180, 210, 240]
      },
      confidence: 0.95
    }
  ]
};

await client.api('/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/participants/550fae72-d251-43ec-868c-373732c2704f/reportSyntheticMedia')
	.version('beta')
	.post(reportSyntheticMedia);

```