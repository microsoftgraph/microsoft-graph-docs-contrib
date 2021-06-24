---
title: "List tenantGroups"
description: "Get a list of the tenantGroup objects and their properties."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List tenantGroups
Namespace: microsoft.graph.managedTenants



Get a list of the [tenantGroup](../resources/managedtenants-tenantgroup.md) objects and their properties.

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
GET /tenantRelationships/managedTenants/tenantGroups
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

If successful, this method returns a `200 OK` response code and a collection of [tenantGroup](../resources/tenantgroup.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_tenantgroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenantGroups
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.tenantGroup)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.managedTenants.tenantGroup",
      "id": "80ffafcf-afcf-80ff-cfaf-ff80cfafff80",
      "displayName": "String",
      "allTenantsIncluded": "Boolean",
      "tenantIds": [
        "String"
      ],
      "managementIntents": [
        {
          "@odata.type": "microsoft.graph.managedTenants.managementIntentInfo"
        }
      ],
      "managementActions": [
        {
          "@odata.type": "microsoft.graph.managedTenants.managementActionInfo"
        }
      ]
    }
  ]
}
```

