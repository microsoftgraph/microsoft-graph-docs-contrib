---
title: "List referenceDefinitions"
description: "Get a list of the referenceDefinition objects and their properties."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: apiPageType
---

# List referenceDefinitions

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [referenceDefinition](../resources/industrydata-referencedefinition.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData.ReadBasic.All                  |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData.ReadBasic.All                  |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/referenceDefinitions
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [referenceDefinition](../resources/industrydata-referencedefinition.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_referencedefinition"
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/referenceDefinitions
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.referenceDefinition)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "RefEmailAddressType-home",
      "referenceType": "RefEmailAddressType",
      "code": "home",
      "source": "ceds.ed.gov",
      "isDisabled": false,
      "sortIndex": 10,
      "createdDateTime": "0001-01-01T00:00:00Z",
      "lastModifiedDateTime": "0001-01-01T00:00:00Z"
    },
    {
      "id": "RefGradeLevel-01",
      "referenceType": "RefGradeLevel",
      "code": "01",
      "source": "ceds.ed.gov",
      "isDisabled": false,
      "sortIndex": 60,
      "createdDateTime": "0001-01-01T00:00:00Z",
      "lastModifiedDateTime": "0001-01-01T00:00:00Z"
    },
    {
      "id": "RefGradeLevel-02",
      "referenceType": "RefGradeLevel",
      "code": "02",
      "source": "ceds.ed.gov",
      "isDisabled": false,
      "sortIndex": 70,
      "createdDateTime": "0001-01-01T00:00:00Z",
      "lastModifiedDateTime": "0001-01-01T00:00:00Z"
    },
    {
      "id": "RefGradeLevel-undergraduate",
      "referenceType": "RefGradeLevel",
      "code": "undergraduate",
      "source": "microsoft.com",
      "isDisabled": false,
      "sortIndex": 270,
      "createdDateTime": "0001-01-01T00:00:00Z",
      "lastModifiedDateTime": "0001-01-01T00:00:00Z"
    },
    {
      "id": "RefIdentifierType-username",
      "referenceType": "RefIdentifierType",
      "code": "username",
      "source": "imsglobal.org",
      "isDisabled": false,
      "sortIndex": 40,
      "createdDateTime": "0001-01-01T00:00:00Z",
      "lastModifiedDateTime": "0001-01-01T00:00:00Z"
    },
    {
      "id": "RefOrgType-academicTrust",
      "referenceType": "RefOrgType",
      "code": "academicTrust",
      "source": "microsoft.com",
      "isDisabled": false,
      "sortIndex": 140,
      "createdDateTime": "0001-01-01T00:00:00Z",
      "lastModifiedDateTime": "0001-01-01T00:00:00Z"
    }
  ]
}
```
