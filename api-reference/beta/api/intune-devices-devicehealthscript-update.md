---
title: "Update deviceHealthScript"
description: "Update the properties of a deviceHealthScript object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update deviceHealthScript

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
PATCH /deviceManagement/deviceHealthScripts/{deviceHealthScriptId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object.

The following table shows the properties that are required when you create the [deviceHealthScript](../resources/intune-devices-devicehealthscript.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device health script|
|publisher|String|Name of the device health script publisher|
|version|String|Version of the device health script|
|displayName|String|Name of the device health script|
|description|String|Description of the device health script|
|detectionScriptContent|Binary|The entire content of the detection powershell script|
|remediationScriptContent|Binary|The entire content of the remediation powershell script|
|createdDateTime|DateTimeOffset|The timestamp of when the device health script was created. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of when the device health script was modified. This property is read-only.|
|runAsAccount|[runAsAccountType](../resources/intune-shared-runasaccounttype.md)|Indicates the type of execution context. Possible values are: `system`, `user`.|
|enforceSignatureCheck|Boolean|Indicate whether the script signature needs be checked|
|runAs32Bit|Boolean|Indicate whether PowerShell script(s) should run as 32-bit|
|roleScopeTagIds|String collection|List of Scope Tag IDs for the device health script|
|isGlobalScript|Boolean|Determines if this is Microsoft Proprietary Script. Proprietary scripts are read-only|
|highestAvailableVersion|String|Highest available version for a Microsoft Proprietary script|
|deviceHealthScriptType|[deviceHealthScriptType](../resources/intune-devices-devicehealthscripttype.md)|DeviceHealthScriptType for the script policy. Possible values are: `deviceHealthScript`, `managedInstallerScript`.|
|detectionScriptParameters|[deviceHealthScriptParameter](../resources/intune-devices-devicehealthscriptparameter.md) collection|List of ComplexType DetectionScriptParameters objects.|
|remediationScriptParameters|[deviceHealthScriptParameter](../resources/intune-devices-devicehealthscriptparameter.md) collection|List of ComplexType RemediationScriptParameters objects.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceHealthScripts/{deviceHealthScriptId}
Content-type: application/json
Content-length: 1276

{
  "@odata.type": "#microsoft.graph.deviceHealthScript",
  "publisher": "Publisher value",
  "version": "Version value",
  "displayName": "Display Name value",
  "description": "Description value",
  "detectionScriptContent": "ZGV0ZWN0aW9uU2NyaXB0Q29udGVudA==",
  "remediationScriptContent": "cmVtZWRpYXRpb25TY3JpcHRDb250ZW50",
  "runAsAccount": "user",
  "enforceSignatureCheck": true,
  "runAs32Bit": true,
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "isGlobalScript": true,
  "highestAvailableVersion": "Highest Available Version value",
  "deviceHealthScriptType": "managedInstallerScript",
  "detectionScriptParameters": [
    {
      "@odata.type": "microsoft.graph.deviceHealthScriptStringParameter",
      "name": "Name value",
      "description": "Description value",
      "isRequired": true,
      "applyDefaultValueWhenNotAssigned": true,
      "defaultValue": "Default Value value"
    }
  ],
  "remediationScriptParameters": [
    {
      "@odata.type": "microsoft.graph.deviceHealthScriptStringParameter",
      "name": "Name value",
      "description": "Description value",
      "isRequired": true,
      "applyDefaultValueWhenNotAssigned": true,
      "defaultValue": "Default Value value"
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1448

{
  "@odata.type": "#microsoft.graph.deviceHealthScript",
  "id": "bcb60502-0502-bcb6-0205-b6bc0205b6bc",
  "publisher": "Publisher value",
  "version": "Version value",
  "displayName": "Display Name value",
  "description": "Description value",
  "detectionScriptContent": "ZGV0ZWN0aW9uU2NyaXB0Q29udGVudA==",
  "remediationScriptContent": "cmVtZWRpYXRpb25TY3JpcHRDb250ZW50",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "runAsAccount": "user",
  "enforceSignatureCheck": true,
  "runAs32Bit": true,
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "isGlobalScript": true,
  "highestAvailableVersion": "Highest Available Version value",
  "deviceHealthScriptType": "managedInstallerScript",
  "detectionScriptParameters": [
    {
      "@odata.type": "microsoft.graph.deviceHealthScriptStringParameter",
      "name": "Name value",
      "description": "Description value",
      "isRequired": true,
      "applyDefaultValueWhenNotAssigned": true,
      "defaultValue": "Default Value value"
    }
  ],
  "remediationScriptParameters": [
    {
      "@odata.type": "microsoft.graph.deviceHealthScriptStringParameter",
      "name": "Name value",
      "description": "Description value",
      "isRequired": true,
      "applyDefaultValueWhenNotAssigned": true,
      "defaultValue": "Default Value value"
    }
  ]
}
```