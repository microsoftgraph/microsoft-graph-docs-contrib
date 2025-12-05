---
title: "Remove ediscoveryCaseMember"
description: "Remove an ediscoveryCaseMember object."
author: "kylefk"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
---

# Remove ediscoveryCaseMember

Namespace: microsoft.graph.security

Remove an [ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) from an [ediscoveryCase](../resources/security-ediscoverycase.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-ediscoverycasemember-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverycasemember-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/cases/ediscoveryCases/{ediscoveryCaseId}/caseMembers/{eDiscoveryCaseMemberId}
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
|ID|String|The ID of the eDiscovery case member. Can be obtained by calling **GET /caseMembers**. Required.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_ediscoverycasemember"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/58fcd4c1-e11c-42a4-bc90-f57e1990319c/caseMembers/4e82e429-97bb-4796-b376-286396ecb2c3
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```