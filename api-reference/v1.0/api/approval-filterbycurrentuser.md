---
title: "approval: filterByCurrentUser"
description: "Get the approval resources."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# approval: filterByCurrentUser
Namespace: microsoft.graph

In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), return a collection of [access package assignment approvals](../resources/approval.md). The objects returned are those that are in scope for approval by the calling user.

In [PIM for groups](../resources/privilegedidentitymanagement-for-groups-api-overview.md), return a collection of [assignment approvals](../resources/approval.md). The objects returned are those that are in scope for approval by the calling user.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For entitlement management
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
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

To retrieve the approval resources in entitlement management:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/filterByCurrentUser(on='approver')
```

To retrieve the approval resources in PIM for groups:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/assignmentApprovals/filterByCurrentUser(on='approver')
```

## Function parameters
This method supports the OData query parameters for paging through a large result set. For general information, see [OData query parameters](/graph/query-parameters).

|Parameter|Type|Description|
|:---|:---|:---|
|on|approvalFilterByCurrentUserOptions| The allowed value is `approver`. Required.|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [approval](../resources/approval.md) objects in the response body.

## Examples

### Example 1: Retrieve the approval resources in entitlement management

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "approvalthis-filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/filterByCurrentUser(on='approver')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/approvalthis-filterbycurrentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/approvalthis-filterbycurrentuser-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/approvalthis-filterbycurrentuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/approvalthis-filterbycurrentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/approvalthis-filterbycurrentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/approvalthis-filterbycurrentuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/approvalthis-filterbycurrentuser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/approvalthis-filterbycurrentuser-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.approval)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.approval",
      "id": "368f6786-6786-368f-8667-8f3686678f36"
    }
  ]
}
```

### Example 2: Retrieve the approval resources in PIM for groups

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "approvalthis-filterbycurrentuser_azureADGroup"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/group/assignmentApprovals/filterByCurrentUser(on='approver')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/approvalthis-filterbycurrentuser-azureadgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/approvalthis-filterbycurrentuser-azureadgroup-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/approvalthis-filterbycurrentuser-azureadgroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/approvalthis-filterbycurrentuser-azureadgroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/approvalthis-filterbycurrentuser-azureadgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/approvalthis-filterbycurrentuser-azureadgroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/approvalthis-filterbycurrentuser-azureadgroup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/approvalthis-filterbycurrentuser-azureadgroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.approval)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.approval",
      "id": "46bc634a-0696-43c5-bc99-d568bc3c27f5",
      "stages": [
        {
          "id": "46bc634a-0696-43c5-bc99-d568bc3c27f5",
          "displayName": null,
          "reviewedDateTime": null,
          "reviewResult": "NotReviewed",
          "status": "Completed",
          "assignedToMe": true,
          "justification": "",
          "reviewedBy": null
        }
      ]
    }
  ]
}
```
