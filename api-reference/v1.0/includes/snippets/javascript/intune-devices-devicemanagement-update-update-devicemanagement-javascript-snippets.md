---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceManagement = {
  '@odata.type': '#microsoft.graph.deviceManagement',
  subscriptionState: 'active',
  deviceProtectionOverview: {
    '@odata.type': 'microsoft.graph.deviceProtectionOverview',
    totalReportedDeviceCount: 8,
    inactiveThreatAgentDeviceCount: 14,
    unknownStateThreatAgentDeviceCount: 2,
    pendingSignatureUpdateDeviceCount: 1,
    cleanDeviceCount: 0,
    pendingFullScanDeviceCount: 10,
    pendingRestartDeviceCount: 9,
    pendingManualStepsDeviceCount: 13,
    pendingOfflineScanDeviceCount: 13,
    criticalFailuresDeviceCount: 11,
    pendingQuickScanDeviceCount: 11
  },
  windowsMalwareOverview: {
    '@odata.type': 'microsoft.graph.windowsMalwareOverview',
    malwareDetectedDeviceCount: 10,
    totalMalwareCount: 1,
    totalDistinctMalwareCount: 9,
    malwareStateSummary: [
      {
        '@odata.type': 'microsoft.graph.windowsMalwareStateCount',
        state: 'actionFailed',
        deviceCount: 11,
        malwareDetectionCount: 5,
        distinctMalwareCount: 4,
        lastUpdateDateTime: '2016-12-31T23:58:21.6459442-08:00'
      }
    ],
    malwareSeveritySummary: [
      {
        '@odata.type': 'microsoft.graph.windowsMalwareSeverityCount',
        severity: 'low',
        malwareDetectionCount: 5,
        distinctMalwareCount: 4,
        lastUpdateDateTime: '2016-12-31T23:58:21.6459442-08:00'
      }
    ],
    malwareExecutionStateSummary: [
      {
        '@odata.type': 'microsoft.graph.windowsMalwareExecutionStateCount',
        executionState: 'blocked',
        deviceCount: 11,
        lastUpdateDateTime: '2016-12-31T23:58:21.6459442-08:00'
      }
    ],
    malwareCategorySummary: [
      {
        '@odata.type': 'microsoft.graph.windowsMalwareCategoryCount',
        category: 'adware',
        deviceCount: 11,
        activeMalwareDetectionCount: 11,
        distinctActiveMalwareCount: 10,
        lastUpdateDateTime: '2016-12-31T23:58:21.6459442-08:00'
      }
    ],
    malwareNameSummary: [
      {
        '@odata.type': 'microsoft.graph.windowsMalwareNameCount',
        malwareIdentifier: 'Malware Identifier value',
        name: 'Name value',
        deviceCount: 11,
        lastUpdateDateTime: '2016-12-31T23:58:21.6459442-08:00'
      }
    ],
    osVersionsSummary: [
      {
        '@odata.type': 'microsoft.graph.osVersionCount',
        osVersion: 'Os Version value',
        deviceCount: 11,
        lastUpdateDateTime: '2016-12-31T23:58:21.6459442-08:00'
      }
    ]
  }
};

await client.api('/deviceManagement')
	.update(deviceManagement);

```