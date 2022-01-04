---
title: "Create personAward"
description: "Create a new personAward object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create personAward
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new personAward object.

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
POST /user/{userId}/profile/awards
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [personAward](../resources/personaward.md) object.

You can specify the following properties when creating a **personAward**.

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
|description|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Required.|
|issuedDate|Date|**TODO: Add Description** Optional.|
|issuingAuthority|String|**TODO: Add Description** Optional.|
|thumbnailUrl|String|**TODO: Add Description** Optional.|
|webUrl|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [personAward](../resources/personaward.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_personaward_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/user/{userId}/profile/awards
Content-Type: application/json
Content-length: 543

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.personAward",
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
  "description": "String",
  "displayName": "String",
  "issuedDate": "Date",
  "issuingAuthority": "String",
  "thumbnailUrl": "String",
  "webUrl": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.personAward"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.personAward",
  "id": "434a445b-445b-434a-5b44-4a435b444a43",
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
  "description": "String",
  "displayName": "String",
  "issuedDate": "Date",
  "issuingAuthority": "String",
  "thumbnailUrl": "String",
  "webUrl": "String"
}
```

