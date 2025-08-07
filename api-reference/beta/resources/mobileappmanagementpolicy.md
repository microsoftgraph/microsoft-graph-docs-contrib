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
|[List](../api/policyroot-list-mobileappmanagementpolicies.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) collection|Get a list of the mobileAppManagementPolicy objects and their properties.|
|[Create](../api/policyroot-post-mobileappmanagementpolicies.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md)|Create a new mobileAppManagementPolicy object.|
|[Get](../api/mobileappmanagementpolicy-get.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md)|Read the properties and relationships of [mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) object.|
|[Update](../api/mobileappmanagementpolicy-update.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md)|Update the properties of a mobileAppManagementPolicy object.|
|[Delete](../api/policyroot-delete-mobileappmanagementpolicies.md)|None|Delete a mobileAppManagementPolicy object.|
|[List includedGroups](../api/mobileappmanagementpolicy-list-includedgroups.md)|[group](../resources/group.md) collection|Get a list of groups included in an mobileAppManagementPolicy object.|
|[Add group](../api/mobileappmanagementpolicy-post-includedgroups.md)|[group](../resources/group.md)|Add includedGroups by posting to the includedGroups collection.|
|[Remove includedGroups](../api/mobileappmanagementpolicy-delete-includedgroups.md)|None|Remove a [group](../resources/group.md) object.|

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

