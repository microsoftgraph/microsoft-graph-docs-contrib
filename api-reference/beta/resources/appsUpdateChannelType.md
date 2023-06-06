---
title: appsUpdateChannelType enum type
description: Represents how often users get feature updates for Microsoft 365 apps installed on devices running Windows.
author: yan-git
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: enumPageType
---

# appsUpdateChannelType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents how often users get feature updates for Microsoft 365 apps installed on devices running Windows.

Include the `Prefer: include-unknown-enum-members` header to explicitly request for enum values beyond `unknownFutureValue`. For details, see
[Handling future members in evolvable enumerations](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).

## Members

|Member|Value|Description|
|:---|:---|:---|
|current|0| As soon as updates are ready.|
|monthlyEnterprise|1|Once a month.|
|semiAnnual|2|Every six months.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|
