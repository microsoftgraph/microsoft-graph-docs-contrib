---
title: "targetedManagedAppConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# targetedManagedAppConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [managedAppConfiguration](../resources/intune-managedappconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List targetedManagedAppConfigurations](../api/intune-targetedmanagedappconfiguration-list.md)|[targetedManagedAppConfiguration](../resources/intune-targetedmanagedappconfiguration.md) collection|Get a list of the [targetedManagedAppConfiguration](../resources/intune-targetedmanagedappconfiguration.md) objects and their properties.|
|[Create targetedManagedAppConfiguration](../api/intune-targetedmanagedappconfiguration-create.md)|[targetedManagedAppConfiguration](../resources/intune-targetedmanagedappconfiguration.md)|Create a new [targetedManagedAppConfiguration](../resources/intune-targetedmanagedappconfiguration.md) object.|
|[Get targetedManagedAppConfiguration](../api/intune-targetedmanagedappconfiguration-get.md)|[targetedManagedAppConfiguration](../resources/intune-targetedmanagedappconfiguration.md)|Read the properties and relationships of a [targetedManagedAppConfiguration](../resources/intune-targetedmanagedappconfiguration.md) object.|
|[Update targetedManagedAppConfiguration](../api/intune-targetedmanagedappconfiguration-update.md)|[targetedManagedAppConfiguration](../resources/intune-targetedmanagedappconfiguration.md)|Update the properties of a [targetedManagedAppConfiguration](../resources/intune-targetedmanagedappconfiguration.md) object.|
|[Delete targetedManagedAppConfiguration](../api/intune-targetedmanagedappconfiguration-delete.md)|None|Deletes a [targetedManagedAppConfiguration](../resources/intune-targetedmanagedappconfiguration.md) object.|
|[targetApps](../api/intune-targetedmanagedappconfiguration-targetapps.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [managedAppPolicy](../resources/intune-managedapppolicy.md).|
|customSettings|[keyValuePair](../resources/synchronization-keyvaluepair.md) collection|**TODO: Add Description** Inherited from [managedAppConfiguration](../resources/intune-managedappconfiguration.md).|
|deployedAppCount|Int32|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [managedAppPolicy](../resources/intune-managedapppolicy.md).|
|displayName|String|**TODO: Add Description** Inherited from [managedAppPolicy](../resources/intune-managedapppolicy.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isAssigned|Boolean|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [managedAppPolicy](../resources/intune-managedapppolicy.md).|
|roleScopeTagIds|String collection|**TODO: Add Description** Inherited from [managedAppPolicy](../resources/intune-managedapppolicy.md).|
|version|String|**TODO: Add Description** Inherited from [managedAppPolicy](../resources/intune-managedapppolicy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|apps|[managedMobileApp](../resources/intune-managedmobileapp.md) collection|**TODO: Add Description**|
|assignments|[targetedManagedAppPolicyAssignment](../resources/intune-targetedmanagedapppolicyassignment.md) collection|**TODO: Add Description**|
|deploymentSummary|[managedAppPolicyDeploymentSummary](../resources/intune-managedapppolicydeploymentsummary.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.targetedManagedAppConfiguration",
  "baseType": "microsoft.graph.managedAppConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetedManagedAppConfiguration",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "version": "String",
  "customSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "deployedAppCount": "Integer",
  "isAssigned": "Boolean"
}
```

