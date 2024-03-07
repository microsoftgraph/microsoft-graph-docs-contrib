---
title: "unifiedGroupSource resource type"
description: "The container for a custodian's group."
author: "mahage-msft"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# unifiedGroupSource resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The container for a [custodian's](ediscovery-custodian.md) group.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedGroupSources](../api/ediscovery-custodian-list-unifiedgroupsources.md)|[microsoft.graph.ediscovery.unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md) collection|Get a list of the **unifiedGroupSource** objects and their properties.|
|[Create unifiedGroupSource](../api/ediscovery-custodian-post-unifiedgroupsources.md)|[microsoft.graph.ediscovery.unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md)|Create a new **unifiedGroupSource** object.|
|[Get unifiedGroupSource](../api/ediscovery-unifiedgroupsource-get.md)|[microsoft.graph.ediscovery.unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md)|Read the properties and relationships of a **unifiedGroupSource** object.|
|[Delete unifiedGroupSource](../api/ediscovery-unifiedgroupsource-delete.md)|None|Delete a **unifiedGroupSource** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **unifiedGroupSource**.|
|createdDateTime|DateTimeOffset|The date and time the **unifiedGroupSource** was created.|
|displayName|String|The display name of the unified group - This is the name of the group.|
|id|String|The ID of the **unifiedGroupSource**. This isn't the ID of the actual group.|
|includedSources|microsoft.graph.ediscovery.sourceType|Specifies which sources are included in this group. Possible values are: `mailbox`, `site`.|

### sourceType values

Types of source related to the user. Includes mailbox and site both by default.

|Member|Description|
|:----|-----------|
|mailbox|Represents a mailbox.|
|site|Represents a SharePoint site.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|The group associated with the **unifiedGroupSource**.|

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.unifiedGroupSource",
  "baseType": "microsoft.graph.ediscovery.dataSource",
  "openType": false
}
-->

``` json
{
    "@odata.type": "#microsoft.graph.ediscovery.unifiedGroupSource",
    "displayName": "Developers group",
    "createdDateTime": "2020-10-27T15:14:11.0048392Z",
    "id": "33434233-3030-3739-3043-393039324633",
    "includedSources": "mailbox,site",
    "createdBy": { "@odata.type": "microsoft.graph.identitySet" }
}
```
