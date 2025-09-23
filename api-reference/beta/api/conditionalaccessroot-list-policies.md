---
title: "List conditionalAccessPolicy objects"
description: "Get a list of the conditionalAccessPolicy objects and their properties."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# List conditionalAccessPolicy objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the conditionalAccessPolicy objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "conditionalaccessroot-list-policies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccessroot-list-policies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /authenticationStrengthUsage/mfa
GET /authenticationStrengthUsage/none
GET /policies/conditionalAccessPolicies
GET /identity/conditionalAccess/policies
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_conditionalaccesspolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/authenticationStrengthUsage/mfa
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.conditionalAccessPolicy",
      "deletedDateTime": "String (timestamp)",
      "id": "58d1ad6b-7388-e083-9930-5c1b962bd7f3",
      "createdDateTime": "String (timestamp)",
      "modifiedDateTime": "String (timestamp)",
      "displayName": "String",
      "description": "String",
      "state": "String",
      "conditions": {
        "@odata.type": "microsoft.graph.conditionalAccessConditionSet"
      },
      "grantControls": {
        "@odata.type": "microsoft.graph.conditionalAccessGrantControls"
      },
      "sessionControls": {
        "@odata.type": "microsoft.graph.conditionalAccessSessionControls"
      }
    }
  ]
}
```


