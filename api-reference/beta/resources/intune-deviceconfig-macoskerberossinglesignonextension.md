---
title: "macOSKerberosSingleSignOnExtension resource type"
description: "Represents a Kerberos-type Single Sign-On extension profile for macOS devices."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSKerberosSingleSignOnExtension resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a Kerberos-type Single Sign-On extension profile for macOS devices.


Inherits from [macOSSingleSignOnExtension](../resources/intune-deviceconfig-macossinglesignonextension.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|realm|String|Gets or sets the case-sensitive realm name for this profile.|
|domains|String collection|Gets or sets a list of hosts or domain names for which the app extension performs SSO.|
|blockAutomaticLogin|Boolean|Enables or disables Keychain usage.|
|cacheName|String|Gets or sets the Generic Security Services name of the Kerberos cache to use for this profile.|
|credentialBundleIdAccessControlList|String collection|Gets or sets a list of app Bundle IDs allowed to access the Kerberos Ticket Granting Ticket.|
|domainRealms|String collection|Gets or sets a list of realms for custom domain-realm mapping. Realms are case sensitive.|
|isDefaultRealm|Boolean|When true, this profile's realm will be selected as the default. Necessary if multiple Kerberos-type profiles are configured.|
|passwordBlockModification|Boolean|Enables or disables password changes.|
|passwordExpirationDays|Int32|Overrides the default password expiration in days. For most domains, this value is calculated automatically.|
|passwordExpirationNotificationDays|Int32|Gets or sets the number of days until the user is notified that their password will expire (default is 15).|
|userPrincipalName|String|Gets or sets the principle user name to use for this profile. The realm name does not need to be included.|
|passwordRequireActiveDirectoryComplexity|Boolean|Enables or disables whether passwords must meet Active Directory's complexity requirements.|
|passwordPreviousPasswordBlockCount|Int32|Gets or sets the number of previous passwords to block.|
|passwordMinimumLength|Int32|Gets or sets the minimum length of a password.|
|passwordMinimumAgeDays|Int32|Gets or sets the minimum number of days until a user can change their password again.|
|passwordRequirementsDescription|String|Gets or sets a description of the password complexity requirements.|
|requireUserPresence|Boolean|Gets or sets whether to require authentication via Touch ID, Face ID, or a passcode to access the keychain entry.|
|activeDirectorySiteCode|String|Gets or sets the Active Directory site.|
|passwordEnableLocalSync|Boolean|Enables or disables password syncing. This won't affect users logged in with a mobile account on macOS.|
|blockActiveDirectorySiteAutoDiscovery|Boolean|Enables or disables whether the Kerberos extension can automatically determine its site name.|
|passwordChangeUrl|String|Gets or sets the URL that the user will be sent to when they initiate a password change.|
|modeCredentialUsed|String|Select how other processes use the Kerberos Extension credential.|
|usernameLabelCustom|String|This label replaces the user name shown in the Kerberos extension. You can enter a name to match the name of your company or organization. Available for devices running macOS versions 11 and later.|
|userSetupDelayed|Boolean|When set to True, the user isn’t prompted to set up the Kerberos extension until the extension is enabled by the admin, or a Kerberos challenge is received. Available for devices running macOS versions 11 and later.|
|signInHelpText|String|Text displayed to the user at the Kerberos sign in window. Available for devices running iOS and iPadOS versions 14 and later.|
|kerberosAppsInBundleIdACLIncluded|Boolean|When set to True, the Kerberos extension allows any apps entered with the app bundle ID, managed apps, and standard Kerberos utilities, such as TicketViewer and klist, to access and use the credential. Available for devices running macOS versions 12 and later.|
|managedAppsInBundleIdACLIncluded|Boolean|When set to True, the Kerberos extension allows managed apps, and any apps entered with the app bundle ID to access the credential. When set to False, the Kerberos extension allows all apps to access the credential. Available for devices running iOS and iPadOS versions 14 and later.|
|credentialsCacheMonitored|Boolean|When set to True, the credential is requested on the next matching Kerberos challenge or network state change. When the credential is expired or missing, a new credential is created. Available for devices running macOS versions 12 and later.|
|preferredKDCs|String collection|Add creates an ordered list of preferred Key Distribution Centers (KDCs) to use for Kerberos traffic. This list is used when the servers are not discoverable using DNS. When the servers are discoverable, the list is used for both connectivity checks, and used first for Kerberos traffic. If the servers don’t respond, then the device uses DNS discovery. Delete removes an existing list, and devices use DNS discovery. Available for devices running macOS versions 12 and later.|
|tlsForLDAPRequired|Boolean|When set to True, LDAP connections are required to use Transport Layer Security (TLS). Available for devices running macOS versions 11 and later.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSKerberosSingleSignOnExtension"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSKerberosSingleSignOnExtension",
  "realm": "String",
  "domains": [
    "String"
  ],
  "blockAutomaticLogin": true,
  "cacheName": "String",
  "credentialBundleIdAccessControlList": [
    "String"
  ],
  "domainRealms": [
    "String"
  ],
  "isDefaultRealm": true,
  "passwordBlockModification": true,
  "passwordExpirationDays": 1024,
  "passwordExpirationNotificationDays": 1024,
  "userPrincipalName": "String",
  "passwordRequireActiveDirectoryComplexity": true,
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinimumAgeDays": 1024,
  "passwordRequirementsDescription": "String",
  "requireUserPresence": true,
  "activeDirectorySiteCode": "String",
  "passwordEnableLocalSync": true,
  "blockActiveDirectorySiteAutoDiscovery": true,
  "passwordChangeUrl": "String",
  "modeCredentialUsed": "String",
  "usernameLabelCustom": "String",
  "userSetupDelayed": true,
  "signInHelpText": "String",
  "kerberosAppsInBundleIdACLIncluded": true,
  "managedAppsInBundleIdACLIncluded": true,
  "credentialsCacheMonitored": true,
  "preferredKDCs": [
    "String"
  ],
  "tlsForLDAPRequired": true
}
```
