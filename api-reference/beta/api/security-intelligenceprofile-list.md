---
title: "List intelligenceProfiles"
description: "Get a list of the intelligenceProfile objects and their properties."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List intelligenceProfiles

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [intelligenceProfile](../resources/security-intelligenceprofile.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatIntelligence.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|ThreatIntelligence.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/intelProfiles
```

## Optional query parameters

This method supports the `$count`, `$select`, `$search`, `$top`, `$skip`, `$orderBy`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_intelligenceprofile"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/intelProfiles
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-intelligenceprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-intelligenceprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-intelligenceprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-intelligenceprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-intelligenceprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-intelligenceprofile-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.intelligenceProfile)"
}
-->
``` json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.intelligenceProfile",
      "id": "actinium",
      "kind": "actor",
      "title": "ACTINIUM",
      "firstActiveDateTime": "2022-01-31T16:00:00.000Z",
      "aliases": [
        "Primitive Bear",
        "TEMP.Armageddon",
        "Shuckworm",
        "Gamaredon"
      ],
      "targets": [
        "Government",
        "Humanitarian"
      ],
      "sponsorStates": [
        {
          "@odata.type": "microsoft.graph.security.intelligenceProfileSponsorState",
          "label": "Country/Region",
          "code": "Country/Region code"
        }
      ],
      "summary": {
        "@odata.type": "microsoft.graph.security.formattedContent",
        "content": "ACTINIUM is an activity group with a long history of targeting government and private sector organizations that have a presence in or an association with Ukraine",
        "format": "text"
      },
      "description": {
        "@odata.type": "microsoft.graph.security.formattedContent",
        "content": "### Summary\n\nACTINIUM is an activity group with a long history of targeting government and private sector organizations that have a presence in or an association with Ukraine. On February 4, 2022, Microsoft released a [blog]...",
        "format": "markdown"
      },
      "tradecraft": {
        "@odata.type": "microsoft.graph.security.formattedContent",
        "content": "#### Tactics, Techniques, and Procedures\n\n[ACTINIUM](https://attack.mitre.org/groups/G0047/) has exhibited use of the following attack techniques...",
        "format": "markdown"
      }
    }
  ]
}
```
