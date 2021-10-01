---
title: "Update serviceUpdateMessage"
description: "Update the properties of a serviceUpdateMessage object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update serviceUpdateMessage
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [serviceUpdateMessage](../resources/serviceupdatemessage.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/serviceAnnouncement/messages/{serviceUpdateMessageId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [serviceUpdateMessage](../resources/serviceupdatemessage.md) object.

The following table shows the properties that are required when you update the [serviceUpdateMessage](../resources/serviceupdatemessage.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|details|[keyValuePair](../resources/keyvaluepair.md) collection|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|endDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|title|String|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|actionRequiredByDateTime|DateTimeOffset|**TODO: Add Description**|
|body|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|category|serviceUpdateCategory|**TODO: Add Description**. The possible values are: `preventOrFixIssue`, `planForChange`, `stayInformed`, `unknownFutureValue`.|
|expiryDateTime|DateTimeOffset|**TODO: Add Description**|
|isMajorChange|Boolean|**TODO: Add Description**|
|services|String collection|**TODO: Add Description**|
|severity|serviceUpdateSeverity|**TODO: Add Description**. The possible values are: `normal`, `high`, `critical`, `unknownFutureValue`.|
|tags|String collection|**TODO: Add Description**|
|viewPoint|[serviceUpdateMessageViewpoint](../resources/serviceupdatemessageviewpoint.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [serviceUpdateMessage](../resources/serviceupdatemessage.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_serviceupdatemessage"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/serviceAnnouncement/messages/{serviceUpdateMessageId}
Content-Type: application/json
Content-length: 660

{
  "@odata.type": "#microsoft.graph.serviceUpdateMessage",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "endDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "title": "String",
  "actionRequiredByDateTime": "String (timestamp)",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "category": "String",
  "expiryDateTime": "String (timestamp)",
  "isMajorChange": "Boolean",
  "services": [
    "String"
  ],
  "severity": "String",
  "tags": [
    "String"
  ],
  "viewPoint": {
    "@odata.type": "microsoft.graph.serviceUpdateMessageViewpoint"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.serviceUpdateMessage",
  "id": "7e863d93-3d93-7e86-933d-867e933d867e",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "endDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "title": "String",
  "actionRequiredByDateTime": "String (timestamp)",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "category": "String",
  "expiryDateTime": "String (timestamp)",
  "isMajorChange": "Boolean",
  "services": [
    "String"
  ],
  "severity": "String",
  "tags": [
    "String"
  ],
  "viewPoint": {
    "@odata.type": "microsoft.graph.serviceUpdateMessageViewpoint"
  }
}
```

