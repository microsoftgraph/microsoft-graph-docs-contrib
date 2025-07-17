---
title: "notificationReceiver resource type"
description: "Represents the locale and contact information provided by a user in a notification channel."
author: "zhishending"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# notificationReceiver resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the locale and contact information provided by a user in a [notification channel](../resources/devicemanagement-notificationchannel.md).

[!INCLUDE [monitoring-api-support-solicit](../includes/monitoring-api-support-solicit.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contactInformation|String|The contact information about the notification receivers, such as an email address. Currently, only email and portal notifications are supported. For portal notifications, **contactInformation** can be left blank. For email notifications, **contactInformation** consists of an email address such as `serena.davis@contoso.com`.|
|locale|String|Defines the language and format in which the notification will be sent. Supported locale values are: `en-us`, `cs-cz`, `de-de`, `es-es`, `fr-fr`, `hu-hu`, `it-it`, `ja-jp`, `ko-kr`, `nl-nl`, `pl-pl`, `pt-br`, `pt-pt`, `ru-ru`, `sv-se`, `tr-tr`, `zh-cn`, `zh-tw`.|

## Relationships

None.

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagement.notificationReceiver"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.notificationReceiver",
  "contactInformation": "String",
  "locale": "String"
}
```
