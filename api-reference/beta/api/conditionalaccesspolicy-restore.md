---
title: "Restore a conditional access policy."
description: "Restore a soft deleted Conditional Access policy"
author: "*ashyasingh"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in
doc_type: apiPageType
---

# Restore conditionalAccessPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a deleted [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "conditionalaccesspolicy-restore-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccesspolicy-restore-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/conditionalAccessPolicies/{conditionalAccessPolicyId}/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "conditionalaccesspolicythis.restore"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/policies/4fa582af-f900-495c-9772-ccf34d5a95fc/restore
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
  "value": {
    "@odata.type": "#microsoft.graph.conditionalAccessPolicy",
    "deletedDateTime": "String (timestamp)",
    "id": "String (identifier)",
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
}
```

