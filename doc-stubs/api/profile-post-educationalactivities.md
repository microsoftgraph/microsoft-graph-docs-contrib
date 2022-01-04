---
title: "Create educationalActivity"
description: "Create a new educationalActivity object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create educationalActivity
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new educationalActivity object.

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
POST /user/{userId}/profile/educationalActivities
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [educationalActivity](../resources/educationalactivity.md) object.

You can specify the following properties when creating an **educationalActivity**.

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
|completionMonthYear|Date|**TODO: Add Description** Optional.|
|endMonthYear|Date|**TODO: Add Description** Optional.|
|institution|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.institutionData](../resources/institutiondata.md)|**TODO: Add Description** Required.|
|program|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.educationalActivityDetail](../resources/educationalactivitydetail.md)|**TODO: Add Description** Required.|
|startMonthYear|Date|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [educationalActivity](../resources/educationalactivity.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_educationalactivity_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/user/{userId}/profile/educationalActivities
Content-Type: application/json
Content-length: 641

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.educationalActivity",
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
  "completionMonthYear": "Date",
  "endMonthYear": "Date",
  "institution": {
    "@odata.type": "microsoft.graph.institutionData"
  },
  "program": {
    "@odata.type": "microsoft.graph.educationalActivityDetail"
  },
  "startMonthYear": "Date"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.educationalActivity"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.educationalActivity",
  "id": "89ddc1f0-c1f0-89dd-f0c1-dd89f0c1dd89",
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
  "completionMonthYear": "Date",
  "endMonthYear": "Date",
  "institution": {
    "@odata.type": "microsoft.graph.institutionData"
  },
  "program": {
    "@odata.type": "microsoft.graph.educationalActivityDetail"
  },
  "startMonthYear": "Date"
}
```

