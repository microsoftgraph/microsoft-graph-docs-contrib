---
title: "Update protectionRuleBase"
description: "Update the properties of a protectionRuleBase object."
author: "rigera"
ms.date: 10/09/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Update protectionRuleBase

Namespace: microsoft.graph

Update the properties of a [protectionRuleBase](../resources/protectionrulebase.md) object. This method is only supported for the dynamic rules of [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) and [onedriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) objects. After the update is applied, the value of the **status** property of the **protectionRuleBase** object is set to `updateRequested`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "protectionrulebase_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/protectionrulebase-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveInclusionRules/{driveProtectionRuleId}
PATCH /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxInclusionRules/{mailboxProtectionRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

In the request body, provide a JSON representation of one of the following properties to update the **protectionRuleBase** object.

|Property|Type|Description|
|:---|:---|:---|
|driveExpression|String|Contains a drive expression. For examples, see [driveExpression examples](../resources/driveprotectionrule.md#driveexpression-examples).|
|mailboxExpression|String|Contains a mailbox expression. For examples, see [mailboxExpression examples](../resources/mailboxprotectionrule.md#mailboxexpression-examples).|

## Response

If successful, this method returns a `200 OK` response code and an updated [protectionRuleBase](../resources/protectionrulebase.md) object in the response body.

## Examples

### Example 1: Update a driveInclusionRule associated with a onedriveForBusiness protection policy

The following example shows how to update a **driveInclusionRule** associated with a [onedriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_driveInclusionRule"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/e267a763-ca81-4a98-8c1a-f407143cffe1/driveInclusionRules/c31adc5c-b65d-4a85-8eda-976947a24124
Content-Type: application/json

{
  "driveExpression": "(memberOf -any (group.id -in ['4e8e9b15-bfc8-40a2-aed0-3f65a22e2bd4']))"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-driveinclusionrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveProtectionRule"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.driveProtectionRule)",
  "id": "c31adc5c-b65d-4a85-8eda-976947a24124",
  "status": "updateRequested",
  "createdDateTime": "2025-01-15T14:42:34.5329239Z",
  "lastModifiedDateTime": "2025-01-15T14:58:08.5918017Z",
  "isAutoApplyEnabled": true,
  "createdBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264"
    },
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e"
    }
  },
  "lastModifiedBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264"
    },
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e"
    }
  },
  "driveExpression": "(memberOf -any (group.id -in ['4e8e9b15-bfc8-40a2-aed0-3f65a22e2bd4']))"
}
```

### Example 2: Update a mailboxInclusionRule associated with an Exchange protection policy

The following example shows how to update a **mailboxInclusionRule** associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_mailboxInclusionRule"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/solutions/backupRestore/exchangeProtectionPolicies/e267a763-ca81-4a98-8c1a-f407143cffe1/mailboxInclusionRules/c31adc5c-b65d-4a85-8eda-976947a24124
Content-Type: application/json

{
  "mailboxExpression": "(memberOf -any (group.id -in ['c318eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-mailboxinclusionrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxProtectionRule"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.mailboxProtectionRule)",
  "id": "c31adc5c-b65d-4a85-8eda-976947a24124",
  "status": "updateRequested",
  "createdBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264"
    },
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e"
    }
  },
  "createdDateTime": "2015-06-19T12:01:03.45Z",
  "lastModifiedBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264"
    },
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e"
    }
  },
  "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
  "isAutoApplyEnabled": true,
  "mailboxExpression": "(memberOf -any (group.id -in ['c318eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```
