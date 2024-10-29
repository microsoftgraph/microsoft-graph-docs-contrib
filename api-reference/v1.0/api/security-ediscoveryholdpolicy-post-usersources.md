---
title: "Create userSource"
description: "Create a new userSource object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
---

# Create userSource
Namespace: microsoft.graph.security

Create a new [userSource](../resources/security-usersource.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryholdpolicy_post_usersources" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryholdpolicy-post-usersources-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds/{ediscoveryHoldPolicyId}/userSources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userSource](../resources/security-usersource.md) object.

You can specify the following properties when you create a **userSource**.

|Property|Type|Description|
|:---|:---|:---|
|email|String|SMTP address of the user.|
|includedSources|microsoft.graph.security.sourceType|Specifies which sources are included in this group. Possible values are: `mailbox`, `site`.|


## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.userSource](../resources/security-usersource.md) object in the response body.

## Examples

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_usersource_and_include_sources"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds/{ediscoveryHoldPolicyId}/userSources
Content-Type: application/json

{
    "email": "admin@contoso.com",
    "includedSources": "mailbox, site"
}
```

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.userSource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/legalHolds('0053a61a3b6c42738f7606791716a22a')/userSources/$entity",
    "displayName": "MOD Administrator",
    "createdDateTime": "0001-01-01T00:00:00Z",
    "holdStatus": "applied",
    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
    "email": "admin@contoso.com",
    "includedSources": "mailbox,site",
    "siteWebUrl": "",
    "createdBy": {
        "user": {
            "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
            "displayName": "MOD Administrator",
            "userPrincipalName": "admin@contoso.com"
        },
        "application": {
            "id": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
            "displayName": "Graph Explorer"
        }
    }
}
```
