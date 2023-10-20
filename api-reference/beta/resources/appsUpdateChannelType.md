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
|current|0| Provide users with new Microsoft 365 features as they become available. Updates are released at least once a month, though there's no fixed schedule. |
|monthlyEnterprise|1| Provide your users with new Microsoft 365 features on a predictable schedule, with updates released once a month on the second Tuesday. |
|semiAnnual|2| For specific devices in your organization that require extensive testing before deploying new Microsoft 365 features due to regulatory, governmental, or organizational requirements, updates are released once a month on the second Tuesday. |
|unknownFutureValue|3| Evolvable enumeration sentinel value. Do not use. |
