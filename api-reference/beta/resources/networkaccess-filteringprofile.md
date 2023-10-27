---
title: "filteringProfile resource type"
description: "FilteringProfile associates Network Access policies with Azure AD Conditional Access policies, enabling user-context conditions by adding filteringPolicies to the profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# filteringProfile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

FilteringProfile associates Network Access policies with Azure AD Conditional Access policies, enabling user-context conditions by adding filteringPolicies to the profile.

Inherits from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filteringProfiles](../api/networkaccess-networkaccessroot-list-filteringprofiles.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) collection|Get a list of the [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) objects and their properties.|
|[Get filteringProfile](../api/networkaccess-filteringprofile-get.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.|
|[Update filteringProfile](../api/networkaccess-filteringprofile-update.md)|[microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md)|Update the properties of a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.|
|[List policies](../api/networkaccess-filteringprofile-list-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Get the policyLink resources from the policies navigation property.|
|[Create policyLink](../api/networkaccess-filteringprofile-post-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Create a new policyLink object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Timestamp that indicates when the filteringProfile was originally created.|
|description|String|Providing essential information or context about Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|id|String|Distinct identifier that is assigned to a specific profile. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Indicating the date and time when a particular profile was last modified or updated. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|name|String| short, symbolic label or identifier assigned to a specific profile. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|priority|Int64|Determine its relative importance or order within a list.|
|state|microsoft.graph.networkaccess.status|Current condition of a profile. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conditionalAccessPolicies|[microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) collection|Represents a set of associated policies defined to regulate access to resources or systems based on specific conditions.|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|collection|The collection of policies that are linked to this filtering profile. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md)|

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

