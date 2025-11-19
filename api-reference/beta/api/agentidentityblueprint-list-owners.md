---
title: "List agentIdentityBlueprint owners"
description: "Retrieve a list of owners of the agent identity blueprint."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List agentIdentityBlueprint owners

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of owners of the [agentIdentityBlueprint](../resources/agentidentityblueprint.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-list-owners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-list-owners-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{id}/microsoft.graph.agentIdentityBlueprint/owners
```

## Optional query parameters

This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_agentidentityblueprint_owners"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/bbec3106-565f-4907-941e-96b4dbfef21c/microsoft.graph.agentIdentityBlueprint/owners
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-agentidentityblueprint-owners-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET servicePrincipals(appId=<key>)/owners?$select=deletedDateTime",
    "value": [
        {
            "@odata.type": "#microsoft.graph.user",
            "id": "ce4770b3-70b2-4a38-a242-76631e9f7408",
            "accountEnabled": null,
            "city": null,
            "createdDateTime": null,
            "displayName": null,
            "mail": null,
            "mailNickname": null,
            "otherMails": [],
            "proxyAddresses": [],
            "surname": null,
            "userPrincipalName": null,
            "userType": null
        },
        {
            "@odata.type": "#microsoft.graph.user",
            "id": "858a9c90-38b3-4e78-b915-234aece712c4"
        },
        {
            "@odata.type": "#microsoft.graph.user",
            "id": "7585d967-f300-43de-b817-7119a6404c5e"
        }
    ]
}
```
