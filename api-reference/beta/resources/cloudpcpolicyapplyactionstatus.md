---
title: "CloudPcPolicyApplyActionStatus  resource type"
description: "A list of possible status for policy apply operation."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudpcpolicyapplyactionstatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A list of possible status for policy apply operation.

## CloudPcPolicyApplyActionStatus values

|Member|Description|
|:---|:---|
|processing| Default. Indicates the apply operation is in process. Used when applying policy is not finish.|
|succeeded|Indicates the apply operation is successful. Used when applying policy is finish.|
|failed| Indicates the apply operation is failed. Used when applying policy is finish.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|