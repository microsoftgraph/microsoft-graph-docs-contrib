---
title: "teamworkOnPremisesCalendarSyncConfiguration resource type"
description: "Details of the account used to sync calendar."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkOnPremisesCalendarSyncConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Domain details of the account used to sync to calendar.
These are used when a different account is used to sync calendar.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domain|String|Under "Domain," set the FQDN for the Skype for Business Server. If the Skype for Business SIP domain is different from the Exchange domain of the user, enter the Exchange domain in this field.|
|domainUserName|String|The domain and user name of the console device, for example Seattle\RanierConf.|
|smtpAddress|String|This is only used if a different UPN is used to sign in with exchange other than Teams or SfB, normally in a Hybrid environment where a OnPrem exchange server is used.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkOnPremisesCalendarSyncConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkOnPremisesCalendarSyncConfiguration",
  "domain": "String",
  "domainUserName": "String",
  "smtpAddress": "String"
}
```

