---
title: "List accessAssignments"
description: "Get a list of the delegatedAdminAccessAssignment objects and their properties."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: apiPageType
ms.date: 04/05/2024
ms.custom: sfi-ga-nochange
---

# List accessAssignments
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "delegatedadminrelationship_list_accessassignments" } -->
[!INCLUDE [permissions-table](../includes/permissions/delegatedadminrelationship-list-accessassignments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$top`, `$orderby`, `$count`, and `$skipToken`  [OData query parameters](/graph/query-parameters) to help customize the response.

`$top` supports up to 300 objects.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) objects in the response body.

Each **delegatedAdminAccessAssignment** object contains an **@odata.etag** property as per RFC2616.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_delegatedadminaccessassignment",
  "sampleKeys": ["72a7ae7e-4887-4e34-9755-2e1e9b26b943-63f017cb-9e0d-4f14-94bd-4871902b3409"]
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/72a7ae7e-4887-4e34-9755-2e1e9b26b943-63f017cb-9e0d-4f14-94bd-4871902b3409/accessAssignments
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-delegatedadminaccessassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-delegatedadminaccessassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-delegatedadminaccessassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-delegatedadminaccessassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-delegatedadminaccessassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-delegatedadminaccessassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-delegatedadminaccessassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-delegatedadminaccessassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegatedAdminAccessAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#accessAssignments",
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
      "@odata.etag": "W/\"JyIwMDAwMDI5OC0wMDAwLTAyMDAtMDAwMC02MjJiZTA0YjAwMDAiJw==\"",
      "id": "84c586df-0943-416e-b95f-7289cb8d3bd5",
      "status": "active",
      "createdDateTime": "2022-03-07T22:55:18.6780449Z",
      "lastModifiedDateTime": "2022-03-11T23:50:35.8970153Z",
      "accessContainer": {
          "accessContainerId": "227a2f44-2682-4831-a021-f8d69a34bcba",
          "accessContainerType": "securityGroup"
      },
      "accessDetails": {
          "unifiedRoles": [
              {
                   "roleDefinitionId": "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
              },
              {
                  "roleDefinitionId": "44367163-eba1-44c3-98af-f5787879f96a"
              },
              {
                  "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
              },
              {
                  "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10"
              }
          ]
      }
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
      "@odata.etag": "W/\"JyIwMDAwMjAwOC0wMDAwLTAyMDAtMDAwMC02MjJhYWQzYjAwMDAiJw==\"",
      "id": "8d56bce3-440f-4b4f-b5c2-cc0bcbd0199c",
      "status": "active",
      "createdDateTime": "2022-03-10T23:50:35.8970153Z",
      "lastModifiedDateTime": "2022-03-11T02:00:27.7912161Z",
      "accessContainer": {
          "accessContainerId": "869713c9-0b28-4d08-8949-ae07ae1bf528",
          "accessContainerType": "securityGroup"
      },
      "accessDetails": {
          "unifiedRoles": [
              {
                  "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
              },
              {
                  "roleDefinitionId": "f2ef992c-3afb-46b9-b7cf-a126ee74c451"
              },
              {
                  "roleDefinitionId": "729827e3-9c14-49f7-bb1b-9608f156bbb8"
              },
              {
                  "roleDefinitionId": "3a2c62db-5318-420d-8d74-23affee5d9d5"
              }
          ]
      }
    }
  ]
}
```

