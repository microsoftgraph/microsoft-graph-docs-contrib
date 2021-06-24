---
title: "Get cloudPcDevice"
description: "Read the properties and relationships of a cloudPcDevice object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Get cloudPcDevice
Namespace: microsoft.graph.managedTenants



Read the properties and relationships of a [cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/cloudPcDevices/{cloudPcDeviceId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_cloudpcdevice"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/cloudPcDevices/{cloudPcDeviceId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.cloudPcDevice"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.managedTenants.cloudPcDevice",
    "id": "0171daae-daae-0171-aeda-7101aeda7101",
    "displayName": "String",
    "tenantId": "String",
    "tenantDisplayName": "String",
    "managedDeviceId": "String",
    "managedDeviceName": "String",
    "userPrincipalName": "String",
    "servicePlanName": "String",
    "cloudPcStatus": "String",
    "provisioningPolicyId": "String",
    "lastRefreshedDateTime": "String (timestamp)"
  }
}
```

