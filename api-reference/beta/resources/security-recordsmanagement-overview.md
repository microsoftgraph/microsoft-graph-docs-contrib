---
title: "Use the Microsoft Graph Records Management API"
description: "The Microsoft Purview Records Management APIs helps organizations manage retention and deletion of data to meet their legal obligations and compliance regulations, and increases efficiency by enabling the regular disposition of items that no longer have to be retained."
ms.localizationpriority: medium
author: sseth-msft
ms.prod: "compliance"
doc_type: conceptualPageType
---

# Use the Microsoft Graph Records Management APIs

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Purview Records Management APIs help organizations manage retention and deletion of data to meet their legal obligations and compliance regulations, and increases efficiency by enabling the regular disposition of items that no longer have to be retained.

The Records Mangement solution is a part of the Microsoft Purview compliance center.

With the release of our first set of APIs, some of the basic scenarios include:

a. Managing retention labels
Record Management admins and developers need to maintain the record management systems with labels that created, updated and deleted periodically.

Developers and compliance admin can use the RM Graph API to perform CRUD operations on label entity and maintain their systems.

b. Triggering an event for an existing label
When an employee leaves a company, the information is updated in the HR management system. From the date of leaving, confidential documents need to be retained for a period for 7 years. These documents already have label “Employee_departure” applied to them.

The developer and compliance administrator uses RM Graph API to read label “Employee_departure” and lookup the associated event type- “Event-employee_departure”.

The compliance admin uses RM Graph API to create an event for the associated event type. The retention period for the confidential documents starts post the creation of this event.

The API includes the following key entities:

| Name | Type       | Use case |
|:-|:-|:-|
| Label | [microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) | Contains retention settings and action at the end of a period that be applied to an individual item. |
| Retention event | [microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md) | Represents a trigger for event-based retention where retention period start after the event occurs. |
| Retention event type | [microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) | Represents a single group for same type of retention events . |
