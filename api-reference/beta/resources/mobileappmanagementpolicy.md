---
title: "mobileAppManagementPolicy resource type"
description: "A mobile app management policy represents an app autoenrollment policy for mobility management application configured in Microsoft Entra ID."
author: "garg-shubham"
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# mobileAppManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Microsoft Entra ID, a Mobile Application Management (MAM) policy defines how corporate data is protected within mobile apps, regardless of device enrollment status. These policies are enforced through Intune app protection policies, which apply to both managed (MDM-enrolled) and unmanaged (personal) devices.

Inherits from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/mobileappmanagementpolicies-list.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) collection|Get a list of the [mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) objects and their properties for mobile app management applications.|
|[Get](../api/mobileappmanagementpolicies-get.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md)|Read the properties and relationships of a [mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) object for a mobile app management application.|
|[Update](../api/mobileappmanagementpolicies-update.md)|None|Update the properties of a [mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) object for a mobile app management application.|
|[List included groups](../api/mobileappmanagementpolicies-list-includedgroups.md)|[group](../resources/group.md) collection|List included groups for a [mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) object for a mobile app management application.|
|[Add group to policy](../api/mobileappmanagementpolicies-post-includedgroups.md)|None|Add a group to the [mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) object for a mobile app management application.|
|[Delete group from policy](../api/mobileappmanagementpolicies-delete-includedgroups.md)|None|Delete a group from the [mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) object for a mobile app management application.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|Indicates the user scope of the MAM policy. Possible values are: `none`, `all`, `selected`. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md). The possible values are: `none`, `all`, `selected`, `unknownFutureValue`.|
|complianceUrl|String| Compliance URL of the mobility management application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|description|String|Description of the MAM application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|discoveryUrl|String|Discovery URL of the MAM application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|displayName|String|Display name of the MAM application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|id|String|Object Id of the MAM application. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isValid|Boolean|Whether policy is valid. Invalid policies may not be updated and should be deleted. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|termsOfUseUrl|String|Terms of Use URL of the MAM application. Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includedGroups|[group](../resources/group.md) collection|Microsoft Entra groups under the scope of the MAM policy if appliesTo is `selected`. Inherited from [microsoft.graph.mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppManagementPolicy",
  "baseType": "microsoft.graph.mobilityManagementPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppManagementPolicy",
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

