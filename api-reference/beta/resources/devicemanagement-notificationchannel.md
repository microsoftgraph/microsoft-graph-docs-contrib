---
title: "notificationChannel resource type"
description: "Include information about an alert rule's notification channels selected by user."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# notificationChannel resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Include information about an alert rule's notification channels selected by user.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|notificationChannelType|[microsoft.graph.deviceManagement.notificationChannelType](#notificationchanneltype-values)|Type of notification channel.The possible values are: `portal`, `email`, `phoneCall`, `sms`, `unknownFutureValue`.|
|receivers|String collection|Contact information of notification receivers, like email addresses. For portal notification, receivers can be left blank. For email notification, receivers consist of email addresses like "foo@bar.com".|
|notificationReceivers|[microsoft.graph.deviceManagement.notificationReceiver](../resources/devicemanagement-notificationreceiver.md) collection|Information of notification receivers, like locale and contact information. For example, locale could be "en-us", and contact information could be an email address like "foo@bar.com".|

### notificationChannelType values

|Member|Description|
|:---|:---|
|portal|Indicates that the notification message was published via Endpoint Manager Admin Portal.|
|email|Indicates that the notification message was published via email.|
|phoneCall|Indicates that the notification message was published via phone call.|
|sms|Indicates that the notification message was published via SMS.|
|unknownFutureValue|Unknown future status (reserved, not used right now).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagement.notificationChannel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.notificationChannel",
  "notificationChannelType": "String",
  "receivers": [
    "String"
  ],
  "notificationReceivers": [
    {
        "@odata.type": "#microsoft.graph.deviceManagement.notificationReceiver"
    }
  ]
}
```
