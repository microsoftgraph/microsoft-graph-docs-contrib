---
title: "Get itemEmail"
description: "Retrieve the properties and relationships of an itemEmail object."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Get itemEmail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of an [itemEmail](../resources/itememail.md) object in a user's [profile](../resources/profile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                      |
|:---------------------------------------|:---------------------------------------------------------------------------------|
| Delegated (work or school account)     | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All |
| Delegated (personal Microsoft account) | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All |
| Application                            | User.ReadBasic.All, User.Read.All, User.ReadWrite.All                            |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/profile/emails/{itemEmailId}
GET /users/{id | userPrincipalName}/profile/emails/{itemEmailId}
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

|Name            |Value    |Description                                                                                                                                                                 |
|:---------------|:--------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|$filter         |string   |Limits the response to only those objects which contain the specified criteria.                                                                                             |
|$orderby        |string   |By default the objects in the response are sorted by their createdDateTime value in a query. You can change the order of the of the response using the *$orderby* parameter.|
|$select         |string   |Comma-separated list of properties to include in the response. For optimal performance, only select the subset of properties needed.                                        |
|$skip           |int      |Skip the first n results, useful for paging.                                                                                                                                |
|$top            |int      |Number of results to be returned.                                                                                                                                           |

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [itemEmail](../resources/itememail.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_itememail"
}
-->
``` http
GET https://graph.microsoft.com/beta/user/{userId}/profile/emails/{itemEmailId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.itemEmail"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.itemEmail",
  "id": "0f30bf5d-bf5d-0f30-5dbf-300f5dbf300f",
  "allowedAudiences": "String",
  "inference": {
    "@odata.type": "microsoft.graph.inferenceData"
  },
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "source": {
    "@odata.type": "microsoft.graph.personDataSource"
  },
  "address": "String",
  "displayName": "String",
  "type": "String"
}
```
