---
title: "Use the Microsoft Graph records management API"
description: "The Microsoft Purview records management APIs helps organizations manage retention and deletion of data to meet their legal obligations and compliance regulations, and increases efficiency by enabling the regular disposition of items that no longer have to be retained."
ms.localizationpriority: medium
author: sseth-msft
ms.prod: "compliance"
doc_type: conceptualPageType
---

# Use the Microsoft Graph records management APIs

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Purview records management APIs help organizations manage retention and deletion of data to meet their legal obligations and compliance regulations, and increases efficiency by enabling the regular disposition of items that no longer have to be retained.

The records mangement solution is a part of the Microsoft Purview compliance center.

## Trigger events for an existing label
When an employee leaves a company, information is updated in the HR management system. From the leave date, confidential documents need to be retained for a period for 7 years. These documents have the label `Employee_departure` applied.

Developers and compliance administrators can use records management APIs to read the label `Employee_departure` and look up the associated event type `Event-employee_departure`.

Compliance admins can use records management APIs to create an event for the associated event type. The retention period for the confidential documents starts after the creation of this event.

## Entities
The records management API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| Retention event | [microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md) | Represents a trigger for event-based retention, where a retention period starts after the event occurs. |
| Retention event type | [microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) | Represents a single group for the same type of retention events. |
