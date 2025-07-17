---
title: "clientUserAgent resource type"
description: "The clientUserAgent type"
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# clientUserAgent resource type

Namespace: microsoft.graph.callRecords

Represents a client user agent of an endpoint in a call. Inherits from
the [userAgent](callrecords-useragent.md) type.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applicationVersion|String|Identifies the version of application software used by this endpoint.|
|azureADAppId|String|The unique identifier of the Microsoft Entra application used by this endpoint.|
|communicationServiceId|String|Immutable resource identifier of the Azure Communication Service associated with this endpoint based on [Communication Services APIs](https://azure.microsoft.com/services/communication-services/).|
|headerValue|String|User-agent header value reported by this endpoint.|
|platform|microsoft.graph.callRecords.clientPlatform|Identifies the platform used by this endpoint. Possible values are: `unknown`, `windows`, `macOS`, `iOS`, `android`, `web`, `ipPhone`, `roomSystem`, `surfaceHub`, `holoLens`, `unknownFutureValue`.|
|productFamily|microsoft.graph.callRecords.productFamily|Identifies the family of application software used by this endpoint. Possible values are: `unknown`, `teams`, `skypeForBusiness`, `lync`, `unknownFutureValue`, `azureCommunicationServices`. Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `azureCommunicationServices`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.clientUserAgent",
  "baseType": "microsoft.graph.callRecords.userAgent"
}-->

```json
{
  "applicationVersion": "String",
  "azureADAppId": "String",
  "communicationServiceId": "String",
  "headerValue": "String",
  "platform": "String",
  "productFamily": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "clientUserAgent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
