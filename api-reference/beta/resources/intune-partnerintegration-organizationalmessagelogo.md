---
title: "organizationalMessageLogo resource type"
description: "Contains the logo's binary content or a url to the logo's downloadable location. Either both logo and contentType contain valid values or logoCdnUrl contains a valid url"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageLogo resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the logo's binary content or a url to the logo's downloadable location. Either both logo and contentType contain valid values or logoCdnUrl contains a valid url

## Properties
|Property|Type|Description|
|:---|:---|:---|
|logo|Binary|The binary contents of the logo. This is null when logoCdnUrl is used to send the logo|
|contentType|[organizationalMessageLogoType](../resources/intune-partnerintegration-organizationalmessagelogotype.md)|The content type of the logo that is contained in the logo array. This is null when logoCdnUrl is used to send the logo. Possible values are: `png`, `unknownFutureValue`.|
|logoCdnUrl|String|The url at which the logo resides. This is null when logo and contentType are used to send the logo|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageLogo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageLogo",
  "logo": "binary",
  "contentType": "String",
  "logoCdnUrl": "String"
}
```






