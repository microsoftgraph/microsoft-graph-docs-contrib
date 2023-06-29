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

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get a list of the [intelligenceProfile](../resources/security-intelligenceprofile.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | ThreatIntelligence.Read.All                 |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | ThreatIntelligence.Read.All                 |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /security/threatIntelligence/intelProfiles
```

## Optional query parameters

This method supports the `$count`, `$select`, `$search`, `$top`, `$skip`, `$orderBy`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_intelligenceprofile"
}
-->

```http
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/intelProfiles
```

### Response

The following is an example of the response.

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
