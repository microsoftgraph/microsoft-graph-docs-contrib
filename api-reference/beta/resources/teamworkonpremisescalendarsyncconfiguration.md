---
title: "teamworkOnPremisesCalendarSyncConfiguration resource type"
description: "Represents the details about the account used to sync calendars in the Microsoft Teams client of a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkOnPremisesCalendarSyncConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the account used to sync calendars in the Microsoft Teams client of a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domain|String|The fully qualified domain name (FQDN) of the Skype for Business Server. Use the Exchange domain if the Skype for Business SIP domain is different from the Exchange domain of the user.|
|domainUserName|String|The domain and username of the console device, for example, `Seattle\RanierConf`.|
|smtpAddress|String|The Simple Mail Transfer Protocol (SMTP) address of the user account. This is only required if a different user principal name (UPN) is used to sign in to Exchange other than Microsoft Teams and Skype for Business. This is a common scenario in a hybrid environment where an on-premises Exchange server is used.|


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

