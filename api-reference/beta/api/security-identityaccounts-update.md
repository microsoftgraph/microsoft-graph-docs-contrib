---
title: "Update identityAccounts"
description: "Update the properties of an identity security account object. This allows modifying identity account configurations and settings."
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update identityAccounts

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an identity security account object. This allows modifying identity account configurations and settings.

## Permissions

One of the following permissions is required to call this API. Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-identityaccounts-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-identityaccounts-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/identities/identityAccounts/{identityAccountsId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the identity account. Optional.|
|domain|String|The domain associated with the identity account. Optional.|
|onPremisesSecurityIdentifier|String|The on-premises security identifier (SID) of the identity account. Optional.|
|cloudSecurityIdentifier|String|The cloud security identifier of the identity account. Optional.|
|isEnabled|Boolean|Indicates whether the identity account is enabled. Required.|
|accounts|[microsoft.graph.security.account](../resources/security-account.md) collection|The collection of accounts associated with this identity. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_identityaccounts"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/identities/identityAccounts/{identityAccountsId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.identityAccounts",
  "displayName": "String",
  "domain": "String",
  "onPremisesSecurityIdentifier": "String",
  "cloudSecurityIdentifier": "String",
  "isEnabled": "Boolean",
  "accounts": [
    {
      "@odata.type": "microsoft.graph.security.account"
    }
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.identityAccounts",
  "id": "70682fc1-ada1-05b9-bfd1-dfaa4c12a41f",
  "displayName": "String",
  "domain": "String",
  "onPremisesSecurityIdentifier": "String",
  "cloudSecurityIdentifier": "String",
  "isEnabled": "Boolean",
  "accounts": [
    {
      "@odata.type": "microsoft.graph.security.account"
    }
  ]
}
