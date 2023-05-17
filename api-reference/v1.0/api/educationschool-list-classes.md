---
title: "List classes of an educationSchool"
description: "Retrieve a list of classes owned by a school."
author: "mmast-msft"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List classes of an educationSchool

Namespace: microsoft.graph

Get the [educationClass](../resources/educationclass.md) resources owned by an [educationSchool](../resources/educationschool.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | EduRoster.ReadBasic                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | EduRoster.Read.All, EduRoster.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/schools/{educationSchoolId}/classes
```

## Optional query parameters

You can use the OData query option `$orderby` to sort groups in an organization by the **displayName** values, as shown in the following example:

<!-- { "blockType": "ignored" } -->

```http
GET https://graph.microsoft.com/v1.0/groups?$orderby=displayName
```

You can also use the `$filter`, `$count` and `$search` query parameters to limit the response.

When items are added or updated for this resource, they are specially indexed for use with the `$count` and `$search` query parameters. There can be a slight delay between when an item is added or updated and when it is available in the index.

For more information on OData query options, see [OData query parameters](/graph/query-parameters).

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and a collection of [educationClass](../resources/educationclass.md) objects in the response body.
## Example
##### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_classes_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/schools/f2598f43-629c-4ea9-9265-97a34839644e/classes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-classes-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-classes-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-classes-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-classes-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-classes-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-classes-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationClass",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.educationClass)",
    "value": [
        {
            "id": "733b514d-790b-4542-9efd-1558644d8b1e",
            "description": "Negotiation For Beginners training",
            "displayName": "Negotiation For Beginners",
            "mailNickname": "NegotiationForBeginners"
        },
        {
            "id": "be29b3cb-f58e-4c83-9f58-ed082c317c2d",
            "description": "Advanced Presentation Skills training",
            "displayName": "Advanced Presentation Skills",
            "mailNickname": "AdvancedPresentationSkills"
        },
        {
            "id": "ef18b112-d6dc-4b56-8cee-85f82dbe8a7d",
            "description": "Presentation Skills 101 training",
            "displayName": "Presentation Skills 101",
            "mailNickname": "PresentationSkills101"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List classes",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
