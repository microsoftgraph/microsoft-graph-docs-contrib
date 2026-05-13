---
title: "Get ownerlessGroupPolicy"
description: "Read the properties of an ownerlessGroupPolicy object."
author: "Ananya-Sharma"
ms.date: 04/22/2026
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: apiPageType
---

# Get ownerlessGroupPolicy

Namespace: microsoft.graph

Read the properties of an [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "ownerlessgrouppolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/ownerlessgrouppolicy-get-permissions.md)]

> [!IMPORTANT]
> In delegated scenarios, the calling user must be assigned the *Groups Administrator* or *Exchange Administrator* [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/ownerlessGroupPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md) object in the response body. If the policy doesn't exist, this method returns a `404 Not Found` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_ownerlessgrouppolicy"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/ownerlessGroupPolicy
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ownerlessGroupPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ownerlessGroupPolicy",
  "isEnabled": true,
  "notificationDurationInWeeks": 3,
  "maxMembersToNotify": 40,
  "enabledGroupIds": [
    "b14e5eb2-a0a1-4c8f-b83e-940526219200",
    "454dde77-ac2b-421b-a6ab-165be910e0fc"
  ],
  "emailInfo": {
    "@odata.type": "microsoft.graph.emailDetails",
    "senderEmailAddress": "admin@contoso.com",
    "subject": "Your group needs an owner",
    "body": "Please consider accepting ownership of this group."
  },
  "policyWebUrl": "https://contoso.com/policies/ownerless-groups",
  "targetOwners": {
    "@odata.type": "microsoft.graph.targetOwners",
    "notifyMembers": "allowSelected",
    "securityGroups": [
      "security-group1@contoso.com",
      "security-group2@contoso.com"
    ]
  }
}
```
