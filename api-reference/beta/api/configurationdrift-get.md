---
title: "Get configurationDrift"
description: "Read the properties and relationships of a configurationDrift object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Get configurationDrift

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [configurationDrift](../resources/configurationdrift.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationdrift-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationdrift-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationDrifts/{configurationDriftId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [configurationDrift](../resources/configurationdrift.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_configurationdrift"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationDrifts/4e808e99-7f60-4194-8294-02ede71effd8
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.configurationDrift"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationDrifts/$entity",
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET admin/configurationManagement/configurationDrifts('<guid>')?$select=baselineResourceDisplayName,driftedProperties",
  "id": "4e808e99-7f60-4194-8294-02ede71effd8",
  "monitorId": "b166c9cb-db29-438b-95fb-247da1dc72c3",
  "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
  "resourceType": "microsoft.exchange.accepteddomain",
  "baselineResourceDisplayName": "Accepted Domain",
  "firstReportedDateTime": "2024-12-12T09:00:57.4830642Z",
  "status": "active",
  "resourceInstanceIdentifier": {
    "Identity": "contoso.onmicrosoft.com"
  },
  "driftedProperties": [
    {
      "propertyName": "Ensure",
      "currentValue": "Absent",
      "desiredValue": "Present"
    }
  ]
}
```

