---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const windowsProtectionState = {
  '@odata.type': '#microsoft.graph.windowsProtectionState',
  malwareProtectionEnabled: true,
  deviceState: 'fullScanPending',
  realTimeProtectionEnabled: true,
  networkInspectionSystemEnabled: true,
  quickScanOverdue: true,
  fullScanOverdue: true,
  signatureUpdateOverdue: true,
  rebootRequired: true,
  fullScanRequired: true,
  engineVersion: 'Engine Version value',
  signatureVersion: 'Signature Version value',
  antiMalwareVersion: 'Anti Malware Version value',
  lastQuickScanDateTime: '2016-12-31T23:58:27.5900669-08:00',
  lastFullScanDateTime: '2017-01-01T00:01:44.9405639-08:00',
  lastQuickScanSignatureVersion: 'Last Quick Scan Signature Version value',
  lastFullScanSignatureVersion: 'Last Full Scan Signature Version value',
  lastReportedDateTime: '2017-01-01T00:00:17.7769392-08:00',
  productStatus: 'serviceNotRunning',
  isVirtualMachine: true,
  tamperProtectionEnabled: true
};

await client.api('/deviceManagement/detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}/windowsProtectionState')
	.update(windowsProtectionState);

```