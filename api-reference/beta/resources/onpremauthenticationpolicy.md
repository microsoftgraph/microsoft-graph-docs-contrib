---
title: "onPremAuthenticationPolicy resource type"
description: "Represents a policy that controls how authentication requests from on-premises environments are managed in Microsoft Graph. This resource allows administrators to define and enforce rules for on-premises authentication scenarios."
author: "maheshwaria"
ms.date: 09/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: On-prem authentication policy
---

# onPremAuthenticationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy that controls how authentication requests from on-premises environments are managed. This resource allows administrators to define and enforce rules for on-premises authentication scenarios for users and applications.

Inherits from [stsPolicy](../resources/stspolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policyroot-list-onpremauthenticationpolicies.md)|[onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) collection|Get a list of the onPremAuthenticationPolicy objects and their properties.|
|[Create](../api/policyroot-post-onpremauthenticationpolicies.md)|[onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md)|Create a new onPremAuthenticationPolicy object.|
|[Get](../api/onpremauthenticationpolicy-get.md)|[onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md)|Read the properties and relationships of [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object.|
|[Update](../api/onpremauthenticationpolicy-update.md)|[onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md)|Update the properties of an onPremAuthenticationPolicy object.|
|[Delete](../api/onpremauthenticationpolicy-delete.md)|None|Delete an onPremAuthenticationPolicy object.|
|[List applies to](../api/onpremauthenticationpolicy-list-appliesto.md)|[directoryObject](../resources/directoryobject.md) collection|Get the list of directoryObjects that this policy has been applied to.|
|[Assign to](../api/onpremauthenticationpolicy-post-appliesto.md)|[directoryObject](../resources/directoryobject.md)|Add appliesTo by posting to the appliesTo collection.|
|[Remove applies to](../api/onpremauthenticationpolicy-delete-appliesto.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object isn't deleted. Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|definition|String collection|A string collection containing a JSON string that defines the rules and settings for this policy. See below for more details about the JSON schema for this property. Required. Inherited from [stsPolicy](../resources/stspolicy.md).|
|description|String|Description for this policy. Required. Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|Display name for this policy. Required. Inherited from [policyBase](../resources/policybase.md).|
|id|String|Unique identifier for this policy. Read-only. Inherited from [entity](../resources/entity.md).|
|isOrganizationDefault|Boolean|If set to true, this instance of the policy will be considered the default for the organization. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false. Inherited from [stsPolicy](../resources/stspolicy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appliesTo|[directoryObject](../resources/directoryobject.md) collection|The [directoryObject](directoryObject.md) collection that this policy has been applied to. Read-only. Inherited from [microsoft.graph.stsPolicy](../resources/stspolicy.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPremAuthenticationPolicy",
  "baseType": "microsoft.graph.stsPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremAuthenticationPolicy",
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

