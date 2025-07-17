---
title: "List intelProfiles"
description: "Get a list of the intelligenceProfile objects and their properties."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List intelProfiles

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get a list of the [intelligenceProfile](../resources/security-intelligenceprofile.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_threatintelligence_list_intelprofiles" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-threatintelligence-list-intelprofiles-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /security/threatIntelligence/intelProfiles
```

## Optional query parameters

This method supports the `$count`, `$select`, `$search`, `$top`, `$skip`, `$orderby`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_intelligenceprofile"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/intelProfiles
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-intelligenceprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-intelligenceprofile-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-intelligenceprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.intelligenceProfile)"
}
-->

```json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.intelligenceProfile",
      "id": "9b01de37bf66d1760954a16dc2b52fed2a7bd4e093dfc8a4905e108e4843da80",
      "kind": "actor",
      "title": "Aqua Blizzard",
      "firstActiveDateTime": "2020-02-24T00:00:00Z",
      "aliases": [
          "Primitive Bear",
          "ACTINIUM",
          "SectorC08",
          "shuckworm",
          "Gamaredon",
          "UNC530",
          "Armageddon"
      ],
      "targets": [
          "Government Agencies & Services: Defense",
          "Government Agencies & Services: Law Enforcement",
          "Non-Government Organization: Human Rights Organization"
      ],
      "countriesOrRegionsOfOrigin": [
        {
          "@odata.type": "microsoft.graph.security.intelligenceProfileCountryOrRegionOfOrigin",
          "label": "Country/Region",
          "code": "Country/Region code"
        }
      ],
      "summary": {
        "@odata.type": "microsoft.graph.security.formattedContent",
        "content": "The actor that Microsoft tracks as Aqua Blizzard (ACTINIUM) is a nation-state activity group based out of ...",
        "format": "text"
      },
      "description": {
        "@odata.type": "microsoft.graph.security.formattedContent",
        "content": "## Snapshot\r\nThe actor that Microsoft tracks as Aqua Blizzard (ACTINIUM) is a nation-state activity group based out of ...",
        "format": "markdown"
      },
      "tradecraft": {
        "@odata.type": "microsoft.graph.security.formattedContent",
        "content": "Aqua Blizzard (ACTINIUM) primarily uses spear phishing emails to infect targets. These emails harness remote template injection to load malicious code or content. Typically, ...",
        "format": "markdown"
      }
    }
  ]
}
```
