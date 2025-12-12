---
title: "onPremisesSyncBehavior resource type"
description: "Indicates the state of synchronization for a directory object between the cloud and on-premises Active Directory."
author: "rubytek-git"
ms.reviewer: "Darshan.Maiya,rteklemariam"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
toc.title: "On-premises sync behavior (Source of Authority)"
---

# onPremisesSyncBehavior resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the synchronization settings for a directory object between the cloud and on-premises Active Directory for [group](../resources/group.md), [user](../resources/user.md), and [orgContact](../resources/orgcontact.md) resources.

For more information, see [Convert Group Source of Authority to the cloud](/entra/identity/hybrid/concept-source-of-authority-overview).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/onpremisessyncbehavior-get.md)|[onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md)|Read the properties of an onPremisesSyncBehavior object.|
|[Update](../api/onpremisessyncbehavior-update.md)|[onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md)|Update the properties of an onPremisesSyncBehavior object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The object ID of the parent object. Read-only. Inherits from [entity](../resources/entity.md)|
|isCloudManaged|Boolean|Indicates the state of synchronization for an object between the cloud and on-premises Active Directory. If `true`, updates from on-premises Active Directory are blocked in the cloud; if `false`, updates from on-premises Active Directory are allowed in the cloud and the on-premises Active Directory can take over the object.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPremisesSyncBehavior",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesSyncBehavior",
  "id": "String (identifier)",
  "isCloudManaged": "Boolean"
}
```

