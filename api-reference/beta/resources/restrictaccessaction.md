---
title: "restrictAccessAction resource type"
description: "Represents a DLP action that explicitly restricts access to the content that triggered the rule match."
author: "kylemar"
ms.date: 06/17/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# restrictAccessAction resource type

Namespace: microsoft.graph

Represents a DLP action that explicitly restricts access to the content that triggered the rule match."

Inherits from [restrictAccessActionBase](../resources/restrictaccessactionbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.security.dlpAction|The type of DLP action. Inherited from [dlpActionInfo](../resources/dlpactioninfo.md).The possible values are: `notifyUser`, `blockAccess`, `deviceRestriction`, `browserRestriction`, `unknownFutureValue`, `restrictAccess`, `generateAlert`, `generateIncidentReportAction`, `sPBlockAnonymousAccess`, `sPRuntimeAccessControl`, `sPSharingNotifyUser`, `sPSharingGenerateIncidentReport`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `restrictAccess` , `generateAlert` , `generateIncidentReportAction` , `sPBlockAnonymousAccess` , `sPRuntimeAccessControl` , `sPSharingNotifyUser` , `sPSharingGenerateIncidentReport`.|
|restrictionAction|microsoft.graph.security.restrictionAction|Action for the app to take. Inherited from [restrictAccessActionBase](../resources/restrictaccessactionbase.md). The possible values are: `warn`, `audit`, `block`.|

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
