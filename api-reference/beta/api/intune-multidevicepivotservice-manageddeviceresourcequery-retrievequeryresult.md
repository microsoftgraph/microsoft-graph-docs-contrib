---
title: "retrieveQueryResult action"
description: "Intune Multidevicepivotservice Manageddeviceresourcequery Retrievequeryresult Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# retrieveQueryResult action

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/managedDeviceResourceQuery/retrieveQueryResult
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|queryRequestId|String||
|skip|Int32||
|top|Int32||



## Response
If successful, this action returns a `200 OK` response code and a [managedDeviceResourceQueryResult](../resources/intune-multidevicepivotservice-manageddeviceresourcequeryresult.md) in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/managedDeviceResourceQuery/retrieveQueryResult

Content-type: application/json
Content-length: 77

{
  "queryRequestId": "Query Request Id value",
  "skip": 4,
  "top": 3
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 845

{
  "value": {
    "@odata.type": "microsoft.graph.managedDeviceResourceQueryResult",
    "count": 5,
    "queryRequestStatus": "submitted",
    "columns": [
      {
        "@odata.type": "microsoft.graph.managedDeviceResourceQueryAttribute",
        "resourceId": "Resource Id value",
        "attributeId": "Attribute Id value",
        "attributeDisplayName": "Attribute Display Name value",
        "attributeType": "datetime",
        "possibleValues": [
          {
            "@odata.type": "microsoft.graph.managedDeviceResourceQueryEnumMember",
            "enumMemberDisplayName": "Enum Member Display Name value",
            "value": "Value value",
            "iconName": "Icon Name value"
          }
        ]
      }
    ],
    "rows": [
      "Rows value"
    ],
    "message": "Message value"
  }
}
```
