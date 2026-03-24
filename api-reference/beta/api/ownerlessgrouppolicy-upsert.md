---
title: "Create or update ownerlessGroupPolicy"
description: "Create or update the ownerless group policy for the tenant using upsert semantics."
author: "Ananya-Sharma"
ms.date: 02/12/2026
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: apiPageType
---

# Create or update ownerlessGroupPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create or update the [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md) for the tenant. If the policy doesn't exist, it creates a new one; if the policy exists, it updates the existing policy.

To disable the policy, set **isEnabled** to `false`. Setting **isEnabled** to `false` clears the values of all other policy parameters.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "ownerlessgrouppolicy_upsert" } -->
[!INCLUDE [permissions-table](../includes/permissions/ownerlessgrouppolicy-upsert-permissions.md)]

> [!IMPORTANT]
> In delegated scenarios, the calling user must be assigned the *Groups Administrator* or *Exchange Administrator* [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/ownerlessGroupPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md) object. All required properties must be provided for both create and update operations. The API performs a full replacement of the policy configuration. Unlike the admin portal, the API doesn't apply default values for any properties.

|Property|Type|Description|
|:---|:---|:---|
|emailInfo|[emailDetails](../resources/emaildetails.md)|The email notification details for the ownerless group policy. Required.|
|enabledGroupIds|String collection|The collection of IDs for Microsoft 365 groups for which the policy is enabled. Required.|
|isEnabled|Boolean|Indicates whether the ownerless group policy is enabled. Setting this property to `false` clears the values of all other policy parameters. Required.|
|maxMembersToNotify|Int64|The maximum number of members to notify. Value range is 0-90. Required.|
|notificationDurationInWeeks|Int64|The number of weeks for the notification duration. Value range is 1-7. Required.|
|policyWebUrl|String|The URL to the policy documentation. Optional.|
|targetOwners|[targetOwners](../resources/targetowners.md)|The criteria for selecting target owners. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md) object in the response body when the policy already exists, or a `201 Created` response code and a new [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md) object in the response body when the policy is created.

### Errors

|Condition|Status code|Error code|
|:---|:---|:---|
|**notificationDurationInWeeks** is not in range 1-7|400 Bad Request|`badRequest`|
|**maxMembersToNotify** is not in range 0-90|400 Bad Request|`badRequest`|

## Examples

### Example 1: Create or update the ownerless group policy

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_ownerlessgrouppolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/ownerlessGroupPolicy
Content-Type: application/json

{
  "isEnabled": true,
  "notificationDurationInWeeks": 3,
  "maxMembersToNotify": 40,
  "policyWebUrl": "https://contoso.com/policies/ownerless-groups",
  "targetOwners": {
    "notifyMembers": "allowSelected",
    "securityGroups": [
      "security-group1@contoso.com",
      "security-group2@contoso.com"
    ]
  },
  "enabledGroupIds": [
    "b14e5eb2-a0a1-4c8f-b83e-940526219200",
    "454dde77-ac2b-421b-a6ab-165be910e0fc"
  ],
  "emailInfo": {
    "senderEmailAddress": "admin@contoso.com",
    "subject": "Need your help with $Group.Name group",
    "body": "Hi $User.DisplayName, \n\nYou'\''re receiving this email because you'\''ve been an active member of the $Group.Name group. This group currently does not have an owner. \n\nPer your organization'\''s policy, the group requires an owner.\n\nThank you"
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-ownerlessgrouppolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
    "subject": "Need your help with $Group.Name group",
    "body": "Hi $User.DisplayName, \n\nYou'\''re receiving this email because you'\''ve been an active member of the $Group.Name group. This group currently does not have an owner. \n\nPer your organization'\''s policy, the group requires an owner.\n\nThank you"
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

### Example 2: Disable the ownerless group policy

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "disable_ownerlessgrouppolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/ownerlessGroupPolicy
Content-Type: application/json

{
  "isEnabled": false
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/disable-ownerlessgrouppolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
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
  "isEnabled": false,
  "notificationDurationInWeeks": 0,
  "maxMembersToNotify": 0,
  "enabledGroupIds": [],
  "emailInfo": {
    "@odata.type": "microsoft.graph.emailDetails",
    "senderEmailAddress": "",
    "subject": "",
    "body": ""
  },
  "policyWebUrl": "",
  "targetOwners": {
    "@odata.type": "microsoft.graph.targetOwners",
    "notifyMembers": "all",
    "securityGroups": []
  }
}
```
