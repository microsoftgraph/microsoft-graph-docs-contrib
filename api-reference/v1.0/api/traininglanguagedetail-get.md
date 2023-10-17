---
title: "Get trainingLanguageDetail"
description: "Get the language details about an attack simulation training for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# Get trainingLanguageDetail

Namespace: microsoft.graph

Get the [language details](../resources/traininglanguagedetail.md) about an attack simulation training for a tenant.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                            |
|:---------------------------------------|:-----------------------------------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All, AttackSimulation.ReadWrite.All              |
| Delegated (personal Microsoft account) | Not supported.                                                         |
| Application                            | AttackSimulation.Read.All, AttackSimulation.ReadWrite.All              |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/trainings/{trainingId}/languageDetails/{trainingLanguageDetailId}?$filter=locale eq 'locale'
```

## Optional query parameters

This method does not currently support the [OData query parameters](/graph/query-parameters) to customize the response.

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
GET https://graph.microsoft.com/v1.0/security/attackSimulation/trainings/3f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc/languageDetails/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc?$filter=locale eq 'en'
```

### Response

The following is an example of the response.

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
  "id": "1cdfcb49-1065-46a6-b1c3-672071e20a6b",
  "displayName": "Email phish prevention training",
  "description": "Email phish prevention training",
  "locale": "en-us",
  "createdBy": {
    "email": "alexwaber@contoso.com",
    "id": "1rdfcb49-1065-46a6-b1c3-672071e20a6b",
    "displayName": "Alex Waber"
  },
  "createdDateTime": "2022-01-12T03:15:01.5906699Z",
  "lastModifiedBy": {
    "email": "alexwaber@contoso.com",
    "id": "1rdfcb49-1065-46a6-b1c3-672071e20a6b",
    "displayName": "Alex Waber"
  },
  "lastModifiedDateTime": "2021-10-07T12:23:18.8157586Z",
  "isDefaultLangauge": true
}
```
