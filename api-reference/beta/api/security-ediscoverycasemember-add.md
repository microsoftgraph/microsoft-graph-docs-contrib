---
title: "Add ediscoveryCaseMember"
description: "Update the properties of an ediscoveryCaseMember object."
author: "annierevers"
ms.date: 2/12/2025
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
---

# Add ediscoveryCaseMember

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an [ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) to an [ediscoveryCase](../resources/security-ediscoverycase.md). The [ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) can be can be one of two types: a user or a role group.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-ediscoverycasemember-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverycasemember-add-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST security/cases/ediscoveryCases/{ediscoveryCaseId}/caseMembers
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|recipientType|microsoft.graph.security.recipientType|Specifies the recipient type of the eDiscovery case member. The possible values are: `user`, `roleGroup`, `unknownFutureValue`. Required.|
|id|String|The id of the eDiscovery case member. If not specified, then either **displayName** (for role group) or **smtpAddress** (for user) must be provided.|
|displayName|String|The display name of the eDiscovery case member. Allowed only for case members of type **roleGroup**. If not specified, then **id** must be provided. |
|smtpAddress|String|The smtp address of the eDiscovery case member. Allowed only for case members of type **user**. If not specified, then **id** must be provided. |

## Response

If successful, this method returns a `200 OK` response code and the added [microsoft.graph.security.ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) object in the response body.

## Examples

### Example 1: Add a case member of type **user** using **smtAddress**
#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoverycasemember"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/caseMembers
Content-Type: application/json

{
    "recipientType": "user",
    "smtpAddress": "user3@microsoft.com"
}
```


#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "recipientType": "user",
    "id": "c4af6f9d-37f6-43f9-9e17-601544234146",
    "displayName": "User3",
    "smtpAddress": "user3@microsoft.com"
}
```

### Example 2: Add a case member of type **roleGroup** using **displayName**
#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoverycasemember"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/caseMembers
Content-Type: application/json

{
    "recipientType": "roleGroup",
    "displayName": "Security Administrator"
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "recipientType": "roleGroup",
    "id": "b9fb4f22-5f90-47a0-b309-44fe96a959fd",
    "displayName": "Security Administrator",
    "smtpAddress": ""
}
```

### Example 3: Add a case member of type **user** using **id**
#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoverycasemember"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/caseMembers
Content-Type: application/json

{
    "recipientType": "user",
    "id": "c4af6f9d-37f6-43f9-9e17-601544234146"
}
```


#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "recipientType": "user",
    "id": "c4af6f9d-37f6-43f9-9e17-601544234146",
    "displayName": "User3",
    "smtpAddress": "user3@microsoft.com"
}
```

### Example 4: Add a case member of type **roleGroup** using **id**.
#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoverycasemember"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/caseMembers
Content-Type: application/json

{
    "recipientType": "roleGroup",
    "id": "b9fb4f22-5f90-47a0-b309-44fe96a959fd"
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "recipientType": "roleGroup",
    "id": "b9fb4f22-5f90-47a0-b309-44fe96a959fd",
    "displayName": "Security Administrator",
    "smtpAddress": ""
}
```