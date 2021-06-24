---
title: "tenantGroup: tenantSearch"
description: "**TODO: Add Description**"
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# tenantGroup: tenantSearch
Namespace: microsoft.graph.managedTenants



**TODO: Add Description**

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
POST /tenantRelationships/managedTenants/tenantGroups/tenantSearch
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|tenantId|String|The Azure Active Directory tenant identifier for the managed tenant.|



## Response

If successful, this action returns a `200 OK` response code and a [microsoft.graph.managedTenants.tenantGroup](../resources/managedtenants-tenantgroup.md) collection in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "tenantgroup_tenantsearch"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenantGroups/tenantSearch
Content-Type: application/json
Content-length: 28

{
  "tenantId": "String"
}
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
      "id": "String (identifier)",
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

