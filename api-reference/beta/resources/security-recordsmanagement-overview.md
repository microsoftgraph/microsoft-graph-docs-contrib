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

The records management solution is a part of the Microsoft Purview compliance center.

## Manage retention labels
Many organizations need to manage their data to comply with industry regulations and internal policies, reduce risks of litigation or security breach, and let their employees effectively and agiley share knowledge that is current and relevant to them. Managing data commonly involves appropriately retaining or deleting different types of content. 

You can use [retention labels](security-retentionlabel.md) to configure retention and deletion settings for Microsoft 365 content. For example, you can set retention periods from when the content was labeled and you can set disposition review as the action at the end of the retention period. 

In addition, you can use [file plan descriptors](security-fileplandescriptor.md) to supplement a retention label and improve the manageability and organization of Microsoft 365 content. Examples of file plan descriptors include [authority](security-authority.md), [citation](security-citation.md), and [department](security-department.md).

## Trigger events for an existing label
Some scenarios require starting a retention period for certain documents upon a specific event, such as an employee leaving an organization, a contract expiring, or the fiscal year ending. 

You can use the [retentionLabel](security-retentionlabel.md) resource to support event-based retention, by setting the **retentionTrigger** property as `dateOfEvent` and associating the label with a [retentionEventType](security-retentioneventtype.md) resource. A [retentionEvent](security-retentionevent.md) is associated with a **retentionEventType** as well. When a triggering event happens, only content with that retention label applied is retained for the specified retention period.

As an example: in an organization, when an employee leaves, employment records must be retained for 5 years. Use the **retentionLabel** and **retentionEvent** APIs to do the following for each employee record when the employee starts:
1. Apply a **retentionLabel** configured as follows:
   - A display name of "Personnel information"
   - A **retentionDuration** of 1827 days (5 years)
   - Listening to the **retentionEventType** named "Employee departure"
2. Define a **retentionEvent** with the same **retentionEventType** named "Employee departure", and as part of its [eventQuery](security-eventquery.md) collection, an `Asset ID` with an employee ID value as the ID information associated with the event.

When an employee with an ID of 1234 leaves Contoso, the information is updated in the HR management system. The employee departure can trigger a new instance of **retentionEvent** with the "Employee departure" event type, and as part of its **eventQueries** property, an [eventQuery](security-eventquery.md) with a query string of 'AssetID:1234'. This way, employee record items using the "Personnel information" retention label and associated with the employee ID of 1234 get their 5 year retention period started from the date of the employee departure event.

## Entities
The records management API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| Label | [microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) | Contains retention settings and actions that can be applied to an item at the end of a period. |
| File plan descriptors |[microsoft.graph.securty.fileplandescriptor](../resources/security-fileplandescriptor.md) | Represents a set of optional descriptors to supplement a retention label and improve their manageability for an organization. |
| Retention event | [microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md) | Represents a trigger for event-based retention, where a retention period starts after the event occurs. |
| Retention event type | [microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) | Represents a single group for the same type of retention events. |
