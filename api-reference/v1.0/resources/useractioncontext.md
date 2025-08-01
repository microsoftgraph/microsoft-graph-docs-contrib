---
title: "userActionContext resource type"
description: "Represents the supported user action being performed by the authenticating identity"
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# userActionContext resource type

Namespace: microsoft.graph

Represents the user action that the authenticating identity is performing, as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md). Inherits from [signInContext](../resources/signincontext.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|userAction|userAction|Represents the user action that the authenticating identity is performing. The possible values are: `registerSecurityInformation`, `registerOrJoinDevices`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userActionContext"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userActionContext",
  "userAction": "String"
}
```

