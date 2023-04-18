---
title: "Get trainingLanguageDetail"
description: "Read the properties and relationships of a trainingLanguageDetail object."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# Get trainingLanguageDetail
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [trainingLanguageDetail](../resources/traininglanguagedetail.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.ReadWrite.All              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AttackSimulation.ReadWrite.All              |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/trainings/{trainingId}/languageDetails/{trainingLanguageDetailId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [trainingLanguageDetail](../resources/traininglanguagedetail.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_traininglanguagedetail"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainings/{trainingId}/languageDetails/{trainingLanguageDetailId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trainingLanguageDetail"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.trainingLanguageDetail",
    "id": "286af964-f055-7238-273d-a919192215bd",
    "displayName": "String",
    "description": "String",
    "content": "String",
    "locale": "String",
    "createdBy": {
      "@odata.type": "microsoft.graph.emailIdentity"
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.emailIdentity"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "isDefaultLangauge": "Boolean"
  }
}
```

