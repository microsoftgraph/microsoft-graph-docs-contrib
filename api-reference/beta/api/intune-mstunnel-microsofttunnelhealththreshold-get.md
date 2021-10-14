---
title: "Get microsoftTunnelHealthThreshold"
description: "Read properties and relationships of the microsoftTunnelHealthThreshold object."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# Get microsoftTunnelHealthThreshold

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/microsoftTunnelHealthThresholds/{microsoftTunnelHealthThresholdId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/microsoftTunnelHealthThresholds/{microsoftTunnelHealthThresholdId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 274

{
  "value": {
    "@odata.type": "#microsoft.graph.microsoftTunnelHealthThreshold",
    "id": "419c526e-526e-419c-6e52-9c416e529c41",
    "healthyThreshold": 0,
    "unhealthyThreshold": 2,
    "defaultHealthyThreshold": 7,
    "defaultUnhealthyThreshold": 9
  }
}
```



