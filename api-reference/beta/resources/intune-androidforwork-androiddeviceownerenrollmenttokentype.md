---
title: "androidDeviceOwnerEnrollmentTokenType enum type"
description: "The enrollment token type for an enrollment profile."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerEnrollmentTokenType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The enrollment token type for an enrollment profile.

## Members
|Member|Value|Description|
|:---|:---|:---|
|default|0|Default token type.|
|corporateOwnedDedicatedDeviceWithAzureADSharedMode|1|Token type for Azure AD shared dedicated device enrollment. It applies to CorporateOwnedDedicatedDevice enrollment mode only.|
|deviceStaging|2|Token type for Android Device Staging enrollment type. It applies to CorporateOwnedFullyManaged and CorporateOwnedWorkProfile only.|
