---
title: "Coachmark location detail"
description: "Coachmark location detail."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# coachmarkLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Coachmark location detail

## Properties
|Property|Type|Description|
|:---|:---|:---|
|length|Int32|Length of coachmark.|
|location|coachmarkLocationType|Type of coachmark location.The possible values are: `unknown`, `fromEmail`, `subject`, `externalTag`, `displayName`, `messageBody`, `unknownFutureValue`.|
|offset|Int32|Offset of coachmark.|

### coachmarkLocationType values

|Member|Description |
|:---|:---|
|unknown| Coachmark location type as unknown. |
|fromEmail| Coachmark from email address. |
|subject| Coachmark from email subject. |
|externalTag| Coachmark from external tag. |
|displayName| Coachmark from display name. |
|messageBody| Coachmark from email body. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |
