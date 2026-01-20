---
title: "managedGooglePlayEnterpriseType enum type"
description: "Bind Type of the tenant with the Google EMM API"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedGooglePlayEnterpriseType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Bind Type of the tenant with the Google EMM API

## Members
|Member|Value|Description|
|:---|:---|:---|
|enterpriseTypeUnspecified|0|The enterprise type is not determined or is unknown. This value is not used.|
|managedGoogleDomain|1|The enterprise belongs to a managed Google domain.|
|managedGooglePlayAccountsEnterprise|2|The enterprise is a managed Google Play Accounts enterprise.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|