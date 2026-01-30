---
title: "List ediscoveryCaseMember objects"
description: "Get a list of the ediscoveryCaseMember objects and their properties."
author: "kylefk"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
---

# List ediscoveryCaseMember objects

Namespace: microsoft.graph.security

Get a list of [ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) objects for an [ediscoveryCase](../resources/security-ediscoverycase.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverycasemember_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverycasemember-list-permissions.md)]

[!INCLUDE [rbac-ediscovery-read](../includes/rbac-for-apis/rbac-ediscovery-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/caseMembers
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_ediscoverycasemember"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/caseMembers
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryCaseMember"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/caseMembers",
    "value": [
        {
            "recipientType": "user",
            "id": "c4af6f9d-37f6-43f9-9e17-601544234146",
            "displayName": "John Adams",
            "smtpAddress": "johnadams@microsoft.com"
        },
        {
            "recipientType": "roleGroup",
            "id": "b9fb4f22-5f90-47a0-b309-44fe96a959fd",
            "displayName": "Security Administrator",
            "smtpAddress": ""
        }
    ]
}
```
