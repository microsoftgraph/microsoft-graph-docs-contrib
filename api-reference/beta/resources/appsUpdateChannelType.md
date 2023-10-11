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
|current|0| Provide your users with new Office features as soon as they're ready, but on no set schedule. |
|monthlyEnterprise|1| Provide your users with new Office features only once a month and on a predictable schedule. |
|semiAnnual|2| For select devices in your organization, where extensive testing is needed before rolling out new Office features. For example, to comply with regulatory, governmental, or other organizational requirements. |
|unknownFutureValue|3| Evolvable enumeration sentinel value. Do not use. |
