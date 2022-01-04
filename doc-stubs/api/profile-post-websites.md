---
title: "Create personWebsite"
description: "Create a new personWebsite object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create personWebsite
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new personWebsite object.

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
POST /user/{userId}/profile/websites
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [personWebsite](../resources/personwebsite.md) object.

You can specify the following properties when creating a **personWebsite**.

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|allowedAudiences|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). The possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`. Optional.|
|inference|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.inferenceData](../resources/inferencedata.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). Required.|
|createdBy|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). Required.|
|lastModifiedBy|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). Required.|
|source|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.personDataSources](../resources/persondatasources.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). Optional.|
|isSearchable|Boolean|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). Optional.|
|categories|String collection|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Required.|
|webUrl|String|**TODO: Add Description** Required.|
|thumbnailUrl|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [personWebsite](../resources/personwebsite.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_personwebsite_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/user/{userId}/profile/websites
Content-Type: application/json
Content-length: 526

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.personWebsite",
  "allowedAudiences": "String",
  "inference": {
    "@odata.type": "microsoft.graph.inferenceData"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "source": {
    "@odata.type": "microsoft.graph.personDataSources"
  },
  "isSearchable": "Boolean",
  "categories": [
    "String"
  ],
  "description": "String",
  "displayName": "String",
  "webUrl": "String",
  "thumbnailUrl": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.personWebsite"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.personWebsite",
  "id": "a6e255b0-55b0-a6e2-b055-e2a6b055e2a6",
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
  "description": "String",
  "displayName": "String",
  "webUrl": "String",
  "thumbnailUrl": "String"
}
```

