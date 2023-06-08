---
title: "forwardingProfile resource type"
description: "**TODO: Add Description**"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingProfile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List forwardingProfiles](../api/networkaccess-networkaccessroot-list-forwardingprofiles.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) collection|Get a list of the [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) objects and their properties.|
|[Create forwardingProfile](../api/networkaccess-networkaccessroot-post-forwardingprofiles.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md)|Create a new [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.|
|[Get forwardingProfile](../api/networkaccess-forwardingprofile-get.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.|
|[Update forwardingProfile](../api/networkaccess-forwardingprofile-update.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md)|Update the properties of a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.|
|[Delete forwardingProfile](../api/networkaccess-networkaccessroot-delete-forwardingprofiles.md)|None|Delete a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.|
|[List policies](../api/networkaccess-filteringprofile-list-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Get the policyLink resources from the policies navigation property.|
|[Create policyLink](../api/networkaccess-forwardingprofile-post-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Create a new policyLink object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|name|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|priority|Int32|**TODO: Add Description**|
|state|microsoft.graph.networkaccess.status|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|trafficForwardingType|microsoft.graph.networkaccess.trafficForwardingType|**TODO: Add Description**.The possible values are: `m365`, `internet`, `private`, `unknownFutureValue`.|
|version|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.forwardingProfile",
  "baseType": "microsoft.graph.networkaccess.profile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.forwardingProfile",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "state": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "trafficForwardingType": "String",
  "associations": [
    {
      "@odata.type": "microsoft.graph.networkaccess.associatedBranch"
    }
  ],
  "priority": "Integer"
}
```

