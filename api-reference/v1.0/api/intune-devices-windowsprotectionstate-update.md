---
title: "Update windowsProtectionState"
description: "Update the properties of a windowsProtectionState object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update windowsProtectionState

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsProtectionState](../resources/intune-devices-windowsprotectionstate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}/windowsProtectionState
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsProtectionState](../resources/intune-devices-windowsprotectionstate.md) object.

The following table shows the properties that are required when you create the [windowsProtectionState](../resources/intune-devices-windowsprotectionstate.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique Identifier for the device protection status object. This is device id of the device|
|malwareProtectionEnabled|Boolean|When TRUE indicates anti malware is enabled when FALSE indicates anti malware is not enabled.|
|deviceState|[windowsDeviceHealthState](../resources/intune-devices-windowsdevicehealthstate.md)|Indicates device's health state. Possible values are: clean, fullScanPending, rebootPending, manualStepsPending, offlineScanPending, critical. Possible values are: `clean`, `fullScanPending`, `rebootPending`, `manualStepsPending`, `offlineScanPending`, `critical`.|
|realTimeProtectionEnabled|Boolean|When TRUE indicates real time protection is enabled, when FALSE indicates real time protection is not enabled. Defaults to setting on client device.|
|networkInspectionSystemEnabled|Boolean|When TRUE indicates network inspection system enabled, when FALSE indicates network inspection system is not enabled. Defaults to setting on client device.|
|quickScanOverdue|Boolean|When TRUE indicates quick scan is overdue, when FALSE indicates quick scan is not overdue. Defaults to setting on client device.|
|fullScanOverdue|Boolean|When TRUE indicates full scan is overdue, when FALSE indicates full scan is not overdue. Defaults to setting on client device.|
|signatureUpdateOverdue|Boolean|When TRUE indicates signature is out of date, when FALSE indicates signature is not out of date. Defaults to setting on client device.|
|rebootRequired|Boolean|When TRUE indicates reboot is required, when FALSE indicates when TRUE indicates reboot is not required. Defaults to setting on client device.|
|fullScanRequired|Boolean|When TRUE indicates full scan is required, when FALSE indicates full scan is not required. Defaults to setting on client device.|
|engineVersion|String|Current endpoint protection engine's version|
|signatureVersion|String|Current malware definitions version|
|antiMalwareVersion|String|Current anti malware version|
|lastQuickScanDateTime|DateTimeOffset|Last quick scan datetime|
|lastFullScanDateTime|DateTimeOffset|Last quick scan datetime|
|lastQuickScanSignatureVersion|String|Last quick scan signature version|
|lastFullScanSignatureVersion|String|Last full scan signature version|
|lastReportedDateTime|DateTimeOffset|Last device health status reported time|
|productStatus|[windowsDefenderProductStatus](../resources/intune-devices-windowsdefenderproductstatus.md)|Product Status of Windows Defender Antivirus. Possible values are: noStatus, serviceNotRunning, serviceStartedWithoutMalwareProtection, pendingFullScanDueToThreatAction, pendingRebootDueToThreatAction, pendingManualStepsDueToThreatAction, avSignaturesOutOfDate, asSignaturesOutOfDate, noQuickScanHappenedForSpecifiedPeriod, noFullScanHappenedForSpecifiedPeriod, systemInitiatedScanInProgress, systemInitiatedCleanInProgress, samplesPendingSubmission, productRunningInEvaluationMode, productRunningInNonGenuineMode, productExpired, offlineScanRequired, serviceShutdownAsPartOfSystemShutdown, threatRemediationFailedCritically, threatRemediationFailedNonCritically, noStatusFlagsSet, platformOutOfDate, platformUpdateInProgress, platformAboutToBeOutdated, signatureOrPlatformEndOfLifeIsPastOrIsImpending, windowsSModeSignaturesInUseOnNonWin10SInstall. Possible values are: `noStatus`, `serviceNotRunning`, `serviceStartedWithoutMalwareProtection`, `pendingFullScanDueToThreatAction`, `pendingRebootDueToThreatAction`, `pendingManualStepsDueToThreatAction`, `avSignaturesOutOfDate`, `asSignaturesOutOfDate`, `noQuickScanHappenedForSpecifiedPeriod`, `noFullScanHappenedForSpecifiedPeriod`, `systemInitiatedScanInProgress`, `systemInitiatedCleanInProgress`, `samplesPendingSubmission`, `productRunningInEvaluationMode`, `productRunningInNonGenuineMode`, `productExpired`, `offlineScanRequired`, `serviceShutdownAsPartOfSystemShutdown`, `threatRemediationFailedCritically`, `threatRemediationFailedNonCritically`, `noStatusFlagsSet`, `platformOutOfDate`, `platformUpdateInProgress`, `platformAboutToBeOutdated`, `signatureOrPlatformEndOfLifeIsPastOrIsImpending`, `windowsSModeSignaturesInUseOnNonWin10SInstall`.|
|isVirtualMachine|Boolean|When TRUE indicates the device is a virtual machine, when FALSE indicates the device is not a virtual machine. Defaults to setting on client device.|
|tamperProtectionEnabled|Boolean|When TRUE indicates the Windows Defender tamper protection feature is enabled, when FALSE indicates the Windows Defender tamper protection feature is not enabled. Defaults to setting on client device.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsProtectionState](../resources/intune-devices-windowsprotectionstate.md) object in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_devices_windowsprotectionstate_update_update_windowsprotectionstate" }-->
``` http
PATCH https://graph.microsoft.com/v1.0/deviceManagement/detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}/windowsProtectionState
Content-type: application/json
Content-length: 971

{
  "@odata.type": "#microsoft.graph.windowsProtectionState",
  "malwareProtectionEnabled": true,
  "deviceState": "fullScanPending",
  "realTimeProtectionEnabled": true,
  "networkInspectionSystemEnabled": true,
  "quickScanOverdue": true,
  "fullScanOverdue": true,
  "signatureUpdateOverdue": true,
  "rebootRequired": true,
  "fullScanRequired": true,
  "engineVersion": "Engine Version value",
  "signatureVersion": "Signature Version value",
  "antiMalwareVersion": "Anti Malware Version value",
  "lastQuickScanDateTime": "2016-12-31T23:58:27.5900669-08:00",
  "lastFullScanDateTime": "2017-01-01T00:01:44.9405639-08:00",
  "lastQuickScanSignatureVersion": "Last Quick Scan Signature Version value",
  "lastFullScanSignatureVersion": "Last Full Scan Signature Version value",
  "lastReportedDateTime": "2017-01-01T00:00:17.7769392-08:00",
  "productStatus": "serviceNotRunning",
  "isVirtualMachine": true,
  "tamperProtectionEnabled": true
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-devices-windowsprotectionstate-update-update-windowsprotectionstate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.windowsProtectionState" }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1020

{
  "@odata.type": "#microsoft.graph.windowsProtectionState",
  "id": "1ac6ea5a-ea5a-1ac6-5aea-c61a5aeac61a",
  "malwareProtectionEnabled": true,
  "deviceState": "fullScanPending",
  "realTimeProtectionEnabled": true,
  "networkInspectionSystemEnabled": true,
  "quickScanOverdue": true,
  "fullScanOverdue": true,
  "signatureUpdateOverdue": true,
  "rebootRequired": true,
  "fullScanRequired": true,
  "engineVersion": "Engine Version value",
  "signatureVersion": "Signature Version value",
  "antiMalwareVersion": "Anti Malware Version value",
  "lastQuickScanDateTime": "2016-12-31T23:58:27.5900669-08:00",
  "lastFullScanDateTime": "2017-01-01T00:01:44.9405639-08:00",
  "lastQuickScanSignatureVersion": "Last Quick Scan Signature Version value",
  "lastFullScanSignatureVersion": "Last Full Scan Signature Version value",
  "lastReportedDateTime": "2017-01-01T00:00:17.7769392-08:00",
  "productStatus": "serviceNotRunning",
  "isVirtualMachine": true,
  "tamperProtectionEnabled": true
}
```
