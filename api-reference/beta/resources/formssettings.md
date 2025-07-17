---
title: "formsSettings resource type"
description: "Company-wide settings for Microsoft Forms"
author: "zadinsmo"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# formsSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Company-wide settings for Microsoft Forms. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isBingImageSearchEnabled|Boolean|Controls whether users can add images from Bing to forms.|
|isExternalSendFormEnabled|Boolean|Controls whether users can send a link to a form to an external user.|
|isExternalShareCollaborationEnabled|Boolean|Controls whether users can collaborate on a form layout and structure with an external user.|
|isExternalShareResultEnabled|Boolean|Controls whether users can share form results with external users.|
|isExternalShareTemplateEnabled|Boolean|Controls whether users can share form templates with external users.|
|isInOrgFormsPhishingScanEnabled|Boolean|Controls whether phishing protection is run on forms created by users, blocking the creation of forms if common phishing questions are detected.|
|isRecordIdentityByDefaultEnabled|Boolean|Controls whether the names of users who fill out forms are recorded.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.formsSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.formsSettings",
  "isExternalSendFormEnabled": "Boolean",
  "isExternalShareCollaborationEnabled": "Boolean",
  "isExternalShareResultEnabled": "Boolean",
  "isExternalShareTemplateEnabled": "Boolean",
  "isRecordIdentityByDefaultEnabled": "Boolean",
  "isBingImageSearchEnabled": "Boolean",
  "isInOrgFormsPhishingScanEnabled": "Boolean"
}
```

