---
title: "List managedDeviceComplianceTrends"
description: "Get the managedDeviceComplianceTrend resources from the managedDeviceComplianceTrends navigation property."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List managedDeviceComplianceTrends
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the managedDeviceComplianceTrend resources from the managedDeviceComplianceTrends navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/managedDeviceComplianceTrends
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

If successful, this method returns a `200 OK` response code and a collection of [managedDeviceComplianceTrend](../resources/manageddevicecompliancetrend.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_manageddevicecompliancetrend"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managedDeviceComplianceTrends
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.managedDeviceComplianceTrend)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.managedTenants.managedDeviceComplianceTrend",
      "id": "42fa314b-314b-42fa-4b31-fa424b31fa42",
      "tenantId": "String",
      "tenantDisplayName": "String",
      "unknownDeviceCount": "Integer",
      "compliantDeviceCount": "Integer",
      "noncompliantDeviceCount": "Integer",
      "errorDeviceCount": "Integer",
      "inGracePeriodDeviceCount": "Integer",
      "configManagerDeviceCount": "Integer",
      "countDateTime": "String"
    }
  ]
}
```

