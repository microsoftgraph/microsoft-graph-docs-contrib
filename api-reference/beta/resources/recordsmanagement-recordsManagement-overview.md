---
title: "Use the Microsoft Graph Records Management API"
description: "The Microsoft 365 subject rights request API provides functionality for organizations to automate repetitive tasks and integrate with their existing subject rights request tools to build repeatable workflows that can help meet industry regulations."
ms.localizationpriority: medium
author: sseth-msft
ms.prod: "compliance"
doc_type: conceptualPageType
---

# Use the Microsoft Graph Records Management API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph APIs for records management provide functionality to automate repetitive tasks and help customers to run operations on record management solution entities in Microsoft 365 Compliance Center to help meet industry regulations more efficiently.


The API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| Label | [microsoft.graph.recordsmanagement-retentionlabel](recordsmanagement-retentionlabel.md) | Contains retention settings and action at the end of a period that be applied to an individual item. |
| Retention event | [microsoft.graph.recordsmanagement-retentionevent](recordsmanagement-retentionevent.md) | Represents a trigger for event-based retention where retention period start after the event occurs. |
| Retention event type | [microsoft.graph.recordsmanagement-retentioneventtype](recordsmanagement-retentioneventtype.md) | Represents a single group for same type of retention events . |