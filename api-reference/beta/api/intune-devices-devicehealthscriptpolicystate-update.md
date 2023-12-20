---
title: "Update deviceHealthScriptPolicyState"
description: "Update the properties of a deviceHealthScriptPolicyState object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceHealthScriptPolicyState

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/deviceHealthScriptStates/{deviceHealthScriptPolicyStateId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) object.

The following table shows the properties that are required when you create the [deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device health script policy state is a concatenation of the MT sideCar policy Id and Intune device Id|
|deviceId|String|The Intune device Id|
|policyId|String|The MT sideCar policy Id|
|deviceName|String|Display name of the device|
|policyName|String|Display name of the device health script|
|userName|String|Name of the user whom ran the device health script|
|osVersion|String|Value of the OS Version in string|
|detectionState|[runState](../resources/intune-shared-runstate.md)|Detection state from the lastest device health script execution. Possible values are: `unknown`, `success`, `fail`, `scriptError`, `pending`, `notApplicable`.|
|lastStateUpdateDateTime|DateTimeOffset|The last timestamp of when the device health script executed|
|expectedStateUpdateDateTime|DateTimeOffset|The next timestamp of when the device health script is expected to execute|
|lastSyncDateTime|DateTimeOffset|The last time that Intune Managment Extension synced with Intune|
|preRemediationDetectionScriptOutput|String|Output of the detection script before remediation|
|preRemediationDetectionScriptError|String|Error from the detection script before remediation|
|remediationScriptError|String|Error output of the remediation script|
|postRemediationDetectionScriptOutput|String|Detection script output after remediation|
|postRemediationDetectionScriptError|String|Error from the detection script after remediation|
|remediationState|[remediationState](../resources/intune-devices-remediationstate.md)|Remediation state from the lastest device health script execution. Possible values are: `unknown`, `skipped`, `success`, `remediationFailed`, `scriptError`, `unknownFutureValue`.|
|assignmentFilterIds|String collection|A list of the assignment filter ids used for health script applicability evaluation|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceHealthScriptPolicyState](../resources/intune-devices-devicehealthscriptpolicystate.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/deviceHealthScriptStates/{deviceHealthScriptPolicyStateId}
Content-type: application/json
Content-length: 1045

{
  "@odata.type": "#microsoft.graph.deviceHealthScriptPolicyState",
  "deviceId": "Device Id value",
  "policyId": "Policy Id value",
  "deviceName": "Device Name value",
  "policyName": "Policy Name value",
  "userName": "User Name value",
  "osVersion": "Os Version value",
  "detectionState": "success",
  "lastStateUpdateDateTime": "2017-01-01T00:02:58.4418045-08:00",
  "expectedStateUpdateDateTime": "2016-12-31T23:58:26.9294641-08:00",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "preRemediationDetectionScriptOutput": "Pre Remediation Detection Script Output value",
  "preRemediationDetectionScriptError": "Pre Remediation Detection Script Error value",
  "remediationScriptError": "Remediation Script Error value",
  "postRemediationDetectionScriptOutput": "Post Remediation Detection Script Output value",
  "postRemediationDetectionScriptError": "Post Remediation Detection Script Error value",
  "remediationState": "skipped",
  "assignmentFilterIds": [
    "Assignment Filter Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1094

{
  "@odata.type": "#microsoft.graph.deviceHealthScriptPolicyState",
  "id": "e7697881-7881-e769-8178-69e7817869e7",
  "deviceId": "Device Id value",
  "policyId": "Policy Id value",
  "deviceName": "Device Name value",
  "policyName": "Policy Name value",
  "userName": "User Name value",
  "osVersion": "Os Version value",
  "detectionState": "success",
  "lastStateUpdateDateTime": "2017-01-01T00:02:58.4418045-08:00",
  "expectedStateUpdateDateTime": "2016-12-31T23:58:26.9294641-08:00",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "preRemediationDetectionScriptOutput": "Pre Remediation Detection Script Output value",
  "preRemediationDetectionScriptError": "Pre Remediation Detection Script Error value",
  "remediationScriptError": "Remediation Script Error value",
  "postRemediationDetectionScriptOutput": "Post Remediation Detection Script Output value",
  "postRemediationDetectionScriptError": "Post Remediation Detection Script Error value",
  "remediationState": "skipped",
  "assignmentFilterIds": [
    "Assignment Filter Ids value"
  ]
}
```
