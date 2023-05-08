---
title: "Create sourceSystemDefinition"
description: "Create a new sourceSystemDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Create sourceSystemDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData-SourceSystem.ReadWrite.All     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData-SourceSystem.ReadWrite.All     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/sourceSystems
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.

You can specify the following properties when you create a **sourceSystemDefinition**.

| Property             | Type                                                                                                            | Description                                                                                                  |
| :------------------- | :-------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------- |
| displayName          | String                                                                                                          | The name of the source system. Maximum supported length is 100 characters. Required.                         |
| userMatchingSettings | [microsoft.graph.industryData.userMatchingSetting](../resources/industrydata-usermatchingsetting.md) collection | A collection of user matching settings by [roleGroup](../resources/industrydata-rolegroup.md). Optional.     |
| vendor               | String                                                                                                          | The name of the vendor who supplies the source system. Maximum supported length is 100 characters. Optional. |

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_sourcesystemdefinition_from_sourceSystems"
}
-->

```http
POST https://graph.microsoft.com/beta/external/industryData/sourceSystems
Content-Type: application/json
Content-length: 250

{
  "displayName": "Rostering source",
  "userMatchingSettings": [
    {
      "matchTarget": {
        "code": "userPrincipalName"
      },
      "priorityOrder": 0,
      "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff",
      "sourceIdentifier": {
        "code": "username"
      }
    },
    {
      "matchTarget": {
        "code": "userPrincipalName"
      },
      "priorityOrder": 1,
      "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups('students')",
      "sourceIdentifier": {
        "code": "username"
      }
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-sourcesystemdefinition-from-sourcesystems-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-sourcesystemdefinition-from-sourcesystems-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-sourcesystemdefinition-from-sourcesystems-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-sourcesystemdefinition-from-sourcesystems-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-sourcesystemdefinition-from-sourcesystems-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-sourcesystemdefinition-from-sourcesystems-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.sourceSystemDefinition"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/sourceSystems/$entity",
    "id": "aa050107-5784-4a8e-1876-08daddab21bc",
    "displayName": "Rostering source",
    "vendor": null,
    "userMatchingSettings": [
        {
            "priorityOrder": 0,
            "sourceIdentifier": {
                "code": "username"
            },
            "matchTarget": {
                "code": "userPrincipalName"
            }
        },
        {
            "priorityOrder": 1,
            "sourceIdentifier": {
                "code": "username"
            },
            "matchTarget": {
                "code": "userPrincipalName"
            }
        }
    ]
}
```
