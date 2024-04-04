---
title: "Get approval"
description: "Retrieve the properties of an approval object."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.topic: reference
---

# Get approval

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of an [approval](../resources/approval.md) object. This API request is made by an approver in the following scenarios:

- In [entitlement management](../resources/entitlementmanagement-overview.md), providing the identifier of the [access package assignment request](../resources/accesspackageassignmentrequest.md).
- In [PIM for Microsoft Entra roles](../resources/privilegedidentitymanagementv3-overview.md), providing the identifier of the [role assignment schedule request](../resources/unifiedroleassignmentschedulerequest.md).
- In [PIM for groups](../resources/privilegedidentitymanagement-for-groups-api-overview.md), providing the identifier of the [assignment schedule request](../resources/privilegedaccessgroupassignmentschedulerequest.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For entitlement management
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

<a name='for-pim-for-azure-ad-roles'></a>

### For PIM for Microsoft Entra roles
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | RoleAssignmentSchedule.Read.Directory, RoleAssignmentSchedule.ReadWrite.Directory |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

### For PIM for groups
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | PrivilegedAssignmentSchedule.Read.AzureADGroup, PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

To get approval objects in entitlement management:

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/{id}
```

To get approval objects in PIM for Microsoft Entra roles:

<!-- { "blockType": "ignored" } -->
```http
GET /roleManagement/directory/roleAssignmentApprovals/{id}
```

To get approval objects in PIM for groups:

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/privilegedAccess/group/assignmentApprovals/{id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [approval](../resources/approval.md) object in the response body. However, if the caller does not have the right permissions, the method returns a `403 Forbidden` response code.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_approval"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/abd306ef-f7b2-4a10-9fd1-493454322489
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-approval-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-approval-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-approval-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-approval-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-approval-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-approval-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-approval-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approval"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "abd306ef-f7b2-4a10-9fd1-493454322489",
    "steps": [
        {
            "id": "d4fa4045-4716-436d-aec5-57b0a713f095",
            "displayName": null,
            "reviewedDateTime": null,
            "reviewResult": "NotReviewed",
            "status": "InProgress",
            "assignedToMe": true,
            "justification": "",
            "reviewedBy": null
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2021-02-12 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get approval",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
