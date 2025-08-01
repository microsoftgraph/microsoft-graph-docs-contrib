---
title: "restrictAccessActionBase resource type"
description: "Abstract base type representing a data loss prevention (DLP) action that restricts access to content based on policy evaluation."
author: "kylemar"
ms.date: 06/17/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# restrictAccessActionBase resource type

Namespace: microsoft.graph

Abstract base type representing a data loss prevention (DLP) action that restricts access to content based on policy evaluation.

Use [restrictaccessaction](../resources/restrictaccessaction.md) to explicitly restrict access to the content. Inherits from [dlpActionInfo](../resources/dlpactioninfo.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.security.dlpAction|The type of DLP action. Inherited from [dlpActionInfo](../resources/dlpactioninfo.md).The possible values are: `notifyUser`, `blockAccess`, `deviceRestriction`, `browserRestriction`, `unknownFutureValue`, `restrictAccess`, `generateAlert`, `generateIncidentReportAction`, `sPBlockAnonymousAccess`, `sPRuntimeAccessControl`, `sPSharingNotifyUser`, `sPSharingGenerateIncidentReport`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `restrictAccess` , `generateAlert` , `generateIncidentReportAction` , `sPBlockAnonymousAccess` , `sPRuntimeAccessControl` , `sPSharingNotifyUser` , `sPSharingGenerateIncidentReport`.|
|restrictionAction|microsoft.graph.security.restrictionAction|Action for the app to take. The possible values are: `warn`, `audit`, `block`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.restrictAccessActionBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restrictAccessActionBase",
  "action": "String",
  "restrictionAction": "String"
}
```
