---
title: "forwardingProfile resource type"
description: "A forwarding profile determines which types of traffic are routed through the Global Secure Access services and which ones are skipped. The handling of specific traffic is determined by the forwarding policies that are added to the forwarding profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 08/01/2024
---

# forwardingProfile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A forwarding profile determines which types of traffic are routed through the Global Secure Access services and which ones are skipped. The handling of specific traffic is determined by the forwarding policies that are added to the forwarding profile.

Inherits from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-networkaccessroot-list-forwardingprofiles.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) collection|Get a list of the [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) objects and their properties.|
|[Get](../api/networkaccess-forwardingprofile-get.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.|
|[List forwarding profiles for branch (deprecated)](../api/networkaccess-branchsite-list-forwardingprofiles.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) collection|Get a list of the [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) objects for a branch and their properties.|
|[Create forwarding profile for branch (deprecated)](../api/networkaccess-branchsite-post-forwardingprofiles.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md)|Create a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object for a branch.|
|[Update forwarding profile for branch (deprecated)](../api/networkaccess-forwardingprofile-update.md)|None|Update the properties of a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object for a branch.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|Specifies the users, groups, devices, and remote networks whose traffic is associated with the given traffic forwarding profile.|
|description|String|Profile description. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|id|String|Identifier for the profile. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Profile last modified time. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|name|String|Profile name. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|priority|Int32|Profile priority.|
|state|microsoft.graph.networkaccess.status|Determines whether the profile is active or inactive. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). The possible values are: `enabled`, `disabled`.|
|trafficForwardingType|microsoft.graph.networkaccess.trafficForwardingType|Profile traffic type. The possible values are: `m365`, `internet`, `private`.|
|version|String|Version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|The collection of policies that are linked to this traffic forwarding profile. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). Supports `$expand` and a nested `$expand` to retrieve the policy. That is `/forwardingProfiles?$expand=policies($expand=policy)`.|

## JSON representation
The following JSON representation shows the resource type.
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
      "@odata.type": "microsoft.graph.networkaccess.association"
    }
  ],
  "priority": "Integer"
}
```

