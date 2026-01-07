---
title: "eapFastConfiguration enum type"
description: "Available settings for EAP-FAST Configuration."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# eapFastConfiguration enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Available settings for EAP-FAST Configuration.

## Members
|Member|Value|Description|
|:---|:---|:---|
|noProtectedAccessCredential|0|Use EAP-FAST without Protected Access Credential (PAC).|
|useProtectedAccessCredential|1|Use Protected Access Credential (PAC).|
|useProtectedAccessCredentialAndProvision|2|Use Protected Access Credential (PAC) and Provision PAC.|
|useProtectedAccessCredentialAndProvisionAnonymously|3|Use Protected Access Credential (PAC), Provision PAC, and do so anonymously.|