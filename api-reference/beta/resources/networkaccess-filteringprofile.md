---
title: "filteringProfile resource type"
description: "Associates network access policies with Microsoft Entra ID Conditional Access policies, so that access policies can be applied to users and groups."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
---

# filteringProfile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Associates network access policies with Microsoft Entra ID Conditional Access policies, so that access policies can be applied to users and groups.

Inherits from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filteringProfiles](../api/networkaccess-filteringprofile-list.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) collection|Get a list of the [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) objects and their properties.|
|[Get filteringProfile](../api/networkaccess-filteringprofile-get.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md)|Get a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.|
|[Update filteringProfile](../api/networkaccess-filteringprofile-update.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md)|Update the properties of a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the filteringProfile was created.|
|description|String|A description of the filtering profile. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|id|String|The distinct identifier that is assigned to a specific profile. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when a particular profile was last modified or updated. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|name|String|The name of the profile. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|priority|Int64|The priority used to order the profile for processing within a list.|
|state|microsoft.graph.networkaccess.status|The profile state. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conditionalAccessPolicies|[microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) collection|A set of associated policies defined to regulate access to resources or systems based on specific conditions. Automatically expanded.|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|The collection of policies that are linked to this filtering profile. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
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

