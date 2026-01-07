---
title: "Working with the authentication methods usage report API"
description: "Authentication methods activity reports provides information on the registration and usage of authentication methods in your tenant."
ms.localizationpriority: medium
ms.subservice: entra-monitoring-health
author: faithombongi
ms.author: ombongifaith
ms.reviewer: egreenberg
doc_type: "conceptualPageType"
ms.date: 01/18/2024
---

# Working with the authentication methods usage report API

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Authentication methods activity reports provides information on the registration and usage of [authentication methods](../resources/authenticationmethods-overview.md) in your tenant.

These reports provide information such as:

- How many users are registered for each authentication method
- How many users are registered for features such as multifactor authentication (MFA), Self-Service Password Reset (SSPR), and passwordless authentication.
- The failure rates of each authentication method

These reports are available on the Microsoft Entra portal through **Protection** tab group > **Authentication methods** tab > **Activity** tab under the *Monitoring* tab group.

## Licenses

A Microsoft Entra ID P1 or P2 license is required to access authentication methods usage and insights reports. Microsoft Entra multifactor authentication and self-service password reset (SSPR) licensing information can be found on the [Microsoft Entra pricing site](https://www.microsoft.com/security/business/microsoft-entra-pricing).

## Available reports

The following reports are available through Microsoft Graph:
- Users registered and capable of self-service password reset (SSPR) and Azure multifactor authentication (MFA). For more information, see the [credentialUserRegistrationCount resource type](../resources/credentialuserregistrationcount.md).
- Per-user report of the status of their authentication methods including the default methods, whether registered for MFA, SSPR, and a passwordless authentication method, and so on. For more information, see the [userRegistrationDetails resource type](../resources/userRegistrationDetails.md).
- Count of users registered, enabled, and capable of using MFA, SSPR, and passwordless authentication. For more information, see the [usersRegisteredByFeature resource type](../resources/userregistrationfeaturesummary.md).
- Raw count of users registered for email, password, and phone authentication methods. For more information, see the [usersRegisteredByMethod resource type](../resources/userregistrationmethodsummary.md).
- Tenant level MFA and SSPR registration and reset report. For more information, see the [userEventsSummary resource type](../resources/usereventssummary.md).
- Raw count of MFA vs non MFA sign in events. For more information, see the [userMfaSignInSummary resource type](../resources/usermfasigninsummary.md).
- Raw count of password resets and changes. For more information, see the [userPasswordResetsAndChangesSummary resource type](../resources/userpasswordresetsandchangessummary.md).
- Tenant level summary of the number of successful and unsuccessful registration and reset events for each authentication method. For more information, see the [userRegistrationActivitySummary resource type](../resources/userregistrationactivitysummary.md).
- Raw count of the number of successful sign ins for each authentication method. For more information, see the [userSignInUsageByAuthMethodActivity resource type](../resources/usersigninusagebyauthmethodactivity.md).
- (**Deprecated.** Use the [userRegistrationDetails resource type](../resources/userRegistrationDetails.md) instead) Per-user registration and usage details for different authentication methods, SSPR, and MFA. For more information, see the [credentialUserRegistrationDetails resource type](../resources/credentialuserregistrationdetails.md).
-  (**Deprecated.** Use the [userEventsSummary resource type](../resources/usereventssummary.md) instead) SSPR usage activity. For more information, see the [userCredentialUsageDetails resource type](../resources/usercredentialusagedetails.md).
-  (**Deprecated.** Use the [userRegistrationActivitySummary resource type](../resources/userregistrationactivitysummary.md) instead) Tenant-level summary of user SSPR activity, including failure and successes. For more information, see the [credentialUsageSummary resource type](../resources/credentialusagesummary.md).

## Related content

- [Microsoft Entra authentication methods activity](/entra/identity/authentication/howto-authentication-methods-activity)
