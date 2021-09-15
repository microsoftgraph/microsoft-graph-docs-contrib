---
title: "accessReviewTimeoutBehavior enum type"
description: "Describes when an access review takes the default decision if request is not reviewed within the time period specified."
ms.localizationpriority: medium
doc_type: enumPageType
ms.prod: "governance"
author: "markwahl-msft"
---

# accessReviewTimeoutBehavior enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes when an access review takes the default decision if request is not reviewed within the time period specified.

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
| acceptAccessRecommendation | 2 | Review decision to take recommendations from access review to accept/remove access to access package. The general rule for AR recommendations is if last user sign in more than 30 days, it is recommended to remove access to that user. |
| keepAccess | 0 | Review decision is to keep current access. |
| removeAccess | 1 | Review decision is to remove access to access package. |
| unknownFutureValue | 99 | Sentinel member for evolvable enum |