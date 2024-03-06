---
title: "externalIdentitiesPolicy resource type"
description: "Represents the tenant-wide policy that controls whether external users can leave a Microsoft Entra tenant via self-service controls."
author: "KuiGithui"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# externalIdentitiesPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant-wide policy that controls whether external users can leave the guest Microsoft Entra tenant via self-service controls. When permitted by the administrator, external users can leave the guest Microsoft Entra tenant through the **organizations** menu of the [My Account](https://myaccount.microsoft.com/) portal.

Inherits from [policyBase](../resources/policybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get externalIdentitiesPolicy](../api/externalidentitiespolicy-get.md)|[externalIdentitiesPolicy](../resources/externalidentitiespolicy.md)|Read the properties and relationships of an [externalIdentitiesPolicy](../resources/externalidentitiespolicy.md) object.|
|[Update externalIdentitiesPolicy](../api/externalidentitiespolicy-update.md)|[externalIdentitiesPolicy](../resources/externalidentitiespolicy.md)|Update the properties of an [externalIdentitiesPolicy](../resources/externalidentitiespolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowDeletedIdentitiesDataRemoval|Boolean|<!--Notifies Azure AD whether to clean up the user information about the external identity, from the guest tenant, when the user is deleted in their home tenant.--> **Reserved for future use.**| 
|allowExternalIdentitiesToLeave|Boolean|Defines whether external users can leave the guest tenant. If set to `false`, self-service controls are disabled, and the admin of the guest tenant must manually remove the external user from the guest tenant. When the external user leaves the tenant, their data in the guest tenant is first soft-deleted then permanently deleted in 30 days.|
|displayName|String|The policy name. Inherited from [policyBase](../resources/policybase.md).|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalIdentitiesPolicy",
  "baseType": "microsoft.graph.policyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalIdentitiesPolicy",
  "id": "String (identifier)",
  "description": "String",
  "displayName": "String",
  "allowExternalIdentitiesToLeave": "Boolean",
  "allowDeletedIdentitiesDataRemoval": "Boolean"
}
```

## Related content
+ [Leave an organization as an external user](/azure/active-directory/external-identities/leave-the-organization)
