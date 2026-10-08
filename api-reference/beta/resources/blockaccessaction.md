---
title: "blockAccessAction resource type"
description: "Represents a DLP action that explicitly blocks access to the content that triggered the rule match."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# blockAccessAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a DLP action that explicitly blocks access to the content that triggered the rule match.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.security.dlpAction|The type of DLP action. Possible values are `notifyUser`, `blockAccess`, `restrictAccess`, `generateAlert`, `generateIncidentReportAction`, `sPBlockAnonymousAccess`, `sPRuntimeAccessControl`, `sPSharingNotifyUser`, and `sPSharingGenerateIncidentReport`.  Inherited from [dlpActionInfo](../resources/dlpactioninfo.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.blockAccessAction",
  "baseType": "microsoft.graph.dlpActionInfo",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.blockAccessAction",
  "action": "blockAccess"
}
```
