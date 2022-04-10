---
title: "Business rules to follow when creating or updating Bookings appointments using Microsoft Graph"
description: "This article describes the business rules to follow when using the create or update Bookings appointments in Microsoft Graph."
ms.localizationpriority: medium
author: kwekua
ms.prod: "bookings"
doc_type: conceptualPageType
---

# Business rules to follow when creating or updating Bookings appointments using Microsoft Graph

When a non-admin user creates an appointment in Microsoft Bookings, Bookings uses the business rules that are configured for the calendar. Only administrators have the authority to override Bookings rules.

End users or apps who create or update appointments via Microsoft Graph APIs (using application permissions) must adhere to business rules to prevent unforeseen errors.

If you use the [create](/graph/api/bookingbusiness-post-appointments) or [update](/graph/api/bookingappointment-update) appointment APIs with application permissions, you must follow the business rules described in this article.

## Business settings

### Business hours

Use the [Update bookingBusiness](/graph/api/bookingbusiness-update?view=graph-rest-beta&tabs=http) API to modify **businessHours**. Note that an appointment can't be set outside the business hours.

### Scheduling policy

For details about the scheduling policy, see [bookingSchedulingPolicy](/graph/api/resources/bookingschedulingpolicy).

**Time increments (Time slot interval)** indicates the duration of an appointment. While validating business rules, make sure that an appointment is for the same duration as indicated in the service.

**Minimum lead time** indicates the minimum time before an appointment can be made or cancelled.

**Maximum Lead time** indicates the maximum time before an appointment can be made.  

**Allow staff selection** is if a user wants to pass staff members via the appointment API, they should set the **allowStaffSelection** attribute in [BookingSchedulingPolicy resource type](/graph/api/resources/bookingschedulingpolicy) to true.

> [!NOTE]
> This setting is called **Staff control** in the Bookings web app.

## Service level settings

### Scheduling

At a service level, the scheduling policy is inherited from the business. The customer might choose to override the policies.

### Main policy  

If a scheduling policy exists at both service level and business level, the service level policy will take precedence.

### Partially set policies

If the user doesn't set a policy for the service level policy, it will default to the business level policy setting.

### Pre-Buffer

This is the extra time needed for an appointment before a following appointment. In the staff member calendar, the appointment is of duration "pre-buffer time" + "appointment slot time".

### Post-Buffer

This is the extra time needed for an appointment after a previous appointment. In the staff member calendar, the appointment is of duration "appointment slot time" + "post buffer time".
