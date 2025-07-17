---
title: "securityVendorInformation resource type"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications isn't supported."
ms.localizationpriority: medium
author: "preetikr"
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# securityVendorInformation resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=Windows Defender ATP; subProvider=AppLocker).

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|provider |String|Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.|
|providerVersion|String|Version of the provider or subprovider, if it exists, that generated the alert. **Required**|
|subProvider|String|Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.|
|vendor |String|Name of the alert vendor (for example, Microsoft, Dell, FireEye). **Required**|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.securityVendorInformation"
}-->

```json
{
  "provider": "String",
  "providerVersion": "String",
  "subProvider": "String",
  "vendor": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "securityVendorInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


