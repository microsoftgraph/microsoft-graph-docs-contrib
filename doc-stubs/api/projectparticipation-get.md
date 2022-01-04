---
title: "Get projectParticipation"
description: "Read the properties and relationships of a projectParticipation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get projectParticipation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [projectParticipation](../resources/projectparticipation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /user/{userId}/profile/projects/{projectParticipationId}
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

If successful, this method returns a `200 OK` response code and a [projectParticipation](../resources/projectparticipation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_projectparticipation"
}
-->
``` http
GET https://graph.microsoft.com/beta/user/{userId}/profile/projects/{projectParticipationId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.projectParticipation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.projectParticipation",
    "id": "d5e8265b-265b-d5e8-5b26-e8d55b26e8d5",
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
      "@odata.type": "microsoft.graph.personDataSources"
    },
    "isSearchable": "Boolean",
    "categories": [
      "String"
    ],
    "client": {
      "@odata.type": "microsoft.graph.companyDetail"
    },
    "displayName": "String",
    "detail": {
      "@odata.type": "microsoft.graph.positionDetail"
    },
    "colleagues": [
      {
        "@odata.type": "microsoft.graph.relatedPerson"
      }
    ],
    "sponsors": [
      {
        "@odata.type": "microsoft.graph.relatedPerson"
      }
    ],
    "collaborationTags": [
      "String"
    ],
    "thumbnailUrl": "String"
  }
}
```

