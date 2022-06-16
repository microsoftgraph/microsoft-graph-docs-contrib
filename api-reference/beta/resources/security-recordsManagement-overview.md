---
title: "Use the Microsoft Graph Records Management API"
description: "The Microsoft Purview Records Management APIs helps organizations manage retention and deletion of data to meet their legal obligations and compliance regulations, and increases efficiency by enabling the regular disposition of items that no longer have to be retained."
ms.localizationpriority: medium
author: sseth-msft
ms.prod: "compliance"
doc_type: conceptualPageType
---

# Use the Microsoft Graph Records Management API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Purview Records Management APIs help organizations manage retention and deletion of data to meet their legal obligations and compliance regulations, and increases efficiency by enabling the regular disposition of items that no longer have to be retained.

The Records Mangement solution is a part of the Microsoft Purview compliance center.

The API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| Label | [microsoft.graph.security.retentionlabel](security-retentionlabel.md) | Contains retention settings and action at the end of a period that be applied to an individual item. |
| Retention event | [microsoft.graph.security-retentionevent](security-retentionevent.md) | Represents a trigger for event-based retention where retention period start after the event occurs. |
| Retention event type | [microsoft.graph.security-retentioneventtype](security-retentioneventtype.md) | Represents a single group for same type of retention events . |