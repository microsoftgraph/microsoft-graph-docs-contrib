---
title: "userSignIn resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 03/21/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# userSignIn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [signInIdentity](../resources/signinidentity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|externalTenantId|String|**TODO: Add Description**|
|externalUserType|conditionalAccessGuestOrExternalUserTypes|**TODO: Add Description**.The possible values are: `none`, `internalGuest`, `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `otherExternalUser`, `serviceProvider`, `unknownFutureValue`.|
|userId|String|**TODO: Add Description**|

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

