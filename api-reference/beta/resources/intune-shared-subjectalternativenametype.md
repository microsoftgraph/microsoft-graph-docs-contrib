---
title: "subjectAlternativeNameType enum type"
description: "Subject Alternative Name Options."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# subjectAlternativeNameType enum type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Subject Alternative Name Options.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No subject alternative name.|
|emailAddress|1|Email address.|
|userPrincipalName|2|User Principal Name (UPN).|
|customAzureADAttribute|4|Custom Azure AD Attribute.|
|domainNameService|8|Domain Name Service (DNS).|
|universalResourceIdentifier|16|Universal Resource Identifier (URI).|
