---
title: "Get longRunningOperation"
description: "Read the properties and relationships of a longRunningOperation object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: apiPageType
---

# Get longRunningOperations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [longRunningOperation](../resources/industrydata-longrunningoperation.md) object.

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
GET /external/industryData/operations/{longRunningOperationId}
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

If successful, this method returns a `200 OK` response code and a [longRunningOperation](../resources/industrydata-longrunningoperation.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_longrunningoperation"
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/operations/581b2ef8-dda2-4a3e-bb62-df13fd4a5808
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.fileValidateOperation",
  "id": "d194fa3e-18c9-47a1-0fb1-08dad8e7a876",
  "createdDateTime": "2022-12-14T05:54:35.400029Z",
  "lastActionDateTime": "2022-12-14T05:54:43.8410226Z",
  "status": "succeeded",
  "statusDetail": null,
  "resourceLocation": "https://graph.microsoft.com/beta/industryData/dataConnectors/022da4a0-c239-4b07-abed-08dad8e7a07a",
  "validatedFiles": [],
  "errors": [
    {
      "code": "RequiredFileNotFound",
      "message": "When trying to validate required file orgs.csv encountered RequiredFileNotFound error.",
      "target": "orgs.csv",
      "innerError": null,
      "details": []
    }
  ],
  "warnings": [
    {
      "code": "OptionalFileNotFound",
      "message": "When trying to validate file classes.csv encountered OptionalFileNotFound error.",
      "target": "classes.csv",
      "innerError": null,
      "details": []
    },
    {
      "code": "OptionalFileNotFound",
      "message": "When trying to validate file enrollments.csv encountered OptionalFileNotFound error.",
      "target": "enrollments.csv",
      "innerError": null,
      "details": []
    }
  ]
}
```
