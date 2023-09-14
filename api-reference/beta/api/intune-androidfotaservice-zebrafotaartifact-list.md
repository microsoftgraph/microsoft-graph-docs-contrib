---
title: "List zebraFotaArtifacts"
description: "List properties and relationships of the zebraFotaArtifact objects."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# List zebraFotaArtifacts

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) objects.

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
GET /deviceManagement/zebraFotaArtifacts
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/zebraFotaArtifacts
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 464

{
  "value": [
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
  ]
}
```
