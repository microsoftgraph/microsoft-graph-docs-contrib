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

|Member|Description|
|:---|:---|
|current|New Microsoft 365 features as they become available. Updates are released at least once a month, and there isn't a fixed schedule. |
|monthlyEnterprise|New Microsoft 365 features on a predictable schedule, with updates released on the second Tuesday of every month. |
|semiAnnual|For specific devices that require extensive testing before deploying new Microsoft 365 features due to regulatory, governmental, or organizational requirements. Updates are released on the second Tuesday of every month. |
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use. |
