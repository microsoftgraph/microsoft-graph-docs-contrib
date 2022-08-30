---
title: "Azure AD authentication methods policy API overview"
description: "Authentication methods policies define which authentication methods can be used by users in Azure AD."
ms.localizationpriority: medium
author: "mmcla"
ms.prod: "identity-and-sign-in"
doc_type: "conceptualPageType"
---

# Azure AD authentication methods policies API overview

Namespace: microsoft.graph

Authentication methods policies define [authentication methods](/azure/active-directory/authentication/concept-authentication-methods) and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD). Authentication methods policies that can be managed in Microsoft Graph include FIDO2 Security Keys and Passwordless Phone Sign-in with Microsoft Authenticator app.

The authentication method policies APIs are used to manage policy settings. For example:

* Define the types of FIDO2 security keys that can be used in the Azure AD tenant.
* Define the users or groups of users who are allowed to use FIDO2 Security Keys or Passwordless Phone Sign-in to sign in to Azure AD.
* Define the users or groups of users who should be reminded to set up the Microsoft Authenticator for MFA using push notifications.

## What authentication methods policies can be managed in Microsoft Graph?

|Authentication method policy       | Description |
|:---------------------------|:------------|:------------|
|[emailauthenticationmethodconfiguration](emailauthenticationmethodconfiguration.md)|Define users who can use email OTP on the Azure AD tenant.|
|[fido2authenticationmethodconfiguration](fido2authenticationmethodconfiguration.md)| Define FIDO2 security key restrictions and users who can use them to sign in to Azure AD.|
|[microsoftauthenticatorauthenticationmethodconfiguration](microsoftauthenticatorauthenticationmethodconfiguration.md)|Define users who can use Microsoft Authenticator on the Azure AD tenant.|
|[temporaryAccessPassAuthenticationMethod](temporaryaccesspassauthenticationmethodconfiguration.md)|Define the configuration settings and users or groups who are enabled to use the Temporary Access Pass authentication method.|
|[x509CertificateAuthenticationMethodConfiguration](x509CertificateAuthenticationMethodConfiguration.md)|Define users who can use X.509 certificate to sign in to Azure AD.|

## Policies available for authentication methods registration campaign:
|Policy       | Description |
|:---------------------------|:------------|
|[authenticationMethodsRegistrationCampaign](authenticationmethodsregistrationcampaign.md)| Define users who should be reminded to set up an authentication method (currently only supported for the Microsoft Authenticator).|

## Next steps

* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
