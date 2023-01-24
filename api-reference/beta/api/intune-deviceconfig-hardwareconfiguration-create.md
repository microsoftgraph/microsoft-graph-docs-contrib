---
title: "Create hardwareConfiguration"
description: "Create a new hardwareConfiguration object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create hardwareConfiguration

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/hardwareConfigurations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the hardwareConfiguration object.

The following table shows the properties that are required when you create the hardwareConfiguration.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the hardware configuration|
|version|Int32|Version of the hardware configuration (E.g. 1, 2, 3 ...)|
|displayName|String|Name of the hardware configuration|
|description|String|Description of the hardware configuration|
|createdDateTime|DateTimeOffset|Timestamp of when the hardware configuration was created. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of when the hardware configuration was modified. This property is read-only.|
|fileName|String|File name of the hardware configuration|
|configurationFileContent|Binary|File content of the hardware configuration|
|hardwareConfigurationFormat|[hardwareConfigurationFormat](../resources/intune-deviceconfig-hardwareconfigurationformat.md)|Oem type of the hardware configuration (E.g. DELL, HP, Surface and SurfaceDock). Possible values are: `dell`, `surface`, `surfaceDock`.|
|roleScopeTagIds|String collection|List of Scope Tag IDs for the hardware configuration|
|perDevicePasswordDisabled|Boolean|A value indicating whether per devcive pasword disabled|



## Response
If successful, this method returns a `201 Created` response code and a [hardwareConfiguration](../resources/intune-deviceconfig-hardwareconfiguration.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/hardwareConfigurations
Content-type: application/json
Content-length: 405

{
  "@odata.type": "#microsoft.graph.hardwareConfiguration",
  "version": 7,
  "displayName": "Display Name value",
  "description": "Description value",
  "fileName": "File Name value",
  "configurationFileContent": "Y29uZmlndXJhdGlvbkZpbGVDb250ZW50",
  "hardwareConfigurationFormat": "surface",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "perDevicePasswordDisabled": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 577

{
  "@odata.type": "#microsoft.graph.hardwareConfiguration",
  "id": "da410f27-0f27-da41-270f-41da270f41da",
  "version": 7,
  "displayName": "Display Name value",
  "description": "Description value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "fileName": "File Name value",
  "configurationFileContent": "Y29uZmlndXJhdGlvbkZpbGVDb250ZW50",
  "hardwareConfigurationFormat": "surface",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "perDevicePasswordDisabled": true
}
```
