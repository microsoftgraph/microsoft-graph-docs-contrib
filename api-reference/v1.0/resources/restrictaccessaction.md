---
title: "restrictAccessAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# restrictAccessAction resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [restrictAccessActionBase](../resources/restrictaccessactionbase.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|dlpAction|**TODO: Add Description** Inherited from [dlpActionInfo](../resources/dlpactioninfo.md).The possible values are: `notifyUser`, `blockAccess`, `deviceRestriction`, `browserRestriction`, `unknownFutureValue`, `restrictAccess`, `generateAlert`, `generateIncidentReportAction`, `sPBlockAnonymousAccess`, `sPRuntimeAccessControl`, `sPSharingNotifyUser`, `sPSharingGenerateIncidentReport`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this {evolvable enum}(/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `restrictAccess` , `generateAlert` , `generateIncidentReportAction` , `sPBlockAnonymousAccess` , `sPRuntimeAccessControl` , `sPSharingNotifyUser` , `sPSharingGenerateIncidentReport`.|
|restrictionAction|restrictionAction|**TODO: Add Description** Inherited from [restrictAccessActionBase](../resources/restrictaccessactionbase.md).The possible values are: `warn`, `audit`, `block`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.restrictAccessAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restrictAccessAction",
  "action": "String",
  "restrictionAction": "String"
}
```

