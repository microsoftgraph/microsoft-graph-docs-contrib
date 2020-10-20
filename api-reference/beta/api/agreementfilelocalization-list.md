---
title: "List agreementfilelocalization"
description: "Retrieve a list of agreement file localization objects."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
author: "rajadineshmurugesan-microsoft"
---

# List agreement file localizations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [agreementFileLocalization](../resources/agreementFileLocalization.md) objects.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | Agreement.Read.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /agreements/{id}/file/localizations
```
<!--
## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.
-->

## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [agreementFileLocalization](../resources/agreementFileLocalization.md) objects in the response body.
## Example
##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_agreements"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/agreements/{id}/file/localizations
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-agreements-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-agreements-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-agreements-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agreement",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 146

{
  "value": [
  {
    "id": "22c7a9b7-5e93-43e3-a33d-7158ee040b0d",
    "fileName": "ToU_2020-07-01.pdf",
    "language": "en",
    "isDefault": true,
    "isMajorVersion": false,
    "createdDateTime": "2020-07-01T00:00:00.0000000Z"
  },
  {
    "id": "09c75118-cff0-4ad4-9434-23b3b2aa8981",
    "fileName": "ToU_2020-06-01.pdf",
    "language": "en",
    "isDefault": false,
    "isMajorVersion": false,
    "createdDateTime": "2020-06-01T00:00:00.0000000Z"
  },
  {
    "id": "81f08c30-ed21-4c72-a762-c565e439791f",
    "fileName": "ToU_2020-05-01.pdf",
    "language": "en",
    "isDefault": false,
    "isMajorVersion": false,
    "createdDateTime": "2020-05-01T00:00:00.0000000Z"
  }]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List agreements",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
