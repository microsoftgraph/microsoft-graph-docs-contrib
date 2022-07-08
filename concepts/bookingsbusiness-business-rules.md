---
title: "Business rules to follow when creating or updating Bookings appointments"
description: "Follow these business rules for business-level settings and service-level settings when using the create or update Bookings appointments APIs in Microsoft Graph."
ms.localizationpriority: medium
author: kwekua
ms.prod: "bookings"
doc_type: conceptualPageType
---

# Business rules for Bookings appointments

When a non-admin user creates an appointment in Microsoft Bookings, Bookings uses the business rules that are configured for the calendar. Only administrators have the authority to override Bookings rules.

End users or apps who create or update appointments via Microsoft Graph APIs (using application permissions) must adhere to business rules to prevent unforeseen errors.

If you use the [create](/graph/api/bookingbusiness-post-appointments) or [update](/graph/api/bookingappointment-update) appointment APIs with application permissions, you must follow the business rules described in this article.

## Business-level settings

Follow these business rules for business-level settings.

### Business hours

Use the [Update bookingBusiness](/graph/api/bookingbusiness-update) API to modify **businessHours**. Note that an appointment can't be set outside the business hours.

### Scheduling policy

For details about the scheduling policy, see [bookingSchedulingPolicy](/graph/api/resources/bookingschedulingpolicy).

**Time increments (Time slot interval)** indicates the duration of an appointment. While validating business rules, make sure that an appointment is for the same duration as indicated in the service.

**Minimum lead time** indicates the minimum time before an appointment can be made or cancelled.

**Maximum Lead time** indicates the maximum time before an appointment can be made.  

**Allow staff selection** is if a user wants to pass staff members via the appointment API, they should set the **allowStaffSelection** attribute in [BookingSchedulingPolicy resource type](/graph/api/resources/bookingschedulingpolicy) to true.

> [!NOTE]
> This setting is called **Staff control** in the Bookings web app.

## Service-level settings

Follow these business rules for service-level settings.

### Scheduling

At a service level, the scheduling policy is inherited from the business. The customer might choose to override the policies.

### Main policy  

If a scheduling policy exists at both the service level and the business level, the service-level policy takes precedence.

### Partially set policies

If the user doesn't set a policy for the service level, it defaults to the business-level policy setting.

### Pre-buffer

This is the extra time needed for an appointment before a following appointment. In the staff member calendar, the appointment is of duration "pre-buffer time" + "appointment slot time".

### Post-buffer

This is the extra time needed for an appointment after a previous appointment. In the staff member calendar, the appointment is of duration "appointment slot time" + "post buffer time".

## See also

- [Microsoft Bookings API overview](booking-concept-overview.md)
- [Microsoft Bookings API in Microsoft Graph](/graph/api/resources/booking-api-overview)