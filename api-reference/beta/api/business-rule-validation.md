---
title: "Business rules validation"
description: "Learn how to override business rules when an admin is booking an appointment."
ms.localizationpriority: medium
author: kwekua
ms.prod: "bookings"
doc_type: apiPageType
---

# Business rules validation

When an appointment is created by a non-admin user, Bookings will use the business rules what the organization has configured for the Bookings calendar.  

However, admins can override these rules in certain circumstances.

## Business Settings

This is a setting in the business object and can be modified via the API as well. An appointment can’t be set outside business hours. The attribute which corresponds to the API is “businesshours”.

### Scheduling policy

The API resource is here bookingSchedulingPolicy resource type - Microsoft Graph v1.0 | Microsoft Docs. The web-app settings are given below.

**Time Increment (Time slot interval)** indicates the duration of an appointment. While validating business rules, we need to ensure that an appointment is for the same duration as indicated in the service.

**Minimum Lead time** indicates the minimum time before which an appointment can be made or cancelled.

**Maximum Lead time** indicates the maximum time before an appointment can be made.  

**Allow Staff selection**

## Service level settings

### Scheduling

At a service, the scheduling policy is inherited from business. The customer may choose to override the policies.

#### Main Policy  

If a scheduling policy exists at both service level and business level, the service level policy will take precedence.

#### Partially Set Policies

#### Pre-Buffer

This is the extra time needed for an appointment before an appointment. In the staff member calendar the appointment is of duration “pre-buffer time” +” appointment slot time”.

#### Post-Buffer

This is the extra time needed for an appointment after an appointment. In the staff member calendar the appointment is of duration ” appointment slot time”+ “post buffer time”.
