---
title: "userSignIn resource type"
description: "Defines details of the user that is signing in."
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# userSignIn resource type

Namespace: microsoft.graph

Defines details of the user that is signing in, as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md). Inherits from [signInIdentity](../resources/signinidentity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|externalTenantId|String|TenantId of the guest user as applies to Microsoft Entra B2B scenarios.|
|externalUserType|conditionalAccessGuestOrExternalUserTypes|Category that the guest user belongs to. The possible values are: `none`, `internalGuest`, `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `otherExternalUser`, `serviceProvider`, `unknownFutureValue`.|
|userId|String|Object ID of the user.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userSignIn"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userSignIn",
  "userId": "String",
  "externalUserType": "String",
  "externalTenantId": "String"
}
```

