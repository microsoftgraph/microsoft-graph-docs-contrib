---
title: "secureAssessmentAccountType enum type"
description: "Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# secureAssessmentAccountType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount.

## Members
|Member|Value|Description|
|:---|:---|:---|
|azureADAccount|0|Indicates an Azure AD account in format of AzureAD\username@tenant.com.|
|domainAccount|1|Indicates a domain account in format of domain\user or user@domain.com.|
|localAccount|2|Indicates a local account in format of username.|
|localGuestAccount|3|Indicates a local guest account in format of test name.|