---
title: "List tenantTags"
description: "Get a list of the tenantTag objects and their properties."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List tenantTags
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [tenantTag](../resources/managedtenants-tenanttag.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ManagedTenants.Read.All, ManagedTenants.WriteRead.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/tenantTags
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

If successful, this method returns a `200 OK` response code and a collection of [tenantTag](../resources/managedtenants-tenanttag.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_tenanttag"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenantTags
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.tenantTag)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.managedTenants.tenantTag",
      "id": "479ae6ac-e6ac-479a-ace6-9a47ace69a47",
      "displayName": "String",
      "description": "String",
      "createdByUserId": "String",
      "lastActionByUserId": "String",
      "tenants": [
        {
          "@odata.type": "microsoft.graph.managedTenants.tenantInfo"
        }
      ],
      "lastActionDateTime": "String (timestamp)",
      "createdDateTime": "String (timestamp)",
      "deletedDateTime": "String (timestamp)"
    }
  ]
}
```
