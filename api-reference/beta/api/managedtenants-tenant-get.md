---
title: "Get tenant"
description: "Read the properties and relationships of a tenant object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Get tenant
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [tenant](../resources/managedtenants-tenant.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ManagedTenants.Read.All, ManagedTenants.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/tenants/{tenantId}
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

If successful, this method returns a `200 OK` response code and a [tenant](../resources/managedtenants-tenant.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_tenant"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenants/{tenantId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.tenant"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.managedTenants.tenant",
    "id": "36fab3ad-b3ad-36fa-adb3-fa36adb3fa36",
    "tenantId": "String",
    "displayName": "String",
    "contract": {
      "@odata.type": "microsoft.graph.managedTenants.tenantContract"
    },
    "tenantStatusInformation": {
      "@odata.type": "microsoft.graph.managedTenants.tenantStatusInformation"
    },
    "lastUpdatedDateTime": "String (timestamp)",
    "createdDateTime": "String (timestamp)"
  }
}
```
