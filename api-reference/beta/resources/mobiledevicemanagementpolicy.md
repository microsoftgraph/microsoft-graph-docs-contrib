---
title: "mobileDeviceManagementPolicy resource type"
description: "A mobile device management policy represents a device autoenrollment policy for mobility management application configured in Microsoft Entra ID."
author: "garg-shubham"
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# mobileDeviceManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Microsoft Entra ID, a Mobile Device Management (MDM) policy defines the configuration and enforcement rules for managing devices that access corporate resources. MDM policies are designed to ensure secure, compliant, and efficient access to corporate resources across employee devices. When a device is enrolled, it automatically receives required configurations, applications, and security policies without manual IT intervention.

Inherits from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policyroot-list-mobiledevicemanagementpolicies.md)|[mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md) collection|Get a list of the mobileDeviceManagementPolicy objects and their properties.|
|[Create](../api/policyroot-post-mobiledevicemanagementpolicies.md)|[mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md)|Create a new mobileDeviceManagementPolicy object.|
|[Get](../api/mobiledevicemanagementpolicy-get.md)|[mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md)|Read the properties and relationships of [mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md) object.|
|[Update](../api/mobiledevicemanagementpolicy-update.md)|[mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md)|Update the properties of a mobileDeviceManagementPolicy object.|
|[Delete](../api/policyroot-delete-mobiledevicemanagementpolicies.md)|None|Delete a mobileDeviceManagementPolicy object.|
|[List includedGroups](../api/mobiledevicemanagementpolicy-list-includedgroups.md)|[group](../resources/group.md) collection|Get a list of groups included in an MDM policy.|
|[Add group](../api/mobiledevicemanagementpolicy-post-includedgroups.md)|[group](../resources/group.md)|Add includedGroups by posting to the includedGroups collection.|
|[Remove includedGroups](../api/mobiledevicemanagementpolicy-delete-includedgroups.md)|None|Remove a [group](../resources/group.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|Indicates the user scope of the MDM policy. Possible values are: `none`, `all`, `selected`. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md). The possible values are: `none`, `all`, `selected`, `unknownFutureValue`.|
|complianceUrl|String| Compliance URL of the mobility management application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|description|String|Description of the MDM application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|discoveryUrl|String|Discovery URL of the MDM application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|displayName|String|Display name of the MDM application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|id|String|Object Id of the MDM application. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isValid|Boolean|Whether policy is valid. Invalid policies may not be updated and should be deleted. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|termsOfUseUrl|String|Terms of Use URL of the MDM application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includedGroups|[group](../resources/group.md) collection|Microsoft Entra groups under the scope of the MDM policy if appliesTo is `selected`. Inherited from [microsoft.graph.mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileDeviceManagementPolicy",
  "baseType": "microsoft.graph.mobilityManagementPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileDeviceManagementPolicy",
  "id": "String (identifier)",
  "appliesTo": "String",
  "complianceUrl": "String",
  "description": "String",
  "discoveryUrl": "String",
  "displayName": "String",
  "termsOfUseUrl": "String",
  "isValid": "Boolean"
}
```

