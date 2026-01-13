---
title: "bulkAction action"
description: "Intune Softwareupdate Windowsqualityupdatepolicy Bulkaction Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# bulkAction action

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
```http
POST /deviceManagement/windowsQualityUpdatePolicies/{windowsQualityUpdatePolicyId}/bulkAction
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
|action|[windowsQualityUpdatePolicyActionType](../resources/intune-softwareupdate-windowsqualityupdatepolicyactiontype.md)||
|ids|String collection||



## Response
If successful, this action returns a `200 OK` response code and a [bulkCatalogItemActionResult](../resources/intune-softwareupdate-bulkcatalogitemactionresult.md) in the response body.

## Example

### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/windowsQualityUpdatePolicies/{windowsQualityUpdatePolicyId}/bulkAction

Content-type: application/json
Content-length: 62

{
  "action": "suspend",
  "ids": [
    "Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 205

{
  "value": {
    "@odata.type": "microsoft.graph.bulkCatalogItemActionResult",
    "successfulIds": [
      "Successful Ids value"
    ],
    "failedIds": [
      "Failed Ids value"
    ]
  }
}
```
