---
title: "Business rules validation"
description: "Learn how to override business rules when an admin is booking an appointment."
ms.localizationpriority: medium
author: kwekua
ms.prod: "bookings"
doc_type: conceptualPageType
---

# Business rules validation

When an appointment is created by a non-administrator user, Microsoft Bookings will use the business rules which are configured for the Bookings calendar. However, administrators have the authority to override Bookings rules in a few cases.

In the case of an end customer, either via graph APIs (using application permissions) or any other end point, the business rules must be respected or else there will be unforeseen errors.

## Business settings

### Business hours

:::image type="content" source="../../../concepts/business-hrs.png" alt-text="Screenshot showing business hours from Monday to Saturday and Sunday as a day off":::

The previous image shows a configuration option that can also be modified via API. Use the (API that can be used to modify businessHours) to modify **businessHours**. Note that an appointment can't be set outside the business hours.

### Scheduling policy

The image below shows the web-app settings. For more details about the scheduling policy, see [BookingSchedulingPolicy resource type](../../v1.0/resources/bookingschedulingpolicy.md).

:::image type="content" source="../../../concepts/default-schd-policy.png" alt-text="Screenshot showing default scheduling policy for a Bookings calendar":::

**Time increments (Time slot interval)** indicates the duration of an appointment. While validating business rules, make sure that an appointment is for the same duration as indicated in the service.

**Minimum lead time** indicates the minimum time before an appointment can be made or cancelled.

**Maximum Lead time** indicates the maximum time before an appointment can be made.  

**Allow staff selection** is if a user wants to pass staff members via the appointment API, they should set the **allowStaffSelection** attribute in [BookingSchedulingPolicy resource type](../../v1.0/resources/bookingschedulingpolicy.md) to true.

> [!NOTE]
> This setting is called **Staff control** in the Bookings web app.

## Service level settings

### Scheduling

At a service, the scheduling policy is inherited from the business. The customer might choose to override the policies.

### Main policy  

If a scheduling policy exists at both service level and business level, the service level policy will take precedence.

### Partially set policies

If the user doesn't set a policy for the service level policy, it will default to the business level policy setting.

### Pre-Buffer

This is the extra time needed for an appointment before a following appointment. In the staff member calendar, the appointment is of duration "pre-buffer time" + "appointment slot time".

### Post-Buffer

This is the extra time needed for an appointment after a previous appointment. In the staff member calendar, the appointment is of duration "appointment slot time" + "post buffer time".
