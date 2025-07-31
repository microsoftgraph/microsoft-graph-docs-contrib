---
title: "List openShifts"
description: "List openshift objects in a team."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "apiPageType"
ms.date: 09/18/2024
---

# List openShifts

Namespace: microsoft.graph

List [openShift](../resources/openshift.md) objects in a team.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "openshift_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/openshift-list-permissions.md)]

> **Note**: This API supports admin permissions. Users with admin roles can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /teams/{id}/schedule/openShifts
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).
  
## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and all [openShift](../resources/openshift.md) objects in the team in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_openshift_2"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/teams/{id}/schedule/openShifts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-openshift-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-openshift-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-openshift-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-openshift-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-openshift-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-openshift-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-openshift-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openShift"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
           "id": "OPNSHFT_d8da84aa-0138-45f9-9ac7-5d06712211d3",
            "createdDateTime": "2024-11-08T22:11:18.091Z",
            "lastModifiedDateTime": "2024-11-08T22:11:18.091Z",
            "schedulingGroupId": "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
            "isStagedForDeletion": false,
            "draftOpenShift": null,
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
                    "displayName": "John Doe",
                    "userIdentityType": "aadUser",
                    "tenantId": null
                }
            },
            "sharedOpenShift": {
                "displayName": null,
                "startDateTime": "2024-11-04T20:00:00Z",
                "endDateTime": "2024-11-04T21:00:00Z",
                "theme": "blue",
                "notes": null,
                "openSlotCount": 1,
                "activities": []
            },
            "schedulingGroupInfo": {
                "displayName": "",
                "schedulingGroupId": "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
                "code": null
            }
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List openShift",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

