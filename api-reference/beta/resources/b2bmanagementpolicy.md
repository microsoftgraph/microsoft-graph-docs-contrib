---
title: "b2bManagementPolicy resource type"
description: "Represents a policy to manage B2B features"
author: "akshukla"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# b2bManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

It allows customers to manage B2B features including resticting/allowing which domains can be used to invite users, if auto redemption of invitations is allowed, and opt-in of preview features.


Inherits from [stsPolicy](../resources/stspolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policyroot-list-b2bmanagementpolicies.md)|[b2bManagementPolicy](../resources/b2bmanagementpolicy.md) collection|Get a list of the b2bManagementPolicy objects and their properties.|
|[Create](../api/policyroot-post-b2bmanagementpolicies.md)|[b2bManagementPolicy](../resources/b2bmanagementpolicy.md)|Create a new b2bManagementPolicy object.|
|[Get](../api/b2bmanagementpolicy-get.md)|[b2bManagementPolicy](../resources/b2bmanagementpolicy.md)|Read the properties and relationships of [b2bManagementPolicy](../resources/b2bmanagementpolicy.md) object.|
|[Update](../api/b2bmanagementpolicy-update.md)|[b2bManagementPolicy](../resources/b2bmanagementpolicy.md)|Update the properties of a b2bManagementPolicy object.|
|[Delete](../api/policyroot-delete-b2bmanagementpolicies.md)|None|Delete a b2bManagementPolicy object.|
|[List appliesTo](../api/b2bmanagementpolicy-list-appliesto.md)|[directoryObject](../resources/directoryobject.md) collection| Get the list of directoryObjects that this policy has been applied to.|
|[Add appliesTo](../api/b2bmanagementpolicy-post-appliesto.md)|[directoryObject](../resources/directoryobject.md)|Add appliesTo by posting to the appliesTo collection.|
|[Remove appliesTo](../api/b2bmanagementpolicy-delete-appliesto.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object that this policy has been applied to.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset| Date and Time when the policy object was deleted. Inherited from [directoryObject](../resources/directoryobject.md). |
|description|String| Description for this policy. Inherited from [policyBase](../resources/policybase.md). Required.|
|displayName|String| Display name for this policy. Inherited from [policyBase](../resources/policybase.md). Required.|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for a policy. Inherited from [stsPolicy](../resources/stspolicy.md). Required.|
|id|String|The unique identifier for the policy. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isOrganizationDefault|Boolean| If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Inherited from [stsPolicy](../resources/stspolicy.md). Optional.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appliesTo|[directoryObject](../resources/directoryobject.md) collection| The directoryObject collection that this policy has been applied to. Read-only. Inherited from [microsoft.graph.stsPolicy](../resources/stspolicy.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.b2bManagementPolicy",
  "baseType": "microsoft.graph.stsPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.b2bManagementPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "definition": [
    "String"
  ],
  "isOrganizationDefault": "Boolean"
}
```

