---
title: "federatedTokenValidationPolicy resource type"
description: "Represents a policy to control enabling/disabling federation token auth validation - matching on-premises federated account and mapped Microsoft Entra ID account's root domains."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# federatedTokenValidationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy to control enabling or disabling validation of federation authentication tokens, thereby matching an on-premises federated account and a mapped Microsoft Entra ID account's root domain. When enabled, Microsoft Entra ID rejects an authentication request if the on-premises federated account and the mapped Microsoft Entra ID account's root domain don't match.
Represents a policy to control enabling/disabling federation token auth validation - matching on-premises federated account and mapped Microsoft Entra ID account's root domains. When enabled Microsoft Entra ID rejects auth request if on-premises federated account and mapped Microsoft Entra ID account's root domains don't match.

Inherits from [directoryObject](../resources/directoryobject.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List federatedTokenValidationPolicies](../api/policyroot-list-federatedtokenvalidationpolicy.md)|[federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) collection|Get a list of the [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) objects and their properties.|
|[Create federatedTokenValidationPolicy](../api/policyroot-post-federatedtokenvalidationpolicy.md)|[federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md)|Create a new [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.|
|[Get federatedTokenValidationPolicy](../api/federatedtokenvalidationpolicy-get.md)|[federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md)|Read the properties and relationships of a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.|
|[Update federatedTokenValidationPolicy](../api/federatedtokenvalidationpolicy-update.md)|[federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md)|Update the properties of a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.|
|[Delete federatedTokenValidationPolicy](../api/policyroot-delete-federatedtokenvalidationpolicy.md)|None|Delete a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.|
|[checkMemberGroups](../api/federatedtokenvalidationpolicy-checkmembergroups.md)|String collection|Check for membership in a specified list of groups, and return from that list those groups of which the specified user, group, service principal, organizational contact, or directory object is a member. The check is transitive.|
|[checkMemberObjects](../api/federatedtokenvalidationpolicy-checkmemberobjects.md)|String collection|Check for membership in a list of group, administrative units, or directory roles for the specified user, group, device, organizational contact, or directory object. This method is transitive.|
|[getMemberGroups](../api/federatedtokenvalidationpolicy-getmembergroups.md)|String collection|Return all groups that the user, group, service principal, organizational contact, device, or directory object is a member of. The check is transitive.|
|[getMemberObjects](../api/federatedtokenvalidationpolicy-getmemberobjects.md)|String collection|Return all groups, administrative units, and directory roles that the user, group, device, organizational contact, or directory object is a member of. The check is transitive.|
|[restore](../api/federatedtokenvalidationpolicy-restore.md)|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object hasn't been deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|The unique identifier for the object. For example, 12345678-9abc-def0-1234-56789abcde. The value of the **id** property is often but not exclusively in the form of a GUID; treat it as an opaque identifier and do not rely on it being a GUID. Key. Not nullable. Read-only. Inherited from [directoryObject](../resources/directoryobject.md).|
|validatingDomains|[validatingDomains](../resources/validatingdomains.md)|Verified Microsoft Entra ID domains for which Microsoft Entra validates that federated account's root domain matches with mapped Microsoft Entra account's root domain.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.federatedTokenValidationPolicy",
  "baseType": "Microsoft.DirectoryServices.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.federatedTokenValidationPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "validatingDomains": {
    "@odata.type": "microsoft.graph.validatingDomains"
  }
}
```
