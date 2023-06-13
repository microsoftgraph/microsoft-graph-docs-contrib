---
title: "filteringProfile resource type"
description: "An Filtering Profile is a container for Filtering Policies"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# filteringProfile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An Filtering Profile is a container for Filtering Policies

Inherits from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filteringProfiles](../api/networkaccess-networkaccessroot-list-filteringprofiles.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) collection|Get a list of the [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) objects and their properties.|
|[Create filteringProfile](../api/networkaccess-networkaccessroot-post-filteringprofiles.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md)|Create a new [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.|
|[Get filteringProfile](../api/networkaccess-filteringprofile-get.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.|
|[Update filteringProfile](../api/networkaccess-filteringprofile-update.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md)|Update the properties of a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.|
|[Delete filteringProfile](../api/networkaccess-networkaccessroot-delete-filteringprofiles.md)|None|Delete a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.|
|[List conditionalAccessPolicies](../api/networkaccess-filteringprofile-list-conditionalaccesspolicies.md)|[microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) collection|Get the conditionalAccessPolicy resources from the conditionalAccessPolicies navigation property.|
|[Add conditionalAccessPolicy](../api/networkaccess-filteringprofile-post-conditionalaccesspolicies.md)|[microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md)|Add conditionalAccessPolicies by posting to the conditionalAccessPolicies collection.|
|[Remove conditionalAccessPolicies](../api/networkaccess-filteringprofile-delete-conditionalaccesspolicies.md)|None|Remove a [microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) object.|
|[List policies](../api/networkaccess-filteringprofile-list-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Get the policyLink resources from the policies navigation property.|
|[Create policyLink](../api/networkaccess-filteringprofile-post-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Create a new policyLink object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|created DateTime|
|description|String|Description Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|id|String|Unique Id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|last Modified DateTime Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|name|String|name Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|priority|Int64|priority|
|state|microsoft.graph.networkaccess.status|state Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).The possible values are: `enabled`, `disabled`.|
|version|String|version Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conditionalAccessPolicies|[microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) collection|conditional access policy|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Filtering Policy Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.filteringProfile",
  "baseType": "microsoft.graph.networkaccess.profile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.filteringProfile",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "state": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "priority": "Integer",
  "createdDateTime": "String (timestamp)"
}
```

