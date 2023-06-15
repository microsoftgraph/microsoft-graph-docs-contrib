---
title: "forwardingProfile resource type"
description: "A forwarding profile decides what kind of traffic goes through the Network Access Service and what is skipped. The type of traffic handled is decided by the forwarding policies added to the forwarding profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingProfile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A forwarding profile decides what kind of traffic goes through the Network Access Service and what is skipped. The type of traffic handled is decided by the forwarding policies added to the forwarding profile.

Inherits from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List forwardingProfiles](../api/networkaccess-networkaccessroot-list-forwardingprofiles.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) collection|Get a list of the [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) objects and their properties.|
|[Get forwardingProfile](../api/networkaccess-forwardingprofile-get.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.|
|[Update forwardingProfile](../api/networkaccess-forwardingprofile-update.md)|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md)|Update the properties of a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.|
|[List policies](../api/networkaccess-filteringprofile-list-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Get the policyLink resources from the policies navigation property.|
|[Create policyLink](../api/networkaccess-forwardingprofile-post-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Create a new policyLink object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|Specifies the users, groups, devices, and branch locations whose traffic is associated with the given traffic forwarding profile|
|description|String|Profile description Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|id|String|Identifier for the profile Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Profile last modified time Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|name|String|Profile name Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|
|priority|Int32|Profile priority|
|state|microsoft.graph.networkaccess.status|Determines whether the profile is enabled/disabled	 Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).The possible values are: `enabled`, `disabled`.|
|trafficForwardingType|microsoft.graph.networkaccess.trafficForwardingType|Profile traffic type.The possible values are: `m365`, `internet`, `private`.|
|version|String|version Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|The collection of policies that are linked to this traffic forwarding profile.	 Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md)|

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

