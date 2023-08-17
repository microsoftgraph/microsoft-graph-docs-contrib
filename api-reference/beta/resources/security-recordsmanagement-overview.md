---
title: "Use the Microsoft Graph records management API"
description: "The Microsoft Purview records management APIs helps organizations manage retention and deletion of data to meet their legal obligations and compliance regulations, and increases efficiency by enabling the regular disposition of items that no longer have to be retained."
ms.localizationpriority: medium
author: sseth-msft
ms.prod: "compliance"
doc_type: conceptualPageType
---

# Use the Microsoft Graph records management APIs

The Microsoft Purview records management APIs help organizations manage retention and deletion of data to meet their legal obligations and compliance regulations, and increases efficiency by enabling the regular disposition of items that no longer have to be retained.

The records mangement solution is a part of the Microsoft Purview compliance center.

## Manage retention labels
Record Management admins and developers need to keep their record management systems updated to the appropriate periods and retention categories which translates to creating, updating and deleting retention labels periodically. Developers can use the Microsoft Graph to perform create, updated, delete and retrieve operations on the retention label entity. 
This may include creating and maintaining file plan descriptors like “Authority”, “Category” and others.

## Trigger events for an existing label
Retention labels may have their retention period tied to external events, for example – an employee leaving the company, a project completing or the fiscal year ending. When using events, external systems which are aware of this change or information can be used to drive our service to start the clock for the retention period of items labeled. The Microsoft Graph allows creation of event types to be used in retention labels as well as triggering the specific event instances that happen externally which need to start the clock for a certain event type. For example, when an employee (with an employee ID of 1234) leaves Contoso, the information is updated in the HR management system. Let us assume that from the date of leaving, employment documentation must be retained for 5 years. These documents already have the label “Personnel information” applied to them which is already configured to listen to events of the type 'Employee_departure'. The developer can then use the Microsoft Graph to trigger a new instance of the 'Employee_departure' event type with the criteria of 'ComplianceAssetID:1234' which will ensure any items which are using the 'Personnel information' retention label and have the employee ID of 1234 in the 'Compliance Asset' column, will get their 5 year retention period started from the date specified.

## Entities
The records management API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| Label | [microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) | Contains retention settings and actions that can be applied to an item at the end of a period. |
| File plan descriptors |[microsoft.graph.securty.fileplandescriptor](../resources/security-fileplandescriptor.md) | Represents a set of optional descriptors to supplement a retention label and improve their manageability for an organization. |
| Retention event | [microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md) | Represents a trigger for event-based retention, where a retention period starts after the event occurs. |
| Retention event type | [microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) | Represents a single group for the same type of retention events. |
