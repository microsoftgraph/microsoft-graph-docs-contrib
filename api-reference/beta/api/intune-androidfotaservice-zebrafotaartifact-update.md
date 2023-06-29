---
title: "Update zebraFotaArtifact"
description: "Update the properties of a zebraFotaArtifact object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update zebraFotaArtifact

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) object.

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
PATCH /deviceManagement/zebraFotaArtifacts/{zebraFotaArtifactId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) object.

The following table shows the properties that are required when you create the [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Artifact unique ID from Zebra|
|deviceModel|String|Applicable device model (e.g.: `TC8300`) |
|osVersion|String|Artifact OS version (e.g.: `8.1.0`) |
|patchVersion|String|Artifact patch version (e.g.: `U00`)|
|boardSupportPackageVersion|String|The version of the Board Support Package (BSP. E.g.: `01.18.02.00`)|
|releaseNotesUrl|String|Artifact release notes URL (e.g.: `https://www.zebra.com/<filename.pdf>`)|
|description|String|Artifact description. (e.g.: `LifeGuard Update 98 (released 24-September-2021)|



## Response
If successful, this method returns a `200 OK` response code and an updated [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/zebraFotaArtifacts/{zebraFotaArtifactId}
Content-type: application/json
Content-length: 350

{
  "@odata.type": "#microsoft.graph.zebraFotaArtifact",
  "deviceModel": "Device Model value",
  "osVersion": "Os Version value",
  "patchVersion": "Patch Version value",
  "boardSupportPackageVersion": "Board Support Package Version value",
  "releaseNotesUrl": "https://example.com/releaseNotesUrl/",
  "description": "Description value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 399

{
  "@odata.type": "#microsoft.graph.zebraFotaArtifact",
  "id": "c81cfc78-fc78-c81c-78fc-1cc878fc1cc8",
  "deviceModel": "Device Model value",
  "osVersion": "Os Version value",
  "patchVersion": "Patch Version value",
  "boardSupportPackageVersion": "Board Support Package Version value",
  "releaseNotesUrl": "https://example.com/releaseNotesUrl/",
  "description": "Description value"
}
```
