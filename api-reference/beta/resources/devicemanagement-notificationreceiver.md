---
title: "notificationReceiver resource type"
description: "Include locale and contact information provided by user."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# notificationReceiver resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Include locale and contact information provided by user.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|locale|String| In what language and format the notification should be sent. Supported locale values are: "en-us", "cs-cz", "de-de", "es-es", "fr-fr", "hu-hu", "it-it", "ja-jp", "ko-kr", "nl-nl", "pl-pl", "pt-br", "pt-pt", "ru-ru", "sv-se", "tr-tr", "zh-cn", "zh-tw"|
|contactInformation|String| Contact information of a notification receiver, like an email address. Currently we only support email and portal notifications. For portal notification, contact information can be left blank. For email notification, contact information is email address like foo@bar.com|

## Relationships

None.

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagement.notificationReceiver"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.notificationReceiver",
  "locale": "String",
  "contactInformation": "String",
}
```
