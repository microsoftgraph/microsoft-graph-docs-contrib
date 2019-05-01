---
title: "educationSchool: delta"
description: "Get newly created or updated schools without having to perform a full read of the entire school collection. See Using Delta Query for details."
localization_priority: Normal
author: "mlafleur"
ms.prod: "education"
---

# educationSchool: delta

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get newly created or updated schools without having to perform a full read of the entire school collection. See [Using Delta Query](/graph/delta-query-overview) for details.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                              |
| :------------------------------------- | :----------------------------------------------------------------------- |
| Delegated (work or school account)     | EduRoster.ReadBasic, EduRoster.Read, or EduRoster.ReadWrite              |
| Delegated (personal Microsoft account) | Not supported.                                                           |
| Application                            | EduRoster.ReadBasic.All, EduRoster.Read.All, or EduRoster.WriteWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /education/schools/<id>/delta
POST /education/me/schools/<id>/delta
POST /education/users/<id>/schools/<id>/delta

```

## Request headers

| Name          | Description   |
| :------------ | :------------ |
| Authorization | Bearer {code} |

## Request body

## Response

If successful, this method returns `200, OK` response code and [educationSchool](../resources/educationschool.md) collection object in the response body.

## Example

The following is an example of how to call this API.

##### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "educationschool_delta"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/schools/<id>/delta
```

##### Response

The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSchool",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 313

{
  "value": [
    {
      "principalEmail": "principalEmail-value",
      "principalName": "principalName-value",
      "externalPrincipalId": "externalPrincipalId-value",
      "lowestGrade": "lowestGrade-value",
      "highestGrade": "highestGrade-value",
      "schoolNumber": "schoolNumber-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationSchool: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
