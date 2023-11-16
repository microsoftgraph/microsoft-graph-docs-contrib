---
title: "mfaCompletionMetric resource type"
description: "Represents insights on the MFA usage for apps registered in your tenant configured for Microsoft Entra External ID for customers, over a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# mfaCompletionMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents insights on the MFA usage for apps registered in your tenant configured for Microsoft Entra External ID for customers, over a specific period.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily mfaCompletion](../api/dailyuserinsightmetricsroot-list-mfacompletions.md)|[mfaCompletion](../resources/mfacompletionmetric.md) collection.|Get a list of the daily [mfaCompletion](../resources/mfacompletionmetric.md) objects and their properties.|
|[List monthly mfaCompletion](../api/monthlyuserinsightmetricsroot-list-mfacompletions.md)|[mfaCompletion](../resources/mfacompletionmetric.md) collection.|Get a list of the monthly [mfaCompletion](../resources/mfacompletionmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The application ID. Supports `$filter` (`eq`).|
|attemptsCount|Int64|Number of users who attempted to sign up. Supports `$filter` (`eq`).|
|factDate|Date|The date of the user insight.|
|id|String|Identifier for the user insight. Inherited from [entity](../resources/entity.md).|
|mfaMethod|String|The MFA authentication method used by the customers. Supports `$filter` (`eq`).|
|os|String|The platform of the device that the customers used. Supports `$filter` (`eq`).|
|successCount|Int64|Number of users who signed up successfully. Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mfaCompletionMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mfaCompletionMetric",
  "appId": "String",
  "attemptsCount": "Int64",
  "factDate": "String (date)",
  "id": "String (identifier)",
  "mfaMethod": "String",
  "os": "String",
  "successCount": "Int64"
}
```
