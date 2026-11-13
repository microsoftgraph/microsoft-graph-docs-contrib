---
title: "Get conditionalAccessSettings (Conditional Access)"
description: "Get the tenant's Conditional Access settings."
author: "vromanchik"
ms.reviewer: conditionalaccesspm
ms.date: 10/28/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get conditionalAccessSettings (Conditional Access)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the tenant's [Conditional Access settings](../resources/conditionalaccesssettings.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "conditionalaccesssettings-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccesssettings-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identity/conditionalAccess/settings
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [conditionalAccessSettings](../resources/conditionalaccesssettings.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_identity_conditionalaccesssettings"
}
-->
```http
GET https://graph.microsoft.com/beta/identity/conditionalAccess/settings
```

### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessSettings"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/conditionalAccess/settings",
  "id": "a8b2e051-a1c2-4da1-a2cb-4f8c5e7f4f77",
  "modifiedDateTime": "2026-10-28T12:00:00Z",
  "exclusions": {
    "allResourcesExclusions": {
      "userActionExclusions": [
        {
          "state": "enabledForReportingButNotEnforced",
          "userAction": "accountrecovery"
        }
      ]
    }
  }
}
```
