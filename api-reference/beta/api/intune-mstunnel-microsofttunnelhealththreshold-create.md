---
title: "Create microsoftTunnelHealthThreshold"
description: "Create a new microsoftTunnelHealthThreshold object."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# Create microsoftTunnelHealthThreshold

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/microsoftTunnelHealthThresholds
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the microsoftTunnelHealthThreshold object.

The following table shows the properties that are required when you create the microsoftTunnelHealthThreshold.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The metric name|
|healthyThreshold|Int64|The threshold for being healthy|
|unhealthyThreshold|Int64|The threshold for being unhealthy|
|defaultHealthyThreshold|Int64|The default threshold for being healthy|
|defaultUnhealthyThreshold|Int64|The default threshold for being unhealthy|



## Response
If successful, this method returns a `201 Created` response code and a [microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/microsoftTunnelHealthThresholds
Content-type: application/json
Content-length: 194

{
  "@odata.type": "#microsoft.graph.microsoftTunnelHealthThreshold",
  "healthyThreshold": 0,
  "unhealthyThreshold": 2,
  "defaultHealthyThreshold": 7,
  "defaultUnhealthyThreshold": 9
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 243

{
  "@odata.type": "#microsoft.graph.microsoftTunnelHealthThreshold",
  "id": "419c526e-526e-419c-6e52-9c416e529c41",
  "healthyThreshold": 0,
  "unhealthyThreshold": 2,
  "defaultHealthyThreshold": 7,
  "defaultUnhealthyThreshold": 9
}
```



