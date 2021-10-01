---
title: "profile resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# profile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List profiles](../api/profile-list.md)|[profile](../resources/profile.md) collection|Get a list of the [profile](../resources/profile.md) objects and their properties.|
|[Create profile](../api/profile-create.md)|[profile](../resources/profile.md)|Create a new [profile](../resources/profile.md) object.|
|[Get profile](../api/profile-get.md)|[profile](../resources/profile.md)|Read the properties and relationships of a [profile](../resources/profile.md) object.|
|[Update profile](../api/profile-update.md)|[profile](../resources/profile.md)|Update the properties of a [profile](../resources/profile.md) object.|
|[Delete profile](../api/profile-delete.md)|None|Deletes a [profile](../resources/profile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|account|[userAccountInformation](../resources/useraccountinformation.md) collection|**TODO: Add Description**|
|addresses|[itemAddress](../resources/itemaddress.md) collection|**TODO: Add Description**|
|anniversaries|[personAnnualEvent](../resources/personannualevent.md) collection|**TODO: Add Description**|
|awards|[personAward](../resources/personaward.md) collection|**TODO: Add Description**|
|certifications|[personCertification](../resources/personcertification.md) collection|**TODO: Add Description**|
|educationalActivities|[educationalActivity](../resources/educationalactivity.md) collection|**TODO: Add Description**|
|emails|[itemEmail](../resources/itememail.md) collection|**TODO: Add Description**|
|extensions|[personExtension](../resources/personextension.md) collection|**TODO: Add Description**|
|interests|[personInterest](../resources/personinterest.md) collection|**TODO: Add Description**|
|languages|[languageProficiency](../resources/languageproficiency.md) collection|**TODO: Add Description**|
|names|[personName](../resources/personname.md) collection|**TODO: Add Description**|
|notes|[personAnnotation](../resources/personannotation.md) collection|**TODO: Add Description**|
|patents|[itemPatent](../resources/itempatent.md) collection|**TODO: Add Description**|
|phones|[itemPhone](../resources/itemphone.md) collection|**TODO: Add Description**|
|positions|[workPosition](../resources/workposition.md) collection|**TODO: Add Description**|
|projects|[projectParticipation](../resources/projectparticipation.md) collection|**TODO: Add Description**|
|publications|[itemPublication](../resources/itempublication.md) collection|**TODO: Add Description**|
|skills|[skillProficiency](../resources/skillproficiency.md) collection|**TODO: Add Description**|
|webAccounts|[webAccount](../resources/webaccount.md) collection|**TODO: Add Description**|
|websites|[personWebsite](../resources/personwebsite.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.profile",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.profile",
  "id": "String (identifier)"
}
```

