---
title: "Update deviceComplianceScriptRunSummary"
description: "Update the properties of a deviceComplianceScriptRunSummary object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update deviceComplianceScriptRunSummary

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceComplianceScriptRunSummary](../resources/intune-devices-devicecompliancescriptrunsummary.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/deviceComplianceScripts/{deviceComplianceScriptId}/runSummary
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceComplianceScriptRunSummary](../resources/intune-devices-devicecompliancescriptrunsummary.md) object.

The following table shows the properties that are required when you create the [deviceComplianceScriptRunSummary](../resources/intune-devices-devicecompliancescriptrunsummary.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device compliance script run summary entity. This property is read-only.|
|noIssueDetectedDeviceCount|Int32|Number of devices for which the detection script did not find an issue and the device is healthy. Valid values -2147483648 to 2147483647|
|issueDetectedDeviceCount|Int32|Number of devices for which the detection script found an issue. Valid values -2147483648 to 2147483647|
|detectionScriptErrorDeviceCount|Int32|Number of devices on which the detection script execution encountered an error and did not complete. Valid values -2147483648 to 2147483647|
|detectionScriptPendingDeviceCount|Int32|Number of devices which have not yet run the latest version of the device compliance script. Valid values -2147483648 to 2147483647|
|lastScriptRunDateTime|DateTimeOffset|Last run time for the script across all devices|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceComplianceScriptRunSummary](../resources/intune-devices-devicecompliancescriptrunsummary.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceComplianceScripts/{deviceComplianceScriptId}/runSummary
Content-type: application/json
Content-length: 295

{
  "@odata.type": "#microsoft.graph.deviceComplianceScriptRunSummary",
  "noIssueDetectedDeviceCount": 10,
  "issueDetectedDeviceCount": 8,
  "detectionScriptErrorDeviceCount": 15,
  "detectionScriptPendingDeviceCount": 1,
  "lastScriptRunDateTime": "2017-01-01T00:01:17.4310553-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 344

{
  "@odata.type": "#microsoft.graph.deviceComplianceScriptRunSummary",
  "id": "dad42f14-2f14-dad4-142f-d4da142fd4da",
  "noIssueDetectedDeviceCount": 10,
  "issueDetectedDeviceCount": 8,
  "detectionScriptErrorDeviceCount": 15,
  "detectionScriptPendingDeviceCount": 1,
  "lastScriptRunDateTime": "2017-01-01T00:01:17.4310553-08:00"
}
```