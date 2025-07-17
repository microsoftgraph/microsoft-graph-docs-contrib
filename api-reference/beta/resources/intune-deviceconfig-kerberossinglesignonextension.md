---
title: "kerberosSingleSignOnExtension resource type"
description: "Represents a Kerberos-type Single Sign-On extension profile."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# kerberosSingleSignOnExtension resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a Kerberos-type Single Sign-On extension profile.


Inherits from [singleSignOnExtension](../resources/intune-deviceconfig-singlesignonextension.md)

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

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.kerberosSingleSignOnExtension"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.kerberosSingleSignOnExtension",
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
  "passwordChangeUrl": "String"
}
```