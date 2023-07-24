---
title: "customerVoiceSettings resource type"
description: "Company-wide settings for Microsoft Dynamics 365 Customer Voice"
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# customerVoiceSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Company-wide settings for Microsoft Dynamics 365 Customer Voice.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isInOrgFormsPhishingScanEnabled|Boolean|Controls whether phishing protection is run on forms created by users, blocking the creation of forms if common phishing questions are detected.|
|isRecordIdentityByDefaultEnabled|Boolean|Controls whether the names of users who fill out forms are recorded.|
|isRestrictedSurveyAccessEnabled|Boolean|Controls whether only users inside your organization can submit a response.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customerVoiceSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customerVoiceSettings",
  "isRestrictedSurveyAccessEnabled": "Boolean",
  "isRecordIdentityByDefaultEnabled": "Boolean",
  "isInOrgFormsPhishingScanEnabled": "Boolean"
}
```

