---
title: "CloudPcPolicyApplyActionStatus resource type"
description: "A list of possible status for policy applies operation."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudpcpolicyapplyactionstatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A list of possible status for policy applies operation.

## CloudPcPolicyApplyActionStatus values

|Member|Description|
|:---|:---|
|processing| Default. Indicates the applied operation is in process. Used when applying policy isn't finish.|
|succeeded|Indicates the applied operation is successful. Used when applying policy is finish.|
|failed| Indicates the applied operation is failed. Used when applying policy is finish.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
