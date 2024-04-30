---
title: "Microsoft Entra authentication methods policy API overview"
description: "Authentication methods policies define which authentication methods can be used by users in Azure AD."
ms.localizationpriority: medium
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: "conceptualPageType"
ms.date: 12/22/2023
---

# Microsoft Entra authentication methods policies API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Authentication methods policies define [authentication methods](/azure/active-directory/authentication/concept-authentication-methods) and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Microsoft Entra ID. Authentication methods policies that can be managed in Microsoft Graph include FIDO2 Security Keys and Passwordless Phone Sign-in with Microsoft Authenticator app.

The authentication method policies APIs are used to manage policy settings. For example:

* Define the types of FIDO2 security keys that can be used in the Microsoft Entra tenant.
* Define the users or groups of users who are allowed to use FIDO2 Security Keys or Passwordless Phone Sign-in to sign in to Microsoft Entra ID.
* Define the users or groups of users who should be reminded to set up the Microsoft Authenticator for MFA using push notifications.

## What authentication methods policies can be managed in Microsoft Graph?

|Authentication method policy       | Description |
|:---------------------------|:------------|
|[emailauthenticationmethodconfiguration](emailauthenticationmethodconfiguration.md)|Define users who can use email OTP on the Microsoft Entra tenant.|
|[externalauthenticationmethodconfiguration](externalauthenticationmethodconfiguration.md)|Define users who can use an external authentication method satisfy the second factor of Microsoft Entra ID multifactor authentication requirements.|
|[fido2authenticationmethodconfiguration](fido2authenticationmethodconfiguration.md)| Define FIDO2 security key restrictions and users who can use them to sign in to Microsoft Entra ID.|
|[hardwareOathAuthenticationMethodConfiguration](hardwareoathauthenticationmethodconfiguration.md)| Define users who can use hardware OATH tokens to sign in to Microsoft Entra ID.|
|[microsoftauthenticatorauthenticationmethodconfiguration](microsoftauthenticatorauthenticationmethodconfiguration.md)|Define users who can use Microsoft Authenticator on the Microsoft Entra tenant.|
|[smsAuthenticationMethodConfiguration](smsAuthenticationMethodConfiguration.md)| Define users who can use Text Message on the Microsoft Entra tenant.|
|[softwareOathAuthenticationMethodConfiguration](softwareOathAuthenticationMethodConfiguration.md)|Define users who can use a third-party software OATH authentication method.|
|[temporaryaccesspassauthenticationmethodconfiguration](temporaryaccesspassauthenticationmethodconfiguration.md)|Define users who can use Temporary Access Pass to sign in to Microsoft Entra ID.|
|[voiceAuthenticationMethodConfiguration](voiceAuthenticationMethodConfiguration.md)|Define users or groups that are enabled to use the voice call authentication method.|
|[x509CertificateAuthenticationMethodConfiguration](x509CertificateAuthenticationMethodConfiguration.md)|Define users who can use X.509 certificate to sign in to Microsoft Entra ID.|

## Policies available to push users to set up authentication methods:
|Policy       | Description |
|:---------------------------|:------------|
|[authenticationMethodsRegistrationCampaign](authenticationmethodsregistrationcampaign.md)| Define users who should be reminded to set up an authentication method (only supported for the Microsoft Authenticator).|

## Next steps

* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
