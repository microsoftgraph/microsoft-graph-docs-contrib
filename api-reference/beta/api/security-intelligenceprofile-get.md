---
title: "Get intelligenceProfile"
description: "Read the properties and relationships of an intelligenceProfile object."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get intelligenceProfile

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Read the properties and relationships of a [intelligenceProfile](../resources/security-intelligenceprofile.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_intelligenceprofile_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-intelligenceprofile-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/intelProfiles/{intelligenceProfileId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_intelligenceprofile",
  "sampleKeys": ["actinium"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/intelProfiles/actinium
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-intelligenceprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-intelligenceprofile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-intelligenceprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-intelligenceprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-intelligenceprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-intelligenceprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-intelligenceprofile-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-intelligenceprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.intelligenceProfile"
}
-->
```json
HTTP/1.1 200 OK
Content-Type: application/json

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
  "countriesOrRegionsOfOrigin": [
    {
      "@odata.type": "microsoft.graph.security.countriesOrRegionsOfOrigin",
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
```
