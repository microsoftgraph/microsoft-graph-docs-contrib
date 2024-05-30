---
title: "List referenceDefinitions"
description: "Get a list of the referenceDefinition objects and their properties."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# List referenceDefinitions

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [referenceDefinition](../resources/industrydata-referencedefinition.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_referencedefinition_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-referencedefinition-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/referenceDefinitions
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_referencedefinition"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/referenceDefinitions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-referencedefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-referencedefinition-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-referencedefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-referencedefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-referencedefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-referencedefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-referencedefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-referencedefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.referenceDefinition)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "code": "home",
      "createdDateTime": "0001-01-01T00:00:00Z",
      "id": "RefEmailAddressType-home",
      "isDisabled": false,
      "lastModifiedDateTime": "0001-01-01T00:00:00Z",
      "referenceType": "RefEmailAddressType",
      "sortIndex": 10,
      "source": "CEDS"
    },
    {
      "code": "01",
      "createdDateTime": "0001-01-01T00:00:00Z",
      "id": "RefGradeLevel-01",
      "isDisabled": false,
      "lastModifiedDateTime": "0001-01-01T00:00:00Z",
      "referenceType": "RefGradeLevel",
      "sortIndex": 60,
      "source": "CEDS"
    },
    {
      "code": "02",
      "createdDateTime": "0001-01-01T00:00:00Z",
      "id": "RefGradeLevel-02",
      "isDisabled": false,
      "lastModifiedDateTime": "0001-01-01T00:00:00Z",
      "referenceType": "RefGradeLevel",
      "sortIndex": 70,
      "source": "CEDS"
    },
    {
      "code": "undergraduate",
      "createdDateTime": "0001-01-01T00:00:00Z",
      "id": "RefGradeLevel-undergraduate",
      "isDisabled": false,
      "lastModifiedDateTime": "0001-01-01T00:00:00Z",
      "referenceType": "RefGradeLevel",
      "sortIndex": 270,
      "source": "Contoso"
    },
    {
      "code": "username",
      "createdDateTime": "0001-01-01T00:00:00Z",
      "id": "RefIdentifierType-username",
      "isDisabled": false,
      "lastModifiedDateTime": "0001-01-01T00:00:00Z",
      "referenceType": "RefIdentifierType",
      "sortIndex": 40,
      "source": "IMS Global"
    },
    {
      "code": "academicTrust",
      "createdDateTime": "0001-01-01T00:00:00Z",
      "id": "RefOrgType-academicTrust",
      "isDisabled": false,
      "lastModifiedDateTime": "0001-01-01T00:00:00Z",
      "referenceType": "RefOrgType",
      "sortIndex": 140,
      "source": "Contoso"
    }
  ]
}
```
