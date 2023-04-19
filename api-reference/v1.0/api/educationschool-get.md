---
title: "Get educationSchool"
description: "Read the properties and relationships of an educationSchool object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Get educationSchool

Namespace: microsoft.graph

Read the properties and relationships of an [educationSchool](../resources/educationschool.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | EduRoster.ReadBasic                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | EduRoster.Read.All, EduRoster.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /education/schools/{educationSchoolId}
```

## Optional query parameters

This method supports the same OData query parameters as [Get User](../api/user-get.md#optional-query-parameters). For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [educationSchool](../resources/educationschool.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationschool"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/schools/f2598f43-629c-4ea9-9265-97a34839644e
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationschool-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationschool-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationschool-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationschool-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationschool-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationschool-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSchool"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/schools/$entity",
    "id": "f2598f43-629c-4ea9-9265-97a34839644e",
    "displayName": "Business Training Camp",
    "description": null,
    "principalEmail": "aroebuck@principal.edu",
    "principalName": "Amy Roebuck",
    "externalPrincipalId": "14007",
    "externalId": "10001",
    "externalSource": "sis",
    "externalSourceDetail": "SIS",
    "phone": "555-123-4567",
    "address": {
        "city": "Redmond",
        "countryOrRegion": "US",
        "postalCode": "98052",
        "state": "WA",
        "street": "2 Microsoft Way"
    }
}
```
