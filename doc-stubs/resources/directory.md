---
title: "directory resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# directory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get directory](../api/directory-get.md)|[directory](../resources/directory.md)|Read the properties and relationships of a [directory](../resources/directory.md) object.|
|[Update directory](../api/directory-update.md)|[directory](../resources/directory.md)|Update the properties of a [directory](../resources/directory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|administrativeUnits|[administrativeUnit](../resources/administrativeunit.md) collection|**TODO: Add Description**|
|attributeSets|[attributeSet](../resources/attributeset.md) collection|**TODO: Add Description**|
|customSecurityAttributeDefinitions|[customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) collection|**TODO: Add Description**|
|deletedItems|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|eligibleRoleAssignments|[eligibleRoleAssignment](../resources/eligibleroleassignment.md) collection|**TODO: Add Description**|
|featureRolloutPolicies|[featureRolloutPolicy](../resources/featurerolloutpolicy.md) collection|**TODO: Add Description**|
|federationConfigurations|[identityProviderBase](../resources/identityproviderbase.md) collection|**TODO: Add Description**|
|groupProxies|[groupProxy](../resources/groupproxy.md) collection|**TODO: Add Description**|
|sharedEmailDomains|[sharedEmailDomain](../resources/sharedemaildomain.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directory",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.directory",
  "id": "String (identifier)"
}
```

