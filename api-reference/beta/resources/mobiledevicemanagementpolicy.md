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
|[List](../api/mobiledevicemanagementpolicies-list.md)|[mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md) collection|Get a list of the [mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md) objects and their properties for mobile device management applications.|
|[Get](../api/mobiledevicemanagementpolicies-get.md)|[mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md)|Read the properties and relationships of a [mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md) object for a mobile device management application.|
|[Update](../api/mobiledevicemanagementpolicies-update.md)|None|Update the properties of a [mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md) object for a mobile device management application.|
|[List included groups](../api/mobiledevicemanagementpolicies-list-includedgroups.md)|[group](../resources/group.md) collection|List included groups for a [mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md) object for a mobile device management application.|
|[Add group to policy](../api/mobiledevicemanagementpolicies-post-includedgroups.md)|None|Add a group to the [mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md) object for a mobile device management application.|
|[Delete group from policy](../api/mobiledevicemanagementpolicies-delete-includedgroups.md)|None|Delete a group from the [mobileDeviceManagementPolicy](../resources/mobiledevicemanagementpolicy.md) object for a mobile device management application.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|Indicates the user scope of the MDM policy. Possible values are: `none`, `all`, `selected`. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md). The possible values are: `none`, `all`, `selected`, `unknownFutureValue`.|
|isMdmEnrollmentDuringRegistrationDisabled|Boolean|Controls the option if users in an automatic enrollment configuration on Microsoft Entra registered devices are prompted to MDM enroll their device in the Entra account registration flow.|
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
  "isValid": "Boolean",
  "isMdmEnrollmentDuringRegistrationDisabled": "Boolean"
}
```
